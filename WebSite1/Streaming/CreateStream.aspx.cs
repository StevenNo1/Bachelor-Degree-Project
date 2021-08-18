using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MID"] == null)
        {
            Response.Write("<script>alert('請先登入！');window.location.href = '/Account/Login.aspx';</script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String sql = "", str = "";
        String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();

        //sql = "select * from students ";
        //sql = "select * from Member";
        sql = "insert into Streaming(account, name, url,createTime)  values ('" + Session["MID"] + "','" + name.Text.Trim() +  "','" + url.Text.Trim() +"', getdate())";
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

        Response.Write("<Script language='Javascript'>");
        Response.Write("alert('新增成功')");
        Response.Write("</" + "Script>");
    }
}