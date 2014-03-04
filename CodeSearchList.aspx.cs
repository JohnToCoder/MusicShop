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


public partial class CodeSearchList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }

    }
    private void gvbind()
    {
        string sql = " select * , dbo.f_GetPy(left(name,1)) as SZM  from Music  where  IsCheck='1' and  dbo.f_GetPy(left(name,1))='" + Request.QueryString["key"].ToString() + "'";
        SqlConnection con = new SqlConnection(SqlHelper.connstring);

        con.Open();

        SqlDataAdapter sda = new SqlDataAdapter(sql, con);

        DataSet ds = new DataSet();
        sda.Fill(ds);
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = ds.Tables[0].DefaultView;

        objPds.AllowPaging = true;
        objPds.PageSize = 16;

        int CurPage;
        if (Request.QueryString["Page"] != null)
            CurPage = Convert.ToInt32(Request.QueryString["Page"]);
        else
            CurPage = 1;

        objPds.CurrentPageIndex = CurPage - 1;
        lblCurrentPage.Text = CurPage.ToString();
        lblSumPage.Text = objPds.PageCount.ToString();

        if (!objPds.IsFirstPage)
        {
            this.hyfirst.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + 1 + "&key=" + Request.QueryString["key"].ToString();
            lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1) + "&key=" + Request.QueryString["key"].ToString();
        }

        if (!objPds.IsLastPage)
        {
            hylastpage.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + objPds.PageCount + "&key=" + Request.QueryString["key"].ToString();

            lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1) + "&key=" + Request.QueryString["key"].ToString();
        }

        this.DataList1.DataSource = objPds;
        this.DataList1.DataBind();
        con.Close();


    }
}
