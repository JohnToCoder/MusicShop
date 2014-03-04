<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="无标题页" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" style="width: 100px">
   
    <table id="TABLE1" runat="server" cellpadding="0" cellspacing="0" height="174" style="border-right: #0099ff 0.2mm solid;
        border-top: #0099ff 0.2mm solid; border-left: #0099ff 0.2mm solid; width: 315px;
        border-bottom: #0099ff 0.2mm solid">
        <tr>
            <td align="center" bgcolor="#3399cc" style="width: 316px; height: 16px">
                会员登陆</td>
        </tr>
        <tr>
            <td height="90" style="width: 316px" valign="top">
                <table cellpadding="0" cellspacing="0" height="123" style="width: 277px">
                    <tr>
                        <td style="height: 133px">
                            <table cellpadding="0" cellspacing="0" height="120" style="width: 314px">
                                <tr>
                                    <td align="center" class="huicu" height="29" style="width: 87px">
                                        用户：</td>
                                    <td align="left" width="70">
                                        <asp:TextBox ID="txtMName" runat="server" Width="120px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="center" class="huicu" style="width: 87px">
                                        密码：</td>
                                    <td align="left">
                                        <asp:TextBox ID="txtMPwd" runat="server" TextMode="Password" Width="120px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="center" class="huicu" style="width: 87px">
                                        验证码：</td>
                                    <td align="left">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="80px"></asp:TextBox>
                                        <asp:Image ID="Image1" runat="server" ImageUrl="VaildImg.aspx" onclick="this.src=this.src+'?'" /></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="height: 25px">
                                        <a href="#"></a>
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/an2.gif" OnClick="ImageButton1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="height: 19px">
                                        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#00C0C0" OnClick="LinkButton1_Click">注册</asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">找回密码</asp:LinkButton></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table id="table2" runat="server" cellpadding="0" cellspacing="0" class="huicu" height="174"
        style="border-right: #0099ff 0.2mm solid; border-top: #0099ff 0.2mm solid; border-left: #0099ff 0.2mm solid;
        width: 314px; border-bottom: #0099ff 0.2mm solid" visible="false">
        <tr>
            <td align="center" bgcolor="#3399cc" style="width: 348px; height: 16px">
                &nbsp;&nbsp; 会员登陆信息</td>
        </tr>
        <tr>
            <td height="16" style="width: 348px" valign="top">
                &nbsp;<table cellpadding="0" cellspacing="0" height="123" style="width: 311px">
                    <tr>
                        <td style="text-align: center">
                            <table style="width: 266px">
                                <tr>
                                    <td class="huicu" style="text-align: center">
                                        欢迎<asp:Label ID="MName" runat="server" ForeColor="#FF8000" Width="107px"></asp:Label>光临！</td>
                                </tr>
                                <tr>
                                    <td class="huicu" style="height: 16px; text-align: center">
                                        <asp:LinkButton ID="lbtnLogout" runat="server" Font-Underline="False" ForeColor="Black"
                                            OnClick="lbtnLogout_Click" Width="96px">注销</asp:LinkButton>
                                        <asp:HyperLink ID="hlinkEdit" runat="server" Font-Underline="False" ForeColor="Black"
                                            NavigateUrl="EditMInfo.aspx" Width="90px">更新信息</asp:HyperLink></td>
                                    <td style="height: 16px">
                                    </td>
                                </tr>
                            </table>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">充值金币</asp:LinkButton></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="6" style="width: 348px">
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>

