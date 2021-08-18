using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String sql = ""; 
        String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();

        //sql = "select * from students ";
        //sql = "select * from Member";
        sql = "UPDATE Streaming SET closeTime = getdate() WHERE account='"+Session["MID"]+"' AND closeTime is NULL;";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        
        reader.Close();
        cmd.Dispose();
        conn.Close();

        Response.Write("<script>alert('您已成功關閉直播！');window.location.href = 'Mystreaming.aspx';</script>");
    }
}