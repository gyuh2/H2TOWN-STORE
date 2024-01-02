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
    public partial class OnlyMD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel3.Visible = true;
                Panel4.Visible = false;
                BindGoods(); 
                SetGoodsInfo(); 
            }
        }

        private void BindGoods()
        {
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            String sql = "Select gID, gName From Goods";
            SqlCommand cmd = new SqlCommand(sql, con);
            //실행 및 화면표시
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            DropDownList1.DataSource = rd;
            DropDownList1.DataTextField = "gName"; 
            DropDownList1.DataValueField = "gID";
            DropDownList1.DataBind(); 
            con.Close();
        }

        private void SetGoodsInfo()
        {
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            String sql = "Select * From Goods Where gID = @gID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@gID", DropDownList1.SelectedValue);
            //실행 및 화면표시
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read()) 
            {
                Label3.Text = rd["gID"].ToString();
                TextBox2.Text = rd["gName"].ToString();
                TextBox3.Text = rd["gCategory"].ToString();
                TextBox4.Text = rd["gPrice"].ToString();
                TextBox5.Text = rd["gPoint"].ToString();
            }
            else
            {
                Label2.Text = "※ 변경할 굿즈를 선택하세요. ※";
            }
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetGoodsInfo();
            Label2.Text = "";
        }

        protected void DropDownList1_DataBound(object sender, EventArgs e)
        {
            DropDownList1.Items.Insert(0, new ListItem("- 선택하세요 -", "-1"));
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            Panel4.Visible = true;
            ClearData();
            Label2.Text = "";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel4.Visible = false;
            ClearData2();
            Label4.Text = "";
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            ClearData();
            BindGoods();
            Label2.Text = "";
        }
        private void ClearData()
        {
            Label3.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
        private void ClearData2()
        {
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }
        protected void Button13_Click(object sender, EventArgs e)
        {
            ClearData2();
            Label4.Text = "";
        }

        protected void Button9_Click(object sender, EventArgs e)
        {   //수정 버튼
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            String sql = @"Update Goods Set gName=@gName, gcategory=@gcategory, gPrice=@gPrice, gPoint=@gPoint
                                Where gID=@gID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@gID", Label3.Text);
            cmd.Parameters.AddWithValue("@gName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@gcategory", TextBox3.Text);
            cmd.Parameters.AddWithValue("@gPrice", TextBox4.Text);
            cmd.Parameters.AddWithValue("@gPoint", TextBox5.Text);
            //실행 및 화면표시
            con.Open();
            int num = cmd.ExecuteNonQuery();
            con.Close();

            if (num > 0)
                Label2.Text = "굿즈번호 " + Label3.Text + "의 정보가 수정되었습니다.";
            else
                Label2.Text = "굿즈 수정이 불가합니다.";

        }

        protected void Button10_Click(object sender, EventArgs e)
        {   //삭제 버튼
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            String sql = "Delete from Goods Where gID=@gID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@gID", DropDownList1.SelectedValue); 
            //실행 및 화면표시
            con.Open();
            int num = cmd.ExecuteNonQuery(); 
            con.Close();

            if (num > 0)
                Label2.Text = "굿즈번호 " + DropDownList1.SelectedValue + "의 정보가 삭제되었습니다.";
            else
                Label2.Text = "굿즈 삭제가 불가합니다.";

            BindGoods();
            ClearData();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {   //등록 버튼
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            String sql = "Insert into Goods Values (@gID, @gName, @gcategory, @gPrice, @gPoint)"; 
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@gID", TextBox6.Text);
            cmd.Parameters.AddWithValue("@gName", TextBox7.Text);
            cmd.Parameters.AddWithValue("@gcategory", TextBox8.Text);
            cmd.Parameters.AddWithValue("@gPrice", TextBox9.Text);
            cmd.Parameters.AddWithValue("@gPoint", TextBox10.Text);
            //실행 및 화면표시
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Label4.Text = "굿즈번호 " + TextBox6.Text + "의 정보가 입력되었습니다.";
            }
            catch (Exception ex)
            {
                Label4.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
            BindGoods();
        }
    }
}