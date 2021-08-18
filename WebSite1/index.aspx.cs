using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*String sql = "", str = "";
        String sqldb = @"Data Source=STEVEN-PC\SQLEXPRESS;Initial Catalog=1;integrated Security=true";

        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();
        sql = "select * from  Member";


        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            //Session["MID"] = reader["account"];
            Session["MID"] = "";
            Session["PASSWORD"] = "";
            Response.Redirect("~/Account/Login.aspx");
        }
        else
        {
        }
        reader.Close();
        cmd.Dispose();
        conn.Close();*/
    }
}