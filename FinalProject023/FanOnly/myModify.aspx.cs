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


namespace FinalProject023.FanOnly
{
    public partial class myModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Page.User.Identity.Name;
                //연결
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                //명령
                string sql = "Select * from Fan_Info where fId = @fId";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@fId", id);
                //실행
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    Label3.Text = rd["fName"].ToString(); ;
                    Label4.Text = id;
                    Label5.Text = rd["fBirth_Y"].ToString();
                    TextBox6.Text = rd["fEmail"].ToString();
                    TextBox7.Text = rd["fPhone"].ToString();
                }
                rd.Close();
                con.Close();
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {   // CANCEL 버튼
            Response.Redirect("~/Home.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {   // APPLY 버튼
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령 (id는 변경 불가능)
            string sql = @"update Fan_Info 
                                Set fPassword=@fPassword, fEmail=@fEmail, fPhone=@fPhone 
                                Where fId = @fId";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@fName", Label3.Text);
            cmd.Parameters.AddWithValue("@fId", Page.User.Identity.Name);
            cmd.Parameters.AddWithValue("@fPassword", TextBox3.Text);
            cmd.Parameters.AddWithValue("@fBirth_Y", Label5.Text);
            cmd.Parameters.AddWithValue("@fEmail", TextBox6.Text);
            cmd.Parameters.AddWithValue("@fPhone", TextBox7.Text);
            //실행
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();

            if (a > 0)
            { 
                string str = "<script> alert('회원정보 수정이 완료되었습니다.');";
                str += "location.href = '/Home.aspx'; </script> ";
                Response.Write(str);
            }
            else
                Label2.Text = "회원정보 수정에 실패했습니다.";
        }

    }
}