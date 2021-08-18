using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SearchTransactions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        String sql = "", str = "";

        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();
        sql = "Select * from Transactions_Detail where sellMid = '" + Session["MID"] + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
        }
        else
        {
            Response.Write("<script>alert('哎呀!您目前沒有生意上門');window.location.href = '/Member/Member.aspx';</script>"); ;
        }
        reader.Close();
        conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        String sql = "", str = "";

        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();

        for (int i = 0; i < GridView2.Rows.Count; i++)
        {
            Label mytNo = (Label)GridView2.Rows[i].FindControl("Label1");
            DropDownList mystatement = (DropDownList)GridView2.Rows[i].FindControl("DropDownList2");

            sql = "update Transactions_Detail set statement = '" + mystatement.Text.Trim() + "', shippingTime = getdate() where tNo ='" + mytNo.Text.Trim() + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            cmd.CommandText = sql;
            //reader = cmd.ExecuteReader();
            reader.Close();
        }
        conn.Close();
        Response.Redirect("~/Member/SellerSearchTransactions.aspx");
    }
}