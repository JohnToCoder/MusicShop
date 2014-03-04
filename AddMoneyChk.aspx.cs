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

public partial class AddMoneyChk : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string CardIsChk = Request.QueryString["CardIsChk"].ToString();
            string CardPwd = Request.QueryString["CardPwd"].ToString();
            string CardNum = Request.QueryString["CardNum"].ToString();
            if (CardIsChk == "True")
            {
                Alert.AlertAndRedirect("此卡已经冲过了", "AddMoney.aspx");
            }
            else
            {
                if (CardPwd == "" || CardNum == "")
                {
                    Alert.AlertAndRedirect("没有充值卡账号或密码不能充值", "AddMoney.aspx");
                }
                else
                {


                    string CardUsername = Request.QueryString["CardUsername"].ToString();


                    string CardJifen = Request.QueryString["CardJifen"].ToString();
                    string id = Request.QueryString["id"].ToString();
                    data.RunSql("update Card set CardIsChk='1' where id=" + id);

                    data.RunSql("update Member set MemberMoney=MemberMoney+'" + CardJifen + "' where MemberName='" + CardUsername + "'");
                    Alert.AlertAndRedirect("充值成功", "UserHome.aspx");

                }
            }
       
        }
    }
   
}
