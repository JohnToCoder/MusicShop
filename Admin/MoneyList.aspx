<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="MoneyList.aspx.cs" Inherits="Admin_MoneyList" Title="Untitled Page" %>
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
                        <td colspan="2" style="height: 72px">
                            <font color="red">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                                    AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" DataKeyNames="id"
                                    ForeColor="#333333" GridLines="None" Width="813px">
                                    <RowStyle BackColor="#EFF3FB" />
                                    <Columns>
                                      
                                        <asp:BoundField DataField="CardType" HeaderText="充值卡类型" SortExpression="CardType" />
                                        <asp:BoundField DataField="CardNum" HeaderText="充值卡号" SortExpression="CardNum" />
                                       
                                        <asp:BoundField DataField="CardPwd" HeaderText="充值卡密码" SortExpression="CardPwd" />
                                   
                                        <asp:BoundField DataField="CardJifen" HeaderText="充值金币" SortExpression="CardJifen" />
                                        <asp:BoundField DataField="CardUsername" HeaderText="充值会员" SortExpression="CardUsername" />
                                        <asp:BoundField DataField="CardIsChk" HeaderText="是否充值" SortExpression="CardIsChk" />
                                  
                                        <asp:CommandField ShowDeleteButton="True" />
                                         
                        <asp:TemplateField HeaderText="发卡">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "AddMoney.aspx?id="+Eval("id") %>'
                                    Text="发卡"></asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <AlternatingRowStyle BackColor="White" />
                                </asp:GridView>
                                &nbsp;</font>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connStr %>"
                                DeleteCommand="DELETE FROM Card where id=@id" SelectCommand="SELECT * FROM Card">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" />
                                </DeleteParameters>
                            </asp:SqlDataSource>
                        </td>
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