<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FaTie.aspx.cs" Inherits="FaTie" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
        <table class="topmar" style="width: 618px">
            <tr>
                <td style="width: 800px; height: 27px; text-align: left">
                    发布帖子</td>
            </tr>
        </table>
        <table style="width: 768px; line-height: 25px">
            <tr>
                <td style="width: 75px; height: 16px; text-align: center">
                    发贴人：</td>
                <td style="width: 320px; height: 16px; text-align: left">
                    <asp:Label ID="Label1" runat="server"></asp:Label></td>
                <td style="width: 100px; height: 16px">
                </td>
            </tr>
            <tr>
                <td style="width: 75px; height: 1px; text-align: center">
                    标题：</td>
                <td style="width: 320px; height: 1px; text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server" Width="409px"></asp:TextBox></td>
                <td style="width: 100px; height: 1px">
                </td>
            </tr>
            <tr>
                <td style="width: 75px; text-align: center" valign="top">
                    问题内容：</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="300px" TextMode="MultiLine" Width="622px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 75px; text-align: center">
                </td>
                <td style="width: 320px; text-align: left">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发贴" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="取消" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td class="topmar" colspan="3" style="height: 25px">
                </td>
            </tr>
        </table>

</asp:Content>

