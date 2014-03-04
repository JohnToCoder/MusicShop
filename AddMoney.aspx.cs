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
public partial class AddMoney : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["users"] == null)
        {
            Alert.AlertAndRedirect("对不起您还没有登录", "Login.aspx");

        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into Card(CardType,CardJifen,CardUsername)values('" + DropDownList1.SelectedValue + "','" + TextBox3.Text + "','" + Session["users"].ToString()+ "')");
        Alert.AlertAndRedirect("购买成功请等待您的金币卡账号和密码", "AddMoney.aspx");
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "20元卡相当于200金币")
        {
            txtLoginName.Text = "20";
         TextBox3.Text= "200";

        }
        else
        {
            TextBox3.Text = "100";

            txtLoginName.Text = "10";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        data.RunSql("update Member set MemberMoney=MemberMoney+" + Convert.ToDecimal(txtLoginName.Text) + " where MemberName='" + Session["users"].ToString() + "'");
        Alert.AlertAndRedirect("金币充值成功", "UserHome.aspx");
    }
}
