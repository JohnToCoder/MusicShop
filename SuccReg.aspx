<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SuccReg.aspx.cs" Inherits="SuccReg" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="text-align:center"><asp:Label ID="Label1" runat="server" Text="恭喜您注册成功"></asp:Label><br />
      &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">在线购买金币</asp:LinkButton>
      <br />
      <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">进入个人中心</asp:LinkButton></div>  
</asp:Content>

