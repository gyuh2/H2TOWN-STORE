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
    public partial class H2Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
                Response.Redirect(FormsAuthentication.DefaultUrl);  // Home 페이지로 보내기
        }

        protected void Button1_Click(object sender, EventArgs e)
        {   // LOGIN 버튼
            if (IsAuthenticated(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);      
            } 
            else
            {
                Label1.Text = "<b>아이디</b> 또는 <b>비밀번호</b>가 잘못 입력되었습니다.";
            }
        }

        private bool IsAuthenticated(string fID, string fpassword)
        {
            bool result = false;
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);  
            //명령
            string sql = @"Select * from Fan_Info
                                 Where fID=@fID and fPassword=@fPassword ";
            SqlCommand cmd = new SqlCommand(sql, con); 
            cmd.Parameters.AddWithValue("@fID", fID);
            cmd.Parameters.AddWithValue("@fPassword", fpassword);
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

    }
}