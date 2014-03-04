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
public partial class Admin_EditAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Write("<script language='javascript'>alert('您还没有登陆');location.href='../login.aspx'</script>");
        }
        else
        {



            SqlConnection con = new SqlConnection(SqlHelper.connstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("select  * from Admin", con);//从数据库中选择数据
            cmd.Parameters.Add("@Aname", SqlDbType.VarChar);
         

            SqlDataReader sdr = cmd.ExecuteReader();//读数据
            if (sdr.Read())
            {
                txtname.Text = Convert.ToString(sdr["Aname"]);
                this.txtpwd.Text = Convert.ToString(sdr["Apwd"]);
               



            }
           
            con.Close();

        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = (SqlConnection)con;
        cmd.CommandText = "update   Admin set Apwd=@Apwd,Aname=@Aname  where Aname=@Aname";
        cmd.Parameters.Add("@Apwd", SqlDbType.VarChar);
        cmd.Parameters.Add("@Aname", SqlDbType.VarChar);
       

        cmd.Parameters["@Apwd"].Value = txtpwd.Text;
        cmd.Parameters["@Aname"].Value = this.txtname.Text;
     
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language='javascript'>alert('修改成功');location.href='AdminList.aspx'</script>");
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        txtpwd.Text = "";
        txtname.Text = "";
        txtpwd2.Text = "";

    }
}
