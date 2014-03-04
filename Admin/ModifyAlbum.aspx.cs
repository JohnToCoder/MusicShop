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
public partial class Admin_ModifyAlbum : System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
            sql = "select * from Album where id=" + dID;
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            txtname.Text = dr["name"].ToString();
            TextBox1.Text = dr["Person"].ToString();
           TextBox2.Text = dr["ds"].ToString();
           pic.Text = dr["Pic"].ToString();
            Image1.ImageUrl = "../" + dr["Pic"].ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        sql = "update Album set name='" + txtname.Text.ToString().Trim() + "',Person='" + TextBox1.Text + "',ds='" + TextBox2.Text + "',pic='" + pic.Text + "'   where id=" + dID;
        data.RunSql(sql);
        Alert.AlertAndRedirect("修改成功", "AlbumManger.aspx");
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
}
