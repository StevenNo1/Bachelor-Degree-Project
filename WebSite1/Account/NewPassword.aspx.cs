using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_NewPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        String sql = "", str = "";
        String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();

        //sql = "select * from students ";
        //sql = "select * from Member";
        sql = "update member set password = '" + NewPassword.Text.Trim() + "' where account = '" + Session["MID"] + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        str += "<table border=1><tr algin=center>";
        for (int i = 0; i < reader.FieldCount; i++)
            str += "<td>" + reader.GetName(i).ToString() + "</td>";
        str += "</tr>";


        while (reader.Read())
        {
            str += "<tr>";
            for (int i = 0; i < reader.FieldCount; i++)
                str += "<td>" + reader[i].ToString() + "</td>";
            str += "</tr>";
        }

        str += "</table>";

        reader.Close();
        cmd.Dispose();
        conn.Close();

        Response.Write("<script>alert('修改成功！');window.location.href = '../index.aspx';</script>");
    }
}