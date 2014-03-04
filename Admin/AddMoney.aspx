<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddMoney.aspx.cs" Inherits="Admin_AddMoney" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="left" background="images/path_bg.gif" nowrap="nowrap" style="height: 21px"
                valign="top" width="31">
                <img height="19" src="images/path_left.gif" width="22" /></td>
            <td align="left" background="images/path_bg.gif" class="textFFF" nowrap="nowrap"
                style="height: 21px" width="135">
                您现在的位置是:</td>
            <td align="left" background="images/pppp.gif" style="height: 21px" valign="top" width="41">
                <img height="19" nowrap="nowrap" src="images/path_right.gif" width="28" /></td>
            <td align="left" background="images/pppp.gif" colspan="2" style="height: 21px">
                充值管理 &gt;&gt;充值管理<a href="#"></a></td>
        </tr>
    </table>
    <table border="0" cellpadding="3" style="border-right: #fe0000 1px solid; border-top: #fe0000 1px solid;
        border-left: #fe0000 1px solid; border-bottom: #fe0000 1px solid; background-color: #eeeeee"
        width="100%">
        <tr>
            <td align="center" colspan="2" style="height: 19px">
                <table align="center" bgcolor="#e3ebfe" border="1" bordercolor="#2c6ed5" cellpadding="2"
                    cellspacing="0" style="font-size: 12px; width: 824px; font-family: Tahoma; border-collapse: collapse">
                    <tr>
                        <td align="center" bgcolor="#92afec" colspan="2">
                            <font color="white">≡<b> 充值管理 </b>≡ </font>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 73px">
                            <font color="red">
                                <table border="0" cellpadding="0" cellspacing="0" style="border-right: #33ccff 0.1mm solid;
                                    border-top: #33ccff 0.1mm solid; border-left: #33ccff 0.1mm solid; width: 100%;
                                    border-bottom: #33ccff 0.1mm solid">
                                    <tr>
                                        <td style="width: 90px; height: 30px">
                                            金币卡号：</td>
                                        <td style="width: 100px; height: 30px">
                                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                                        <td style="width: 131px; height: 30px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                                Display="Dynamic" ErrorMessage="卡号不能 空"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td style="width: 90px; height: 30px">
                                            金币卡密码：</td>
                                        <td style="width: 100px; height: 30px">
                                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="147px"></asp:TextBox></td>
                                        <td style="width: 131px; height: 30px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"
                                                Display="Dynamic" ErrorMessage="密码不能空"></asp:RequiredFieldValidator></td>
                                    </tr>
                                </table>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发卡" /></td>
                    </tr>
                </table>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
    </table>
</asp:Content>
