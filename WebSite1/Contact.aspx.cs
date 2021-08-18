using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Contact : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MID"] == null)
        {
            Response.Write("<script>alert('請先登入！');window.location.href = '/Account/Login.aspx';</script>");
        }
        if ((string)Session["PRIORITY"] == "manager")
        {
            Response.Write("<script>alert('你無法使用管理員帳號進客服中心！');window.location.href = '/Manager/Webmanager.aspx';</script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (main.Text == "" ||  detail.Text =="" || DropDownList1.SelectedIndex == 0)
        {
            Response.Write("<Script language='Javascript'>");
            Response.Write("alert('請確認*號欄位是否都已填寫資料')");
            Response.Write("</" + "Script>");
        }
        else
        {
            String savePath = Server.MapPath("~/images/contact/");

            if (FileUpload1.HasFile)
            {
                String fileName = FileUpload1.FileName;  //-- User上傳的完整檔名（不包含 Client端的路徑！）
                String savePath1 = "~/images/contact/";
                //String savedir = "\\images\\baby\\";
                //String appPath = Request.PhysicalApplicationPath;
                //savePath = appPath + savedir;
                String saveResult = savePath + fileName;
                String saveResult1 = savePath1 + fileName;
                FileUpload1.SaveAs(saveResult);
                String sql = "", str = "";
                String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
                SqlConnection conn = new SqlConnection(sqldb);
                conn.Open();

                //sql = "select * from students ";
                //sql = "select * from Member";
                sql = "insert into Contact(account, main, questionType, detail, picture, Time)  values ('" + Session["MID"] + "','" + main.Text.Trim() + "','" + DropDownList1.Text.Trim() + "','" + detail.Text.Trim() + "','" + saveResult1 + "',getdate())";
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
                Response.Write("alert('您的訊息已經成功送出，客服人員將盡快與你連繫')");
                Response.Write("</" + "Script>");
                main.Text = "";
                detail.Text = "";
                DropDownList1.SelectedIndex = 0;

            }
        }
    }
}