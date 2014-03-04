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
public partial class UserHome : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["users"] != null)
            {

                Label1.Text = Session["users"].ToString();
                SqlDataReader dr = data.GetDataReader("select * from Member where MemberName='" + Session["users"].ToString()+ "'");
                if (dr.Read())
                {
                    Label2.Text = dr["MemberMoney"].ToString();

                }
                DataList4.DataSource = data.GetDataReader("select * from v_SCbum where UserName='" + Session["users"].ToString() + "'");
                DataList4.DataBind();
           


                DataList2.DataSource = data.GetDataReader("select * from CSMusic where UserName='" + Session["users"].ToString() + "'");
                DataList2.DataBind();
            }
            else
            {
                Alert.AlertAndRedirect("对不起您还没有登录", "Login.aspx");
            }
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddMoney.aspx");

    }


 
}
