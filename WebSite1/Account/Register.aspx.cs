using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using WebSite1;
using System.Data.SqlClient;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        //var manager = new UserManager();
        //var user = new ApplicationUser() { UserName = UserName.Text };
        //IdentityResult result = manager.Create(user, Password.Text);
        //if (result.Succeeded)
        //{
            //IdentityHelper.SignIn(manager, user, isPersistent: false);
            //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);

            String sql = "", str = "";
            String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
            SqlConnection conn = new SqlConnection(sqldb);
            conn.Open();

            //sql = "select * from students ";
            //sql = "select * from Member";
            sql = "insert into Member(account, password, mpri, name, icNumber, birthday, phone, email, address)  values ('" + UserName.Text.Trim() + "','" + Password.Text.Trim() + "','guest','" + name.Text.Trim() + "','" + icNumber.Text.Trim() + "','" + birthday.Text.Trim() + "','" + phone.Text.Trim() + "','" + email.Text.Trim() + "','" + address.Text.Trim() + "')";
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
        //}
        //else
        //{
            //ErrorMessage.Text = result.Errors.FirstOrDefault();
        //}
    }
}