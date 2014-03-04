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
public partial class Reply : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(SqlHelper.connstring);
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["users"] == null)
        {

            this.Button2.Visible = false;
            this.Panel1.Visible = false;
        }
        else
        {

            this.Button2.Visible = true;

            Label5.Text = Session["users"].ToString();
        }
        if (!IsPostBack)
        {

            this.setbind();
        }
        string ReID = Convert.ToString(Request.QueryString["ID"]);
        string sqlstr = "select * from tb_PostMsg where ID='" + ReID + "'";
        SqlCommand cmd = new SqlCommand(sqlstr, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            this.Label1.Text = dr["PostTitle"].ToString();
            this.Label2.Text = dr["UserID"].ToString();
            this.Label3.Text = dr["PostTime"].ToString();
            Label4.Text = dr["PostContent"].ToString();
            dr.Close();
            conn.Close();
        }
    }
    public string FormatString(string str)
    {
        str = str.Replace(" ", "&nbsp;&nbsp");//控制格式含数
        str = str.Replace("<", "&lt;");
        str = str.Replace(">", "&glt;");
        str = str.Replace('\n'.ToString(), "<br>");
        return str;


    }
    public void setbind()
    {
        string ReID = Convert.ToString(Request.QueryString["ID"]);
        string sqlsel = "select * from tb_ReplyMsg where ID='" + ReID + "' order by Re_ID DESC";
        this.DataList1.DataSource = data.GetDs(sqlsel, "tb_ReplyMsg");
        this.DataList1.DataBind();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string ReID = Convert.ToString(Request.QueryString["ID"]);
        DateTime dt = DateTime.Now;
        string sqlinsert = "insert into tb_ReplyMsg(ReTitle,ReContent,ReTime,ID,UserID) values('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + dt + "','" + ReID + "','" + Session["users"].ToString() + "')";
        data.RunSql(sqlinsert);
        string str = "回复成功！";
        Alert.AlertAndRedirect("回复成功", "bbs.aspx");
        this.setbind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("FaTie.aspx");
    }

}
