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
public partial class SNameList : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }
    private void gvbind()
    {
        string key="";
         string sql ="";
        if (Request.QueryString["name"] != null)
        {
            key = Request.QueryString["name"].ToString();
            sql = "select * from Music where  IsCheck='1' and  name like '%" + key + "%' ";
        }
        if (Request.QueryString["Singer"] != null)
        {
            key = Request.QueryString["Singer"].ToString();
            sql = "select * from Music where   Singer like '%" + key + "%' and  IsCheck='1' ";
        }
        if (Request.QueryString["Album"] != null)
        {
            key = Request.QueryString["Album"].ToString();
            sql = "select * from Music where  Album like '%" + key + "%' and   IsCheck='1'";
        }
        if (Request.QueryString["Type"] != null)
        {
            key = Request.QueryString["Type"].ToString();
            sql = "select * from Music where TypeName like '%" + key + "%' and  IsCheck='1' ";
        }

        SqlDataReader dr = data.GetDataReader(sql);
        this.DataList1.DataSource = dr;
        this.DataList1.DataBind();
       
    }
}
