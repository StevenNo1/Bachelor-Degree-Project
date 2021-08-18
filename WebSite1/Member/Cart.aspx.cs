using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string sql = "SELECT * FROM Cart_Detail where cNo = " + Session["CNO"];
        //string sql = "SELECT ch.account, cd.cNo, cd.pNo, cd.quantity, cd.Cart_Date FROM Cart_Detail cd join Cart_Header ch on cd.cNo=ch.cNo where ch.account= 'john'";
        string sql = "SELECT ch.account, cd.finish, cd.cNo, cd.pNo, cd.pName, cd.quantity, cd.Cart_Date FROM Cart_Detail cd join Cart_Header ch on cd.cNo=ch.cNo where ch.account= '" + Session["MID"] + "' and cd.finish is null";
        SqlDataSource1.SelectCommand = sql;
    }

    protected void btn_UpdateCart_Click(object sender, EventArgs e)
    {
        String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        String sql = "";
        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            //使用FindControl方法找到所需要的欄位
            TextBox MyQty = (TextBox)GridView1.Rows[i].FindControl("txt_Qty");
            Label MyPID = (Label)GridView1.Rows[i].FindControl("lbl_PID");
            CheckBox IsDel = (CheckBox)GridView1.Rows[i].FindControl("chk_Del");
            if (MyQty.Text.Trim() == "0" | IsDel.Checked)//執行刪除
            {
                //sql = "Delete Cart_Detail where cNo=" + Session["CNO"] + " and pNo= '" + MyPID.Text.Trim() + "'";
                sql = "Delete Cart_Detail where pNo= '" + MyPID.Text.Trim() + "' and account= '" + Session["MID"] + "'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                cmd.Dispose();
                reader.Close();
            }
            else //一律執行更改數量
            {
                //sql = "update Cart_Detail set quantity=" + MyQty.Text.Trim() + " where cNo=" + Session["CNO"] + " and pNo='" + MyPID.Text.Trim() + "'";
                sql = "update Cart_Detail set quantity=" + MyQty.Text.Trim() + " where account = '" + Session["MID"] + "' and pNo='" + MyPID.Text.Trim() + "'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                cmd.Dispose();
                reader.Close();
            }
        }// end of for
        conn.Close();
        GridView1.DataBind();
    }
}