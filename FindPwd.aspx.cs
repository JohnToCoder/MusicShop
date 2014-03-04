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

public partial class FindPwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlHelper data = new SqlHelper();
        SqlDataReader dr = data.GetDataReader("select * from Member where MemberQue='" + txtQuePwd.Text + "' and MemberAns='"+txtQuePwd.Text+"'");
        if (dr.Read())
        {
            TextBox2.Text = dr["MemberPWD"].ToString();
        }
        else
        {
            Alert.AlertAndRedirect("密码问题或答案不正确不能找回密码", "findPwd.aspx");
        }
    }
}
