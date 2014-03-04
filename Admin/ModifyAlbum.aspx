<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ModifyAlbum.aspx.cs" Inherits="Admin_ModifyAlbum" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table style="width: 845px">
<tr>
            <td bgcolor="#fff5e1" colspan="5" height="20">
                &nbsp;<table id="Table1" border="0" cellpadding="0" cellspacing="0" style="width: 836px">
                    <tr>
                        <td style="width: 90px; height: 25px" align="left">
                            名称*</td>
                        <td style="width: 232px; height: 25px" align="left">
                            <asp:TextBox ID="txtname" runat="server" Width="194px"></asp:TextBox></td>
                        <td style="width: 232px; height: 25px">
                            &nbsp;<asp:Label ID="LabelWarningMessage" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 25px" align="left">
                            歌手：</td>
                        <td align="left" style="width: 232px; height: 25px">
                            <asp:TextBox ID="TextBox1" runat="server" Width="90px"></asp:TextBox></td>
                        <td style="width: 232px; height: 25px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 25px" align="left">
                            专辑图片：</td>
                        <td align="left" colspan="2" style="height: 25px">
                            <asp:Image ID="Image1" runat="server" Width="126px" /><asp:TextBox ID="pic" runat="server"
                                CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input id="file1"
                                    runat="server" class="inputBox" style="width: 141px" type="file" /><asp:Button ID="Button3"
                                        runat="server" OnClick="Button3_Click" Text="上传图片" />
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 25px" align="left">
                            专辑描述：</td>
                        <td align="left" colspan="2" style="height: 25px">
                            <asp:TextBox ID="TextBox2" runat="server" Width="697px" Height="107px" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 25px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 15px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

</table>
</asp:Content>

