using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class sellerUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        String savePath = Server.MapPath("~/images/product/");

        if (picture.HasFile)
        {
            String fileName = picture.FileName;  //-- User上傳的完整檔名（不包含 Client端的路徑！）
            //String savePath1 = "~/images/product/";
            String savePath1 = "/images/product/";
            //String savedir = "\\images\\baby\\";
            //String appPath = Request.PhysicalApplicationPath;
            //savePath = appPath + savedir;
            String saveResult = savePath + fileName;
            String saveResult1 = savePath1 + fileName;
            picture.SaveAs(saveResult);
            String sql = "", str = "";
            String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
            SqlConnection conn = new SqlConnection(sqldb);
            conn.Open();

            //sql = "select * from students ";
            //sql = "select * from Member";
            sql = "insert into Product(account, pName, picture, category, price, stock, Introduction, createTime,justFor) values ('" + Session["MID"] + "', '" + name.Text.Trim() + "', '" + saveResult1 + "', '" + type.Text.Trim() + "', '" + price.Text.Trim() + "', '" + stock.Text.Trim() + "', '" + Introduction.Text.Trim() + "',getdate(),'"+only.Text.Trim()+"')";
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
}
