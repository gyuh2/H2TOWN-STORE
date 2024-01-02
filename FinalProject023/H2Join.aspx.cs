using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;  //추가
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace FinalProject023
{
    public partial class H2Join : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {   // CANCEL 버튼
            Response.Redirect("~/Home.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {   // JOIN 버튼
            if (IsFanExists())
                Label2.Text = "이미 사용중인 아이디입니다.<br />다른 아이디를 사용해 주세요.";
            else
            {
                if (AgeValidation() < 14)
                {
                    string str = "<script> alert('14세 미만이므로 회원가입 불가능합니다.');";
                    str += "location.href = '/H2Join.aspx'; </script> ";
                    Response.Write(str);
                }
                else
                    AddFan();
            }
        }

        private int AgeValidation()
        {
            int tYear = Convert.ToInt32(DateTime.Now.Year);
            int bYear = Convert.ToInt32(TextBox5.Text);
            int age = tYear - bYear + 1;
            return age;
        }

        private bool IsFanExists()
        {
            bool result = true;
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = @"Select * from Fan_Info Where fId=@fId ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@fId", TextBox2.Text);
            //실행
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
                result = true;
            else 
                result = false;
            rd.Close();
            con.Close();
            return result;
        }

        private void AddFan()
        {
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = @"Insert into Fan_Info Values (@fName,@fId,@fPassword,@fBirth_Y,@fEmail,@fPhone)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@fName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@fId", TextBox2.Text);
            cmd.Parameters.AddWithValue("@fPassword", TextBox3.Text);
            cmd.Parameters.AddWithValue("@fBirth_Y", TextBox5.Text);
            cmd.Parameters.AddWithValue("@fEmail", TextBox6.Text);
            cmd.Parameters.AddWithValue("@fPhone", TextBox7.Text);
            //실행
            con.Open();
            int a = cmd.ExecuteNonQuery(); 
            con.Close();

            if (a > 0)
            { 
                FormsAuthentication.SetAuthCookie(TextBox2.Text, false);
                string str = "<script> alert('회원가입에 성공하셨습니다!');";
                str += "location.href = '/Home.aspx'; </script> ";
                Response.Write(str); 
            }
            else
                Label2.Text = "회원가입에 실패했습니다.";
        }

        protected void Button11_Click(object sender, EventArgs e)
        {   // 중복확인 버튼
            string str = "<script> window.open('ConfirmID.aspx?id=" + TextBox2.Text
                            + "', 'mywindow', 'top=200, left=200, width=400, height=200'); </script>";
            Response.Write(str);
        }

    }
}