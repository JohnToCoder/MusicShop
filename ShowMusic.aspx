<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowMusic.aspx.cs" Inherits="ShowMusic" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="#fbd79f" border="0" cellpadding="0" cellspacing="1" height="280"
        width="100%">
        <!--DWLayoutTable-->
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 24px" valign="middle">
                歌曲名称:</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 24px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 24px" valign="middle">
                <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 23px" valign="middle">
                歌曲类别：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 23px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 23px" valign="middle">
                <asp:Label ID="lblType" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 23px" valign="middle">
                歌曲时间：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 23px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 23px" valign="middle">
                <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 23px" valign="middle">
                歌手：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 23px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 23px" valign="middle">
                <asp:Label ID="lblgeshou" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 22px" valign="middle">
                所属专辑：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 22px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 22px" valign="middle">
                <asp:Label ID="lblzhuanji" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 22px" valign="middle">
                音乐海报：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 22px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 22px" valign="middle">
                <asp:Image ID="Image1" runat="server" Width="156px" /></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px" valign="middle">
                内容描述</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px" valign="top">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" valign="top">
                <asp:Label ID="lblContent" runat="server" Height="130px" Text="Label" Width="692px"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px" valign="middle">
                下载歌曲：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px" valign="top">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" valign="top">
           
            </td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" height="20" style="width: 317px" valign="middle">
                在线试听：&nbsp;</td>
            <td bgcolor="#fff5e1" colspan="1" height="20" style="width: 2px">
            </td>
            <td bgcolor="#fff5e1" colspan="3" height="20">
                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server">lblting</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

