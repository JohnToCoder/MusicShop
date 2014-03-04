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

public partial class Admin_AddMoney : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        data.RunSql("update Card set CardNum='" + txtname.Text + "',CardPwd='"+txtpwd.Text+"' where id="+id);
        Alert.AlertAndRedirect("发卡成功", "MoneyList.aspx");

    }
}
