﻿using System;
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
public partial class _Default : System.Web.UI.Page
{
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataList4.DataSource = data.GetDataReader("select * from Musictype");
            DataList4.DataBind();

            DataList6.DataSource = data.GetDataReader("select * from Singer");
            DataList6.DataBind();

            DataList5.DataSource = data.GetDataReader("select * from Album");
            DataList5.DataBind();

            Datalist3.DataSource = data.GetDataReader("select top 8 * from News");
            Datalist3.DataBind();



            DataList1.DataSource = data.GetDataReader("select top 6 * from Music  where  IsCheck='1' order  by  id desc  ");
            DataList1.DataBind();


            DataList2.DataSource = data.GetDataReader("select top 6 * from Music  where  IsCheck='1' order  by  clk desc  ");
            DataList2.DataBind();
            if (Session["users"] != null)
            {
                table2.Visible = true;
                TABLE1.Visible = false;
                MName.Text = Session["users"].ToString();

            }
        }
    }
    protected void lbtnLogout_Click(object sender, EventArgs e)
    {
        table2.Visible = false;
        TABLE1.Visible = true;
        txtMName.Text = "";
        txtMPwd.Text = "";
        FormsAuthentication.SignOut();//清除验证信息
        HttpContext.Current.Session.Clear();//清除Session内容
        HttpContext.Current.Session.Abandon();//取消当前会话
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["VaildCode"].ToString().ToLower() == this.TextBox3.Text.ToLower())
        {
            sqlconn.Open();
            SqlCommand sqlcom = new SqlCommand("select * from Member where MemberName=@MemberName and MemberPwd=@MemberPwd", sqlconn);
            sqlcom.CommandType = CommandType.Text;
            sqlcom.Parameters.Add("@MemberName", SqlDbType.VarChar, 20).Value = txtMName.Text.Trim();
            sqlcom.Parameters.Add("@MemberPwd", SqlDbType.VarChar, 20).Value = txtMPwd.Text.Trim();
            SqlDataReader read = sqlcom.ExecuteReader();
            if (read.Read())
            {
                table2.Visible = true;
                TABLE1.Visible = false;
                MName.Text = txtMName.Text;
                Session["users"] = txtMName.Text.Trim();
            }
            else
            {
                Response.Write("<script>alert('您输入的用户名或密码错误，请重新输入！');location='javascript:history.go(-1)';</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('验证码错误，请重新输入！');location='javascript:history.go(-1)';</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

}
