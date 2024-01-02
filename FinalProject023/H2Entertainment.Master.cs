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
    public partial class H2Entertainment : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            { //인증 O
                Label1.Text = Page.User.Identity.Name + " 님";
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
            else
            { //인증 X
                Label1.Text = "";
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        { // HOME 버튼
            Response.Redirect("~/Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        { // 로그인 버튼
            Response.Redirect("~/H2Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        { // 회원가입 버튼
            Response.Redirect("~/H2Join.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        { // 장바구니 버튼
            Response.Redirect("~/FanOnly/H2Cart.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        { // HOME 버튼
            Response.Redirect("~/Home.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        { // 로그아웃 버튼
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령(sql문)
            String sql = "Delete from Cart";
            SqlCommand cmd = new SqlCommand(sql, con);
            //실행
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            FormsAuthentication.SignOut();  //로그아웃
            Response.Redirect(FormsAuthentication.DefaultUrl);  //Home으로 보내기
        }

        protected void Button7_Click(object sender, EventArgs e)
        { // 회원정보 수정 버튼
            Response.Redirect("~/FanOnly/myModify.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        { // 장바구니 버튼
            Response.Redirect("~/FanOnly/H2Cart.aspx");
        }
    }
}