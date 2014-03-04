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

public partial class MusicAlbumList : System.Web.UI.Page
{
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataList4.DataSource = data.GetDataReader("select * from Album");
            DataList4.DataBind();
        }
    }
}
