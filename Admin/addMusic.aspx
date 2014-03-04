<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="addMusic.aspx.cs" Inherits="Admin_addMove" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="#fbd79f" border="0" cellpadding="0" cellspacing="1" height="280"
        width="100%">
        <!--DWLayoutTable-->
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 68px; height: 24px" valign="middle">
                歌曲名称:</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 24px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 24px" valign="middle">
                <asp:TextBox ID="titles" runat="server" Style="border-right: #ffcc00 1px solid; border-top: #ffcc00 1px solid;
                    border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid" Width="341px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="titles"
                    ErrorMessage="歌曲名称不能空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 68px; height: 23px" valign="middle">
                歌曲类别：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 23px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 23px" valign="middle">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="213px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 68px; height: 23px" valign="middle">
                歌手：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 23px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 23px" valign="middle">
                <asp:DropDownList ID="dlgeshou" runat="server" Width="148px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 68px; height: 22px" valign="middle">
                所属专辑：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 22px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 22px" valign="middle">
                <asp:DropDownList ID="dlzhuanji" runat="server" Width="146px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 68px; height: 22px" valign="middle">
                专辑海报：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 22px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 22px" valign="middle">
                <asp:Image ID="Image1" runat="server" Width="126px" /><br />
                <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                    id="file1" runat="server" class="inputBox" style="width: 141px" type="file" />&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="上传图片" />
                <asp:Label ID="Label1" runat="server" Visible="False" Width="60px"></asp:Label>
                &nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 68px; height: 22px" valign="middle">
                上传歌曲：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 22px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 22px" valign="middle">
                <asp:TextBox ID="txtMusicPath" runat="server" CssClass="inputBox" ReadOnly="True"
                    Width="72px"></asp:TextBox><input
                    id="File2" runat="server" class="inputBox" style="width: 141px" type="file" />
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="上传歌曲" />
                <asp:Label ID="Label2" runat="server" Visible="False" Width="60px"></asp:Label>
                </td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 68px; height: 111px;" valign="middle">
                歌曲描述</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 111px;"
                valign="top">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" valign="top" style="height: 111px">
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="103px" TextMode="MultiLine" Width="744px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" height="20" style="width: 68px" valign="middle">
                &nbsp;</td>
            <td bgcolor="#fff5e1" colspan="1" height="20" style="width: 2px">
            </td>
            <td bgcolor="#fff5e1" colspan="3" height="20">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="border-right: #003333 1px solid;
                    border-top: #003333 1px solid; font: menu; border-left: #003333 1px solid; border-bottom: #003333 1px solid"
                    Text="确定" Width="83px" />
                </td>
        </tr>
    </table>
</asp:Content>

