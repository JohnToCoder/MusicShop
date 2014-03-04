<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table id="TABLE1" runat="server" cellpadding="0" cellspacing="0" height="174" style="border-right: #0099ff 0.2mm solid;
            border-top: #0099ff 0.2mm solid; border-left: #0099ff 0.2mm solid; width: 315px;
            border-bottom: #0099ff 0.2mm solid">
            <tr>
                <td align="center" bgcolor="#3399cc" style="width: 316px; height: 16px">
                    管理登陆</td>
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
                                            <asp:TextBox ID="txtname" runat="server" Width="120px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="huicu" style="width: 87px">
                                            密码：</td>
                                        <td align="left">
                                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="120px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="huicu" style="width: 87px">
                                            验证码：</td>
                                        <td align="left">
                                            <asp:TextBox ID="TextBox3" runat="server" Width="80px"></asp:TextBox>
                                            <asp:Image ID="Image1" runat="server" ImageUrl="../VaildImg.aspx" onclick="this.src=this.src+'?'" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <a href="#"></a>
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/an2.gif" OnClick="ImageButton1_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
