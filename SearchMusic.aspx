<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchMusic.aspx.cs" Inherits="SearchMusic" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 777px">
        <tr>
            <td style="width: 100%">
                搜索类别：<asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>按歌曲名称搜索</asp:ListItem>
                    <asp:ListItem>按歌手姓名搜索</asp:ListItem>
                    <asp:ListItem>按专辑名称搜索</asp:ListItem>
                    <asp:ListItem>按歌曲类别搜索</asp:ListItem>
                </asp:DropDownList>关键字：<asp:TextBox ID="TextBox1" runat="server" Width="192px"></asp:TextBox>&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="搜索" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="请输入关键字"></asp:RequiredFieldValidator></td>
        </tr>
    </table>
</asp:Content>

