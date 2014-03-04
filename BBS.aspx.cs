using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class BBS : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(SqlHelper.connstring);
    DataSet ds = new DataSet();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = " 基于Asp.net的网上音乐商店的设计与实现 ";
        if (!IsPostBack)
        {
            string sqlstr = "select * from tb_PostMsg order by ID DESC";
            string sql = "select  count(*) from tb_PostMsg";
            conn.Open();
            SqlCommand cdm = new SqlCommand(sql, conn);

            Label1.Text = "共有" + Convert.ToString((int)cdm.ExecuteScalar()) + "条记录";
            GWbind();
        }

        
    }
    public void GWbind()//绑定main文章
    {
        int curpage = Convert.ToInt32(this.labPage.Text);
        PagedDataSource ps = new PagedDataSource();
        //conn.Open();
        string sql = "select * from tb_PostMsg  order by ID DESC";
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        da.Fill(ds, "tb_PostMsg");
        ps.DataSource = ds.Tables["tb_PostMsg"].DefaultView;
        //ps.DataSource = sh.GetDataSet(sql, "PostMsg");
        ps.AllowPaging = true; //是否可以分页 
        ps.PageSize = 15; //显示的数量 
        ps.CurrentPageIndex = curpage - 1; //取得当前页的页码 
        this.lnkbtnUp.Enabled = true;
        this.lnkbtnNext.Enabled = true;
        this.lnkbtnBack.Enabled = true;
        this.lnkbtnOne.Enabled = true;
        if (curpage == 1)
        {
            this.lnkbtnOne.Enabled = false;//不显示第一页按钮 
            this.lnkbtnUp.Enabled = false;//不显示上一页按钮 
        }

        if (curpage == ps.PageCount)
        {
            this.lnkbtnNext.Enabled = false;//不显示下一页 
            this.lnkbtnBack.Enabled = false;//不显示最后一页 
        }
        this.labBackPage.Text = Convert.ToString(ps.PageCount);
        this.GridView1.DataSource = ps;
        this.GridView1.DataBind();
        //conn.Close();
    }
    protected void lnkbtnOne_Click(object sender, EventArgs e)
    {
        this.labPage.Text = "1";
        this.GWbind();
    }
    protected void lnkbtnUp_Click(object sender, EventArgs e)
    {
        this.labPage.Text = Convert.ToString(Convert.ToInt32(this.labPage.Text) - 1);
        this.GWbind();
    }
    protected void lnkbtnNext_Click(object sender, EventArgs e)
    {
        this.labPage.Text = Convert.ToString(Convert.ToInt32(this.labPage.Text) + 1);
        this.GWbind();
    }
    protected void lnkbtnBack_Click(object sender, EventArgs e)
    {
        this.labPage.Text = this.labBackPage.Text;
        this.GWbind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int orderid = e.Row.RowIndex + 1;
        e.Row.Cells[0].Text = orderid.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("FaTie.aspx");
    }
}
