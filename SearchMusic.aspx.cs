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

public partial class SearchMusic : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedValue == "按歌曲名称搜索")
        {
            Response.Redirect("SList.aspx?name=" + TextBox1.Text);
        }
        else if (DropDownList2.SelectedValue == "按歌手姓名搜索")
        {
            Response.Redirect("SList.aspx?Singer=" + TextBox1.Text);
 
        }
        else if (DropDownList2.SelectedValue == "按专辑名称搜索")
        {
            Response.Redirect("SList.aspx?Album=" + TextBox1.Text);
        }
        else
        {
            Response.Redirect("SList.aspx?Type=" + TextBox1.Text);
        }
    }
}
