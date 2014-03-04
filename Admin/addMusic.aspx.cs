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

public partial class Admin_addMove : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from Musictype");
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();


            dlgeshou.DataSource = data.GetDataReader("select * from Singer");
            dlgeshou.DataValueField = "id";
            dlgeshou.DataTextField = "name";
            dlgeshou.DataBind();



            dlzhuanji.DataSource = data.GetDataReader("select * from Album");
            dlzhuanji.DataValueField = "id";
            dlzhuanji.DataTextField = "name";
            dlzhuanji.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = titles.Text.ToString().Trim() + ".mp3";
        string sql = "insert into Music(name,Typeid,TypeName,SingerId,Singer,Albumid,Album,ds,Addtime,pic,downPath,IsCheck) values('" + name + "','" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + dlgeshou.SelectedValue + "','" + dlgeshou.SelectedItem.Text + "','" + dlzhuanji.SelectedValue + "','" + dlzhuanji.SelectedItem.Text + "','" + TextBox1.Text + "','" + DateTime.Now.ToString() + "','" + pic.Text + "','" + txtMusicPath.Text + "','1')";
        data.RunSql(sql);
        Alert.AlertAndRedirect("添加成功", "addMusic.aspx");


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
    protected void Button2_Click(object sender, EventArgs e)
    {

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
