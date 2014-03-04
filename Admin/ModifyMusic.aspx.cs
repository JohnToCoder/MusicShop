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

public partial class Admin_ModifyMove : System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
            sql = "select * from Music where id=" + dID;
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            titles.Text = dr["name"].ToString();
            txtMusicPath.Text = dr["downPath"].ToString();
            TextBox1.Text = dr["ds"].ToString();
            pic.Text = dr["pic"].ToString();
            Image1.ImageUrl = "../" + dr["pic"].ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sql = "update Music set name='" + titles.Text.ToString().Trim() + "',downPath='" + txtMusicPath.Text + "',ds='" + TextBox1.Text + "',pic='" + pic.Text + "'   where id=" + dID;
        data.RunSql(sql);
        Alert.AlertAndRedirect("修改成功", "MusicList.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploads/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../" + pic.Text;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(File2, "../uploads/");
        this.Label2.Visible = true;
        this.Label2.Text = up.Resup[Convert.ToInt32(res)];
        this.txtMusicPath.Text = up.s;
      
    }
}
