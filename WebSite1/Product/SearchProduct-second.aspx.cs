using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SelectThings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ListView1.DataSourceID = "sqlDataSource1";
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (Session["MID"] == null)
        {
            Response.Write("<script>alert('請先登入！');window.location.href = '/Account/Login.aspx';</script>");
        }
        else
        {
            if (e.CommandName == "AddCart")
            {

                String sql = "", pid = "";
                String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
                pid = e.CommandArgument.ToString();
                SqlConnection conn = new SqlConnection(sqldb);
                conn.Open();
                //sql = "select* from Cart_Detail where pNo='" + pid + "'and cNo=" + Session["CNO"];
                sql = "select* from Cart_Detail where pNo='" + pid + "' and account = '" + Session["MID"] + "' and finish is null";
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read()) //表示購物車內有此商品
                {
                    lbl_Message.Text = "此商品已存在購物車內";
                }
                else
                {
                    sql = "Insert into Cart_Detail(cNo, pNo, pName, account, quantity, Cart_Date) values(" + Session["CNO"] + ",'" + pid + "', (select pName from product where pNo = '" + pid + "'), '" + Session["MID"] + "','" + 1 + "',getdate())";
                    cmd.CommandText = sql;
                    reader.Close();
                    reader = cmd.ExecuteReader();
                    lbl_Message.Text = "成功加入商品至購物車內";
                }

                reader.Close();
                conn.Close();
            }
            else
            {
            }
        }
    }

    protected void btn_AddCart_Click(object sender, EventArgs e)
    {

    }

    
}