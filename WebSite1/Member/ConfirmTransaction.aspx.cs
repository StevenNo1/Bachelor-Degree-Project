using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ConfirmTransaction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql1 = "SELECT ch.account, cd.finish, cd.cNo, cd.pNo, cd.pName, cd.quantity, cd.Cart_Date FROM Cart_Detail cd join Cart_Header ch on cd.cNo=ch.cNo where ch.account= '" + Session["MID"] + "' and cd.finish is null";
        SqlDataSource1.SelectCommand = sql1;
    }

    protected void confirm_Click(object sender, EventArgs e)
    {
        //String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        //String sql = "", str = "", maxtid = "";

        //SqlConnection conn = new SqlConnection(sqldb);
        //conn.Open();
        //sql = "select max(tNo) from Transactions_Detail";
        ////sql = "update Transactions_Detail (bankId, cardNumber, address,transTime) values ('" + bankId.Text.Trim() + "','" + cardNumber.Text.Trim() + "', '" + address.Text.Trim() + "',getdate())";
        //SqlCommand cmd = new SqlCommand(sql, conn);
        //SqlDataReader reader = cmd.ExecuteReader();
        //reader.Read();
        //maxtid = reader[0].ToString();
        //reader.Close();
        ////sql = "update Transactions_Detail set bankId = '"bankId.Text.Trim() + "'";
        ////sql = "update Transactions_Detail (bankId, cardNumber, address,transTime) values ('" + bankId.Text.Trim() + "','" + cardNumber.Text.Trim() + "', '" + address.Text.Trim() + "',getdate()) where tNo = " + maxtid + "";
        ////sql = "update Transactions_Detail set bankId = ('" + bankId.Text.Trim() + "' where tNo = " + maxtid + "), cardNumber = ('" + cardNumber.Text.Trim() + "' where tNo = " + maxtid + "), address = ('" + address.Text.Trim() + "' where tNo = " + maxtid + ")";
        ////sql = "update Transactions_Detail set bankId = ('" + bankId.Text.Trim() + "' where tNo = " + maxtid + ")";
        //sql = "update Transactions_Detail set bankId = '" + bankId.Text.Trim() + "', cardNumber = '" + cardNumber.Text.Trim() + "', address = ('" + address.Text.Trim() + "') where tNo = " + maxtid + "";
        //cmd.CommandText = sql;
        //reader = cmd.ExecuteReader();
        //reader.Close();

        //conn.Close();

        String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        String sql = "", maxtid = "";

        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();

        //挑出最大號的TID
        sql = "select max(tNo)+1 from Transactions_Detail";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        maxtid = reader[0].ToString();
        reader.Close();

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            Label MycNo = (Label)GridView1.Rows[i].FindControl("Label1");
            Label MypNo = (Label)GridView1.Rows[i].FindControl("Label2");
            Label MyQty = (Label)GridView1.Rows[i].FindControl("Label3");
            //強制轉換成為數值
            int cartNo = Convert.ToInt32(MycNo.Text);
            int productNo = Convert.ToInt32(MypNo.Text);
            int myquantity = Convert.ToInt32(MyQty.Text);

            


            //str = "select pNo from Cart_Detail where cNo = '" + Session["CNO"] + "'";
            //先新增一筆空的交易主檔
            //sql = "insert into Transactions_Detail(tNo, buyMid, pNo, money, amount, payTime) values ('" + maxtid + "', '" + Session["MID"] + "', '"+ str +"', 0, 0, getdate())";
            //sql = "insert into Transactions_Detail(tNo, buyMid, pNo, money, amount, transTime) values ('" + maxtid + "', '" + Session["MID"] + "', (select pNo from Cart_Detail where cNo = '" + Session["CNO"] + "'), 0, 0, getdate())";
            sql = "insert into Transactions_Detail(tNo, buyMid, pNo, pName, money, amount, transTime) values ('" + maxtid + "', '" + Session["MID"] + "','" + MypNo.Text.Trim() + "', (select pName from product where pNo = '" + MypNo.Text.Trim() + "'), 0, 0, getdate())";
            cmd.CommandText = sql;
            reader = cmd.ExecuteReader();
            reader.Close();


            //新增交易明細檔
            //sql = "insert into Tdetail select " + maxtid + ", pid, qty from Cart_Detail where CNO='" + Session["CNO"] + "'";
            //sql = "insert into Transaction_Header select " + maxtid + ", (select pNo from Cart_Detail where cNo = '" + Session["CNO"] + "'), quantity from Cart_Detail where cNo='" + Session["CNO"] + "'";
            //sql = "insert into Transaction_Header values (" + maxtid + ", '" + MypNo.Text.Trim() + "', '" + MyQty.Text.Trim() + "')";
            //cmd.CommandText = sql;
            //reader = cmd.ExecuteReader();
            //reader.Close();

            




            //最後回頭去算交易主檔上的總數量及總金額
            //sql = "update Trans set T_MONEY=(select SUM(QTY * PRICE) from Product, Tdetail where Product.PID=Tdetail.PID and Tdetail.TID=" + maxtid.ToString() + "), T_AMOUNT=(select SUM(QTY) from Tdetail where TID=" + maxtid.ToString() + ") where tid=" + maxtid.ToString();
            //sql = "update Transaction_Header set money = ( SUM((select quantity from Cart_Detail where CNO='" + Session["CNO"] + "') * (select price from Product where Product.pNo = Cart_Header.pNo)), quantity = (select quantity from Cart_Detail where CNO='" + Session["CNO"] + "')";
            //一起算,無法有商品的名稱，要的話需要把這個寫在for迴圈里，但是一起算的主要的要寫在for外面
            //sql = "update Transactions_Detail set money=(select SUM(quantity * price) from Product, Transaction_Header where Product.pNo=Transaction_Header.pNo and Transaction_Header.tNo=" + maxtid.ToString() + "), amount = (select SUM(quantity) from Transaction_Header where tNo=" + maxtid.ToString() + "), sellMid = (select p.account from Product p join Transaction_Header th on p.pNo = th.pNo and th.tNo=" + maxtid.ToString() + ")";
            //sql = "update Transactions_Detail set money=(select SUM(quantity * price) from Product, Transaction_Header where Product.pNo=Transaction_Header.pNo and Transaction_Header.tNo=" + maxtid.ToString() + "), amount = (select SUM(quantity) from Transaction_Header where tNo=" + maxtid.ToString() + ")";
            //分開算
            sql = "update Transactions_Detail set money = (select (" + myquantity + " * price) from Product where Product.pNo = '" + MypNo.Text.Trim() + "'), amount = ('" + MyQty.Text.Trim() + "'), sellMid = (select account from product where pNo = '" + MypNo.Text.Trim() + "') where pNo ='" + MypNo.Text.Trim() + "'";
            cmd.CommandText = sql;
            reader = cmd.ExecuteReader();
            reader.Close();

            //將商品資料表的這個商品的數量進行減少賣出的數量
            //sql = "update Product set stock = (select (stock-quantity) from Product, Transaction_Header where Product.pNo=Transaction_Header.pNo and Transaction_Header.tNo=" + maxtid.ToString() + ") where Transaction_Header.tNo=" + maxtid.ToString() + "";
            //sql = "update Product set stock = (select (stock-quantity) from Product, Transaction_Header where Product.pNo=Transaction_Header.pNo and Transaction_Header.tNo=" + maxtid.ToString() + ") where pNo='" + MypNo.Text.Trim() + "'";
            sql = "update Product set stock = (select (stock - " + myquantity + ") from product where pNo = '" + MypNo.Text.Trim() + "') where pNo='" + MypNo.Text.Trim() + "'";
            cmd.CommandText = sql;
            reader = cmd.ExecuteReader();
            reader.Close();

            //把已經結賬的購物車finish欄位改成y
            sql = "update Cart_Detail set finish = 'y' where cNo ='" + MycNo.Text.Trim() + "'";
            cmd.CommandText = sql;
            reader = cmd.ExecuteReader();
            reader.Close();

            //把statement狀態改成已付款
            sql = "update Transactions_Detail set statement = '買家已付款' where tNo = " + maxtid.ToString() + "";
            cmd.CommandText = sql;
            reader = cmd.ExecuteReader();
            reader.Close();

            //把地址和信用卡信息加入資料表
            sql = "update Transactions_Detail set bankId = '" + bankId.Text.Trim() + "', cardNumber = '" + cardNumber.Text.Trim() + "', address = ('" + address.Text.Trim() + "') where tNo = " + maxtid + "";
            cmd.CommandText = sql;
            reader = cmd.ExecuteReader();
            reader.Close();

            //存入bs評價
            sql = "insert into Evaluation(pName,submitMid,toMid,type)  values ((SELECT Top 1 pName FROM Transactions_Detail where buyMid='" + Session["MID"] + "' ORDER BY transTime DESC),'" + Session["MID"] + "',(SELECT Top 1 sellMid FROM Transactions_Detail where buyMid='" + Session["MID"] + "' ORDER BY transTime DESC),'bs');";
            cmd.CommandText = sql;
            reader = cmd.ExecuteReader();
            reader.Close();

            //存入sb評價
            sql = "insert into Evaluation(pName,submitMid,toMid,type)  values ((SELECT Top 1 pName FROM Transactions_Detail where buyMid='" + Session["MID"] + "' ORDER BY transTime DESC),(SELECT Top 1 sellMid FROM Transactions_Detail where buyMid='" + Session["MID"] + "' ORDER BY transTime DESC),'" + Session["MID"] + "','sb');";
            cmd.CommandText = sql;
            reader = cmd.ExecuteReader();
            reader.Close();



        }
        //將表頭GridView的datasource綁回去
        String sql2 = "SELECT * FROM Transactions_Detail WHERE tNo= " + maxtid.Trim();
        GridView1.Visible = false;
        GridView2.Visible = true;
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        bankId.Visible = false;
        cardNumber.Visible = false;
        address.Visible = false;
        confirm.Visible = false;
        SqlDataSource2.SelectCommand = sql2;

        conn.Close();


        Response.Write("<script>alert('您已經成功付款！');window.location.href = '../index.aspx';</script>");
    }
}