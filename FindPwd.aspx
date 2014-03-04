<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FindPwd.aspx.cs" Inherits="FindPwd" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" bgcolor="#e3ebfe" border="1" bordercolor="#2c6ed5" cellpadding="2"
        cellspacing="0" style="font-size: 12px; width: 770px; font-family: Tahoma; border-collapse: collapse">
        <tr>
            <td colspan="2" style="height: 73px">
                <font color="red">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-right: #33ccff 0.1mm solid;
                        border-top: #33ccff 0.1mm solid; border-left: #33ccff 0.1mm solid; width: 100%;
                        border-bottom: #33ccff 0.1mm solid">
                        <tr>
                            <td style="width: 90px; height: 30px">
                                密码问题：</td>
                            <td align="left" style="width: 100px; height: 30px">
                                <asp:TextBox ID="txtQuePwd" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                            <td align="left" style="width: 131px; height: 30px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuePwd"
                                    Display="Dynamic" ErrorMessage="不能空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 90px; height: 30px">
                                密码问题：</td>
                            <td align="left" style="width: 100px; height: 30px">
                                <asp:TextBox ID="txtAnsPwd" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                            <td align="left" style="width: 131px; height: 30px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnsPwd"
                                    Display="Dynamic" ErrorMessage="不能空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 90px; height: 30px">
                                您的密码是：</td>
                            <td align="left" style="width: 100px; height: 30px">
                                <asp:TextBox ID="TextBox2" runat="server" Width="138px"></asp:TextBox></td>
                            <td align="left" style="width: 131px; height: 30px">
                            </td>
                        </tr>
                    </table>
                </font>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="找回密码" />
                <asp:Label ID="LabelWarningMessage" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

