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

public partial class SCMusic : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["users"] == null)
            {
                Alert.AlertAndRedirect("对不起您还没有登录", "Login.aspx");

            }
            else
            {
                data.RunSql("insert into CSMusic(MusidId,MusicName,UserName)values('" + Request.QueryString["id"].ToString() + "','" + Request.QueryString["Name"].ToString() + "','" + Session["users"].ToString() + "')");
                Alert.AlertAndRedirect("收藏该歌曲成功", "UserHome.aspx");
            }
        }
    }
}
