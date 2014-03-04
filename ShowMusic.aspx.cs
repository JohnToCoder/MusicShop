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
public partial class ShowMusic : System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    public string downPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {


            sql = "select * from Music where id=" + dID;
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
           lblname.Text = dr["name"].ToString();
           lblType.Text = dr["TypeName"].ToString();
           lblgeshou.Text= dr["Singer"].ToString();
          lblzhuanji.Text= dr["Album"].ToString();
        lblContent.Text = dr["ds"].ToString();
        downPath = dr["downPath"].ToString();

            Image1.ImageUrl = dr["pic"].ToString();
        }

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}
