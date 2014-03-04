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
using System.IO;
using System.Text;
public partial class MusicInfo : System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    public string downPath;
    public string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
            Get_Comment();

            sql = "select * from Music where id=" + dID;
            getdata(sql);
            if (Session["users"] != null)
            {
                txtName.Text = Session["users"].ToString();
 
            }
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            lblname.Text = dr["name"].ToString();
            lblType.Text = dr["TypeName"].ToString();
            lblgeshou.Text = dr["Singer"].ToString();
            lblzhuanji.Text = dr["Album"].ToString();
            lblContent.Text = dr["ds"].ToString();
            id = dr["id"].ToString();
            downPath = dr["downPath"].ToString();
            Image1.ImageUrl = dr["pic"].ToString();
            Hidden1.Value = dr["downPath"].ToString();
           
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["users"] != null)
        {
           
            SqlDataReader dr;
            dr = data.GetDataReader("select * from Member where MemberName='" + Session["users"].ToString()+ "'");
            dr.Read();
            float jifen = float.Parse( dr["MemberMoney"].ToString());
            if (jifen < 5)
            {
                Alert.AlertAndRedirect("您的金币不足请购买金币", "AddMoney.aspx");
            }
            else
            {
                data.RunSql("update Member set MemberMoney=MemberMoney-5 where MemberName='" + Session["users"].ToString() + "'");
                string fileName = lblname.Text+".mp3";//客户端保存的文件名 

                string filePath = Server.MapPath(Hidden1.Value);//路径

                //以字符流的形式下载文件 

                FileStream fs = new FileStream(filePath, FileMode.Open);

                byte[] bytes = new byte[(int)fs.Length];

                fs.Read(bytes, 0, bytes.Length);

                fs.Close();

                Response.ContentType = "application/octet-stream";

                //通知浏览器下载文件而不是打开 

                Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(fileName, System.Text.Encoding.UTF8));

                Response.BinaryWrite(bytes);

                Response.Flush();

                Response.End();
            }
        }
        else
        {
            Alert.AlertAndRedirect("只有会员才能下载本站歌曲", "Login.aspx");
        }
    }
    public void Get_Comment()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from Comments where MusicId=" + id);
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }

   
    protected void Button3_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        if (Session["users"] == null)
        {
            Alert.AlertAndRedirect("对不起您还没有登录不能评论", "Login.aspx");
        }
        else
        {
            txtName.Text = Session["users"].ToString();
        }
        data.RunSql("insert into Comments (Comments,MusicId,AddUserName)values('" + txtContent.Text + "'," + id + ",'" + txtName.Text + "')");
        data.RunSql("update Member set MemberMoney=MemberMoney+2 where MemberName='" + Session["users"].ToString() + "'");
        Alert.AlertAndRedirect("评论成功", "MusicInfo.aspx?id=" + id);

        this.txtContent.Text = "";
        Get_Comment();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        Response.Redirect("SCMusic.aspx?id=" + dID + "&Name=" + lblname.Text);
    }
}
