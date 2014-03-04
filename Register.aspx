<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="Register.aspx.cs" Inherits="MemberManage_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <table cellpadding="0" cellspacing="0" align="center" style="width: 1px">
            <tr>
                <td style="text-align: center; width: 704px;">
              <asp:Label ID="Label2" runat="server" Font-Size="12pt" ForeColor="Red" Text="新会员注册"
                        Width="117px"></asp:Label>
                    <table align="center" cellpadding="0" cellspacing="0" style="width: 764px" >
                        <tr>
                            <td colspan="2" style="text-align: center; height: 19px;">
                             </td>
                        </tr>
                        <tr>
                            <td style="width: 872px; text-align: center;">
                    <asp:Label ID="labLoginName" runat="server" Text="会员登录名" Font-Size="12pt" Width="100px"></asp:Label></td>
                            <td style="width: 872px; text-align: left;">
                    <asp:TextBox ID="txtLoginName" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
                    <asp:Button ID="btnTest" runat="server" Font-Size="8pt" OnClick="btnTest_Click" Text="检测会员名" CausesValidation="False" Height="27px" />
                                <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                                <asp:RequiredFieldValidator ID="rfvLoginName" runat="server" ControlToValidate="txtLoginName" Font-Size="12pt" Height="1px" Width="193px">会员登录名不能为空</asp:RequiredFieldValidator>必须填写</td>
                        </tr>
                        <tr>
                            <td style="width: 872px; text-align: center;">
                    <asp:Label ID="labSex" runat="server" Text="性别" Font-Size="12pt" Width="67px"></asp:Label></td>
                            <td style="width: 872px; text-align: left;">
                    <asp:DropDownList ID="ddlSex" runat="server" Width="127px" Font-Size="12pt">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></td>
                        </tr>
                         <tr>
                            <td style="width: 872px; text-align: center; height: 48px;">
                    <asp:Label ID="labPwd" runat="server" Text="密码" Font-Size="12pt" Width="74px"></asp:Label></td>
                            <td style="width: 872px; text-align: left; height: 48px;">
                    <asp:TextBox ID="txtPwd" runat="server" Font-Size="12pt" Width="174px" TextMode="Password"></asp:TextBox>&nbsp;
                                <asp:RegularExpressionValidator ID="Regularexpressionvalidator2" runat="server" ControlToValidate="txtPwd"
                                    ErrorMessage="密码必须是6到14位" ValidationExpression="\w{6,14}" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd" Font-Size="12pt" Width="167px" Display="Dynamic">会员密码不能为空</asp:RequiredFieldValidator>必须是6－14位且属于(a-z),(A-Z),(0-9)中的任意字符【必须填写】</td>
                        </tr>
                         <tr>
                            <td style="width: 872px; text-align: center;">
                    <asp:Label ID="labTName" runat="server" Text="真实姓名" Font-Size="12pt" Width="83px"></asp:Label></td>
                            <td style="width: 872px; text-align: left;">
                    <asp:TextBox ID="txtTName" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td style="width: 872px; text-align: center; height: 26px;">
                    <asp:Label ID="labQuePwd" runat="server" Text="密码问题" Font-Size="12pt" Width="90px"></asp:Label></td>
                            <td style="width: 872px; text-align: left; height: 26px;">
                     <asp:TextBox ID="txtQuePwd" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvQuePwd" runat="server" ControlToValidate="txtQuePwd" Font-Size="12pt" Width="376px" Display="Dynamic">您应该输入密码问题，以防造成不必要的损失</asp:RequiredFieldValidator>必须填写</td>
                        </tr>
                         <tr>
                            <td style="width: 872px; text-align: center; height: 45px;">
                    <asp:Label ID="labAnsPwd" runat="server" Text="密码提示答案" Font-Size="12pt" Width="106px"></asp:Label></td>
                            <td style="width: 872px; text-align: left; height: 45px;">
                    <asp:TextBox ID="txtAnsPwd" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAnsPwd" runat="server" ControlToValidate="txtAnsPwd" Font-Size="12pt" Width="420px" Display="Dynamic">您应该输入密码问题的提示答案，以防造成不必要的损失</asp:RequiredFieldValidator>必须填写</td>
                        </tr>
                         <tr>
                            <td style="width: 872px; text-align: center; height: 23px;">
                    <asp:Label ID="labTel" runat="server" Text="电话" Font-Size="12pt" Width="70px"></asp:Label></td>
                            <td style="width: 872px; text-align: left; height: 23px;">
                    <asp:TextBox ID="txtTel" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td style="width: 872px; text-align: center;">
                    <asp:Label ID="labEmail" runat="server" Text="E-mail地址" Font-Size="12pt" Width="88px"></asp:Label></td>
                            <td style="width: 872px; text-align: left;">
                    <asp:TextBox ID="txtEmail" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="12pt" Width="351px" Display="Dynamic">您输入的E-mail地址格式不正确，请重新输入</asp:RegularExpressionValidator>必须填写</td>
                        </tr>
                        <tr>
                            <td style="width: 872px; text-align: center; height: 24px;">
                    <asp:Label ID="Label1" runat="server" Text="所在城市" Font-Size="12pt" Width="71px"></asp:Label></td>
                            <td style="width: 872px; text-align: left; height: 24px;"><asp:DropDownList ID="ddlCity" runat="server" Width="127px" Font-Size="12pt">
                              
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
                            <td style="width: 872px; text-align: center;">
                    <asp:Label ID="labAddress" runat="server" Text="住址" Font-Size="12pt" Width="67px"></asp:Label></td>
                            <td style="width: 872px; text-align: left;">
                    <asp:TextBox ID="txtAddress" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td style="width: 872px; text-align: center; height: 23px;">
        <asp:Label ID="labPostCode" runat="server" Text="邮编" Font-Size="12pt" Width="60px"></asp:Label></td>
                            <td style="width: 872px; text-align: left; height: 23px;">
                    <asp:TextBox ID="txtPostCode" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revPostCode" runat="server" ControlToValidate="txtPostCode" ValidationExpression="\d{6}" Font-Size="12pt" Width="134px" Display="Dynamic">您的邮编输入有误</asp:RegularExpressionValidator>必须填写</td>
                        </tr>
                         <tr>
                             <td style="text-align: center; width: 872px;" colspan="1">
                             </td>
                            <td style="width: 872px; text-align: left; height: 2px;">
                                &nbsp; &nbsp; &nbsp;
                                <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" Font-Size="12pt" />
                                &nbsp;&nbsp; &nbsp;<asp:Button ID="btnCancel" runat="server" Text="重置" OnClick="btnCancel_Click" Font-Size="12pt" CausesValidation="False" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
       
</asp:Content>
    
