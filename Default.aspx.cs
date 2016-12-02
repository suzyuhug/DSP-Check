using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        dt.Columns.Add("料号", typeof(string));
        dt.Columns.Add("数量", typeof(string));
        dt.Columns.Add("确认", typeof(string));
        dt.Rows.Add("TDN-624-103-00", "1");
        dt.Rows.Add("TDN-906-020-02", "1");
        dt.Rows.Add("TDN-873-572-21", "1");
        dt.Rows.Add("TDN-579-187-03", "1");
        dt.Rows.Add("TDN-579-187-04", "1");
        dt.Rows.Add("TDN-574-813-01", "2");
        dt.Rows.Add("TDN-600-199-00", "1");
        dt.Rows.Add("TDN-504-042-00", "1");
        dt.Rows.Add("TDN-504-042-01", "1");
        dt.Rows.Add("TDN-504-079-00", "2");
        dt.Rows.Add("TDN-601-979-18", "6");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string SqlData = "server=suznt019;database=TOV_BaaN;uid=TOV_TER;pwd=Tov@0916";
        SqlConnection cn = new SqlConnection(SqlData);
        cn.Open();
        string sql = "EXEC usp_PODetail_Extend '" + TextBox1.Text + "',null";
        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataAdapter dp = new SqlDataAdapter(cmd);
        DataTable TOV = new DataTable();
        dp.Fill(TOV);      
        cn.Close();

      
       
        string pn = null;
        for (int i = 0; i < dt.Rows.Count ; i++)
        {
            pn = dt.Rows[i]["料号"].ToString(); 
            DataRow[] NopoArr = TOV.Select("Component='" + pn + "'");
            if (NopoArr.Length > 0)
            {
                dt.Rows[i]["确认"] = ResolveUrl("~/image/tick.png");

               
            }
            else
            {
                dt.Rows[i]["确认"] = ResolveUrl("~/image/error.png");
            }
            }





        GridView1.DataSource = dt;
        GridView1.DataBind();



    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
}