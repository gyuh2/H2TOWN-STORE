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
    public partial class H2Artist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {   // Search 버튼
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            String sql = "Select * from Artist Where aName Like '%' + @aName + '%' ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@aName", TextBox1.Text);
            //실행 및 화면표시
            con.Open();
            Label2.Text = ""; 
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Label2.Text += string.Format("<b>이름 : {0}</b><br />고유번호 : {1}<br />국적 : {2}<br />소속 그룹 : {3}<br />데뷔일 : {4} <br /><br />", rd[1], rd[0], rd[2], rd[3], rd[4]);
            }
            if (Label2.Text == "")
            {
                Label2.Text = "<b>H2TOWN 소속 아티스트가 아닙니다.<b>";
            }
            rd.Close();
            con.Close();
        }
    }
}