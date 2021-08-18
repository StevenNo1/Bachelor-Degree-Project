using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using WebSite1;
using System.Data.SqlClient;

public partial class Account_Login : Page
{
        protected void Page_Load(object sender, EventArgs e)
        {
            /*RegisterHyperLink.NavigateUrl = "Register";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }*/
        }

        protected void LogIn(object sender, EventArgs e)
        {
        /*if (IsValid)
        {
            // Validate the user password
            var manager = new UserManager();
            ApplicationUser user = manager.Find(UserName.Text, Password.Text);
            if (user != null)
            {
                IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                FailureText.Text = "Invalid username or password.";
                ErrorMessage.Visible = true;
            }
        }*/

        String sql = "", str = "";
        String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";

        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();
        sql = "select * from  Member where account = '" + UserName.Text.Trim() + "' and password = '" + Password.Text.Trim() + "'  ";



        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            Session["LOGIN"] = "LOGIN";
            Session["MID"] = reader["account"];
            Session["PASSWORD"] = reader["password"];
            Session["NAME"] = reader["name"];
            Session["EMAIL"] = reader["email"];
            Session["PRIORITY"] = reader["mpri"];
            reader.Close();
            sql = "select max(cNo)+1 from Cart_Header";
            cmd.CommandText = sql;
            reader = cmd.ExecuteReader();
            reader.Read();
            Session["CNO"] = reader[0];
            reader.Close();
            sql = "insert into Cart_Header values('" + Session["CNO"] + "','" + Session["MID"] + "',getdate())";
            cmd.CommandText = sql;
            reader = cmd.ExecuteReader();
            //要先關閉reader
            reader.Close();
            //在商品界面加入東西
            /*str = "insert into Product_Header(account, productTime) values('" + Session["MID"] + "',getdate())";
            cmd.CommandText = str;
            reader = cmd.ExecuteReader();
            reader.Close();*/
            //lbl_Message.Text = "嗨!" + Session["NAME"] + "你好,請慢用...";
            if (Convert.ToString(Session["PRIORITY"]) == "manager")
            {
                Response.Redirect("~/Manager/Webmanager.aspx");
            }
            else
            {
                Response.Redirect("~/index.aspx");
            }
            

            //Response.Redirect("~/index.aspx");
        }

        else
        {
            //lbl_Message.Text = "帳號或密碼錯誤喔";
            Response.Write("<Script language='Javascript'>");
            Response.Write("alert('帳號或密碼錯誤喔!')");
            Response.Write("</" + "Script>");
        }

        reader.Close();
        cmd.Dispose();
        conn.Close();
    }
}