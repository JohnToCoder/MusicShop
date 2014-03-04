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
public partial class play : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    public string downPath; public string Fname;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string  id = Request.QueryString["id"].ToString();
            SqlDataReader dr;
            dr = data.GetDataReader("select * from Music where id="+id);
            dr.Read();
            downPath =Server.MapPath( dr["downPath"].ToString());
            Fname = dr["name"].ToString();
        }

    }
   
}
