<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"  EnableEventValidation="false"  CodeFile="tpnews_updt.aspx.cs" Inherits="Admin_tpnews_updt" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="#fbd79f" border="0" cellpadding="0" cellspacing="1" height="280"
        width="100%">
        <!--DWLayoutTable-->
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 68px; height: 24px" valign="middle">
                标题:</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 24px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 24px" valign="middle">
                <asp:TextBox ID="titles" runat="server" Style="border-right: #ffcc00 1px solid; border-top: #ffcc00 1px solid;
                    border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid" Width="341px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 68px; height: 353px" valign="middle">
                内容</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 353px"
                valign="top">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 353px" valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Height="305px" TextMode="MultiLine" Width="744px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" height="20" style="width: 68px" valign="middle">
                &nbsp;</td>
            <td bgcolor="#fff5e1" colspan="1" height="20" style="width: 2px">
            </td>
            <td bgcolor="#fff5e1" colspan="3" height="20">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="border-right: #003333 1px solid;
                    border-top: #003333 1px solid; font: menu; border-left: #003333 1px solid; border-bottom: #003333 1px solid"
                    Text="确定修改" Width="83px" />
                </td>
        </tr>
    </table>
</asp:Content>

