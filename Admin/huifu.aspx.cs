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

public partial class Admin_huifu : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            BindGridView();

        }
    }

    //绑定控件
    private void BindGridView()
    {
        DataSet ds = Getnews();
        NewsGridView.DataSource = ds.Tables["aa"].DefaultView;
        NewsGridView.DataBind();
    }
    //读取新闻
    public DataSet Getnews()
    {

        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
        string cmdText = "SELECT * FROM tb_ReplyMsg  ORDER BY id DESC";

        SqlDataAdapter da = new SqlDataAdapter(cmdText, myConnection);
        DataSet ds = new DataSet();
        try
        {
            myConnection.Open();
            da.Fill(ds, "aa");
        }
        catch (SqlException ex)
        {
            throw new Exception(ex.Message, ex);
        }
        finally
        {
            myConnection.Close();
        }
        return ds;
    }
    protected void drpSelect_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindGridView();
    }
    //翻页
    protected void NewsGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        NewsGridView.PageIndex = e.NewPageIndex;
        BindGridView();
    }
    //删除
    protected void NewsGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int nNewsID = Int32.Parse(NewsGridView.DataKeys[e.RowIndex].Value.ToString());
        DelNews(nNewsID);
        BindGridView(); ;

    }
    //删除数据
    private void DelNews(int nNewsID)
    {
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
        string cmdText = "DELETE FROM tb_ReplyMsg WHERE id=" + nNewsID;

        SqlCommand myCommand = new SqlCommand(cmdText, myConnection);
        try
        {
            myConnection.Open();
            myCommand.ExecuteNonQuery();
        }
        catch (SqlException ex)
        {
            throw new Exception(ex.Message, ex);
        }
        finally
        {
            myConnection.Close();
        }

    }

}
