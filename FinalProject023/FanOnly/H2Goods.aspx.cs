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
    public partial class H2Goods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (IsGoodsExists())  //존재한다면
                Label2.Text = "이미 장바구니에 담긴 상품입니다.<br />동일 상품은 1개만 구매 가능합니다.";
            else                    //존재하지 않는다면
                AddGoods();
        }

        private bool IsGoodsExists()
        {
            bool result = true;
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = @"Select * from Cart Where cID=@gID ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@gID", GridView1.SelectedValue);
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

        private void AddGoods()
        {
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = @"Insert into Cart Select * from Goods Where gID=@gID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@gID", GridView1.SelectedValue);
            //실행
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Label2.Text = "장바구니에 상품이 정상적으로 담겼습니다.";
            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message; 
            }
            finally
            {
                con.Close();
            }

        }
    }
}