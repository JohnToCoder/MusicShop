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


public partial class FaTie : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(SqlHelper.connstring);
    SqlHelper data = new SqlHelper();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            if (Session["users"] == null)
            {


                //string strlogin = "对不起,您只有登陆才能发贴！";
                Alert.AlertAndRedirect("对不起,您只有登陆才能发贴", "Login.aspx");


            }
            else
            {


                Label1.Text = Session["users"].ToString();

            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = Session["users"].ToString();
        string sqlinserlt = "insert into tb_PostMsg(PostTitle,PostContent,PostTime,UserID) values('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + DateTime.Now + "','" + Label1.Text + "')";
        data.RunSql(sqlinserlt);
        string str = "发贴成功！";
        Alert.AlertAndRedirect("发帖成功", "bbs.aspx");


    }
}
