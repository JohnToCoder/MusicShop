<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddMoney.aspx.cs" Inherits="AddMoney" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" style="width: 773px">
        <tr>
            <td rowspan="1" style="width: 89px; height: 25px; text-align: center">
            </td>
            <td style="width: 140px; height: 25px; text-align: center">
                购买的充值卡类型：</td>
            <td style="width: 169px; height: 25px; text-align: left">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Width="169px">
                    <asp:ListItem>10元卡相当于100金币</asp:ListItem>
                    <asp:ListItem>20元卡相当于200金币</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 149px; height: 25px">
            </td>
        </tr>
        <tr>
            <td rowspan="1" style="width: 89px; height: 25px; text-align: center">
            </td>
            <td style="width: 140px; height: 25px; text-align: center">
                金额：</td>
            <td style="width: 169px; height: 25px; text-align: left">
                <asp:TextBox ID="txtLoginName" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
            </td>
            <td style="width: 149px; height: 25px">
                &nbsp;<asp:RequiredFieldValidator ID="rfvLoginName" runat="server" ControlToValidate="txtLoginName"
                    Font-Size="12pt" Height="1px" Width="117px">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td rowspan="1" style="width: 89px; height: 25px; text-align: center">
            </td>
            <td style="width: 140px; height: 25px; text-align: center">
                可充金币：</td>
            <td style="width: 169px; height: 25px; text-align: left">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
            <td style="width: 149px; height: 25px">
            </td>
        </tr>
        <tr>
            <td colspan="4" rowspan="1" style="text-align: center">
                &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnRegister" runat="server" Font-Size="12pt" OnClick="btnRegister_Click"
                    Text="购买" />
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" rowspan="1" style="height: 38px; text-align: center">
                您购买的充值卡账号和密码</td>
        </tr>
        <tr>
            <td colspan="4" rowspan="1" style="height: 95px; text-align: center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333"
                    GridLines="None" Width="775px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="CardType" HeaderText="充值卡类型" SortExpression="CardType" />
                        <asp:BoundField DataField="CardNum" HeaderText="充值卡号" SortExpression="CardNum" />
                        <asp:BoundField DataField="CardPwd" HeaderText="充值卡密码" SortExpression="CardPwd" />
                        <asp:BoundField DataField="CardJifen" HeaderText="充值金币" SortExpression="CardJifen" />
                        <asp:BoundField DataField="CardUsername" HeaderText="充值会员" SortExpression="CardUsername" />
                        <asp:BoundField DataField="CardIsChk" HeaderText="是否充值" SortExpression="CardIsChk" />
                     
                        <asp:TemplateField HeaderText="充值">
                            <ItemTemplate>
                             <a href='AddMoneyChk.aspx?id=<%#DataBinder.Eval(Container.DataItem,"id") %>&CardUsername=<%#DataBinder.Eval(Container.DataItem,"CardUsername") %>&CardJifen=<%#DataBinder.Eval(Container.DataItem,"CardJifen") %>&CardIsChk=<%#DataBinder.Eval(Container.DataItem,"CardIsChk") %>&CardNum=<%#DataBinder.Eval(Container.DataItem,"CardNum") %>&CardPwd=<%#DataBinder.Eval(Container.DataItem,"CardPwd") %>'>
                             充值</a>
                              
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connStr %>"
                    SelectCommand="SELECT * FROM [Card] WHERE ([CardUsername] = @CardUsername) ORDER BY [id]">
                    <SelectParameters>
                        <asp:SessionParameter Name="CardUsername" SessionField="users" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

