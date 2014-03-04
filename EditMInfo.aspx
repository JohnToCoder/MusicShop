<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master"  CodeFile="EditMInfo.aspx.cs" Inherits="MemberManage_EditMInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
       
        <table cellpadding="0" cellspacing="0" align="center" style="width: 774px" border="1" bordercolor="#0099ff">
                    <tr>
                        <td style="width: 108px">
                        </td>
                        <td style="width: 88px; text-align: center;">
        <asp:Label ID="labUserID" runat="server" Text="会员ID" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px" align="left">
                    <asp:TextBox ID="txtUserID" runat="server" Font-Size="12pt" ReadOnly="true"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 108px">
                        </td>
                        <td style="width: 88px; text-align: center;" align="left">
                    <asp:Label ID="labLoginName" runat="server" Text="会员登录名" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px" align="left">
                    <asp:TextBox ID="txtLoginName" runat="server" Font-Size="12pt"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 108px; height: 24px;">
                        </td>
                        <td style="width: 88px; text-align: center; height: 24px;" align="left">
                    <asp:Label ID="labSex" runat="server" Text="性 别" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px; height: 24px;" align="left">
                    <asp:DropDownList ID="ddlSex" runat="server" Width="132px" Font-Size="12pt">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;" align="left">
                            &nbsp;<asp:Label ID="labPwd" runat="server" Text="密 码" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px" align="left">
                    <asp:TextBox ID="txtPwd" runat="server" Font-Size="12pt" Width="128px"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px; height: 26px;">
                         </td>
                        <td style="width: 88px; text-align: center; height: 26px;" align="center">
                            &nbsp;&nbsp;
                    <asp:Label ID="labTName" runat="server" Text="真实姓名" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px; height: 26px;" align="left">
                    <asp:TextBox ID="txtTName" runat="server" Font-Size="12pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;" align="center">
                    <asp:Label ID="labQuePwd" runat="server" Text="密码问题" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px" align="left">
                    <asp:TextBox ID="txtQuePwd" runat="server" Font-Size="12pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;" align="center">
                    <asp:Label ID="labAnsPwd" runat="server" Text="密码提示答案" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px" align="left">
                    <asp:TextBox ID="txtAnsPwd" runat="server" Font-Size="12pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;" align="center">
                    <asp:Label ID="labTel" runat="server" Text="电 话" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px" align="left">
                    <asp:TextBox ID="txtTel" runat="server" Font-Size="12pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;" align="center">
                    <asp:Label ID="labEmail" runat="server" Text="Email地址" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px" align="left">
                    <asp:TextBox ID="txtEmail" runat="server" Font-Size="12pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;" align="center">
                    <asp:Label ID="labCity" runat="server" Text="所在城市" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px" align="left">
                    <asp:DropDownList ID="ddlCity" runat="server" Width="134px" Font-Size="12pt">
                                <asp:ListItem>长春市</asp:ListItem>
                                <asp:ListItem>长治市</asp:ListItem>
                                <asp:ListItem>北京市</asp:ListItem>
                                <asp:ListItem>上海市</asp:ListItem>
                                <asp:ListItem>天津市</asp:ListItem>
                                <asp:ListItem>吉林市</asp:ListItem>
                                <asp:ListItem>乌鲁木齐</asp:ListItem>
                                <asp:ListItem>呼和浩特</asp:ListItem>
                                <asp:ListItem>银川</asp:ListItem>
                                <asp:ListItem>拉萨</asp:ListItem>
                                <asp:ListItem>五台山</asp:ListItem>
                                <asp:ListItem>太行山</asp:ListItem>
                                <asp:ListItem>吐鲁番</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;" align="center">
                    <asp:Label ID="labAddress" runat="server" Text="住 址" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px" align="left">
                    <asp:TextBox ID="txtAddress" runat="server" Font-Size="12pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px; height: 28px;">
                         </td>
                        <td style="width: 88px; text-align: center; height: 28px;" align="center">
                    <asp:Label ID="labPostCode" runat="server" Text="邮 编" Font-Size="12pt"></asp:Label></td>
                        <td style="width: 184px; height: 28px;" align="left">
                    <asp:TextBox ID="txtPostCode" runat="server" Font-Size="12pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px; height: 22px;">
                         </td>
                        <td style="text-align: center;" colspan="2" align="left">
                    <asp:Button ID="btnModify" runat="server" OnClick="btnModify_Click" Text="修改" Font-Size="12pt" />
                           
                        </td>
                    </tr>
                </table>
       
</asp:Content>

