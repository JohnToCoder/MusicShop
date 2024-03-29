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

public partial class Admin_SingerManger : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            InitData();
        }

    }

    protected void InitData()
    {
        SqlHelper mydata = new SqlHelper();

        GridView1.DataSource = mydata.GetDataReader("select * from Singer");
        GridView1.DataBind();
    }
    //GridView控件RowDeleting事件
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlHelper mydata = new SqlHelper();

        string ID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            mydata.RunSql("delete  from Singer where  id='" + ID + "'");

            Response.Write("<script language=javascript>alert('成功删除！')</script>");
            GridView1.EditIndex = -1;
            InitData();
        }
        catch
        {

            Response.Write("<script language=javascript>alert('删除失败！')</script>");
        }

    }
    //GridView控件RowUpdating事件
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlHelper mydata = new SqlHelper();
        string ID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            mydata.RunSql("update Singer set name='" + ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtName")).Text + "'  where id=" + ID);



            Response.Write("<script language=javascript>alert('修改成功!')</script>");
            GridView1.EditIndex = -1;
            InitData();
        }
        catch
        {
            Response.Write("<script language=javascript>alert('修改失败!')</script>");
        }

    }
    //GridView控件RowCanceling事件
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        InitData();
    }
    //GridView控件RowEditing事件
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        InitData();
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into Singer(name)values('" + txtname.Text + "')");
        Alert.AlertAndRedirect("添加成功", "SingerManger.aspx");
        InitData();
    }
}
