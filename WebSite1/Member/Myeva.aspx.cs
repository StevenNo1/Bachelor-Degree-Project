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
        String sql = "", str = "";
        String sqldb = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();

        //sql = "select * from students ";
        //sql = "select * from Member";
        sql ="select count(*) from Evaluation where level IS NULL AND type = 'bs' AND submitMid = '"+Session["MID"]+"';";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        
        for (int i = 0; i < reader.FieldCount; i++)
            str +=reader.GetName(i).ToString() ;
        
        while (reader.Read())
        {
            
            for (int i = 0; i < reader.FieldCount; i++)
                str +=reader[i].ToString();
            
        }

        
        bsevacount.Text = str;

        reader.Close();
        cmd.Dispose();
        conn.Close();

        String sqq = "", stt = "";
        String sqldd = @"Data Source=140.131.7.116\SQLEXPRESS;Initial Catalog=1;User ID=sa;Password=1234";
        SqlConnection comm = new SqlConnection(sqldd);
        comm.Open();

        //sql = "select * from students ";
        //sql = "select * from Member";
        sqq = "select count(*) from Evaluation where level IS NULL AND type = 'sb' AND submitMid = '" + Session["MID"] + "';";
        SqlCommand cmdd = new SqlCommand(sqq, comm);
        SqlDataReader rreader = cmdd.ExecuteReader();

        
        for (int i = 0; i < rreader.FieldCount; i++)
            stt += rreader.GetName(i).ToString();
        


        while (rreader.Read())
        {
            
            for (int i = 0; i < rreader.FieldCount; i++)
                stt += rreader[i].ToString();
            
        }

        

        sbevacount.Text = stt;

        rreader.Close();
        cmdd.Dispose();
        comm.Close();
    }

    
}
