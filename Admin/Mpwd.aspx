<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Mpwd.aspx.cs" Inherits="Admin_Mpwd" Title="Untitled Page" %>
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
                账号管理 &gt;&gt;密码修改<a href="#"></a></td>
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
                            <font color="white">≡<b> 密码修改 </b>≡ </font>
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
                                            原密码：</td>
                                        <td style="width: 100px; height: 30px" align="left">
                                            <asp:TextBox ID="txtpwd1" runat="server" TextMode="Password" Width="142px"></asp:TextBox></td>
                                        <td style="width: 131px; height: 30px" align="left">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd1"
                                                Display="Dynamic" ErrorMessage="密码不能空"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td style="width: 90px; height: 30px">
                                            新密码：</td>
                                        <td style="width: 100px; height: 30px" align="left">
                                            <asp:TextBox ID="txtpwd2" runat="server" TextMode="Password" Width="138px"></asp:TextBox></td>
                                        <td style="width: 131px; height: 30px" align="left">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd2"
                                                Display="Dynamic" ErrorMessage="密码不能空"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 90px; height: 30px">
                                            确认新密码：</td>
                                        <td style="width: 100px; height: 30px" align="left">
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="138px"></asp:TextBox></td>
                                        <td style="width: 131px; height: 30px" align="left">
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
                                                ControlToValidate="txtpwd2" Display="Dynamic" ErrorMessage="密码不一致"></asp:CompareValidator></td>
                                    </tr>
                                </table>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 26px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改密码" />
                            <asp:Label ID="LabelWarningMessage" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                </table>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 21px">
            </td>
        </tr>
    </table>
</asp:Content>