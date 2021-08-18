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
        if (Session["MID"] == null)
        {
            Response.Write("<script>alert('請先登入！');window.location.href = '/Account/Login.aspx';</script>");
        }
        else
        {
            SessionMID.Text=(string)(Session["MID"]);
        }
        if ((string)Session["PRIORITY"] == "manager")
        {
            Response.Write("<script>alert('你無法使用管理員帳號進會員入口網！');window.location.href = '/Manager/Webmanager.aspx';</script>");
        }

        String sql = "", str = "";
        String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();

        //sql = "select * from students ";
        //sql = "select * from Member";
        sql = "SELECT round(AVG(level),1) FROM Evaluation where toMid = '" + Session["MID"] + "' AND level IS NOT NULL;";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        
        for (int i = 0; i < reader.FieldCount; i++)
            str += reader.GetName(i).ToString();
        


        while (reader.Read())
        {

            for (int i = 0; i < reader.FieldCount; i++)
                str += reader[i].ToString();            
        }

        
        if (str == "" )
        {
            str = "無";
        }

        score.Text = str;

        reader.Close();
        cmd.Dispose();
        conn.Close();
    }
}