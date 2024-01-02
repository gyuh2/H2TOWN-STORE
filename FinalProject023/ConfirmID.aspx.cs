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
    public partial class ConfirmID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {  // 처음 로드될 때
                TextBox1.Text = Request.QueryString["id"];
                Button2.Visible = false; 
                Page.Validate(); 
                CheckfIdExists(); 
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        { // 중복확인 버튼
            CheckfIdExists();
        }

        private void CheckfIdExists()
        {
            if (IsValid)
            {
                //연결
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                //명령
                string sql = "Select * from Fan_Info where fId = @fId";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@fId", TextBox1.Text);
                //실행
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                { 
                    Label1.Text = "이미 사용중인 아이디입니다";
                    Button2.Visible = false;
                }
                else
                {
                    Label1.Text = "사용 가능한 아이디입니다.";
                    Button2.Visible = true;
                }
                rd.Close();
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        { // 사용 버튼
            string str = "<script> opener.document.getElementById('ContentPlaceHolder1_TextBox2').value ='"
            + TextBox1.Text + "'; " + " self.close( ); </script>";
            Response.Write(str);
        }
    }
}