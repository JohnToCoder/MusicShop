<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BBS.aspx.cs" Inherits="BBS" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 610px">
        <tr>
            <td align="center" style="width: 964px">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="发贴" />&nbsp;<asp:GridView
                    ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333"
                    GridLines="None" OnRowDataBound="GridView1_RowDataBound" ShowHeader="False" Style="line-height: 20px"
                    Width="766px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="编号" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width: 650px">
                                    <tr>
                                        <td align="left" style="width: 600px">
                                            <%-- <img src="Images/action_back.gif" />--%>
                                            <a class="black" href='Reply.aspx?ID=<%#Eval("ID")%>'>
                                                <%#Eval("PostTitle")%>
                                            </a>
                                        </td>
                                        <td style="width: 217px; text-align: right">
                                            发贴人:<%#Eval("UserID") %>|</td>
                                        <td style="width: 388px">
                                            发贴时间:
                                            <%#Eval("PostTime") %>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 964px; height: 15px">
                <asp:Label ID="Label1" runat="server"></asp:Label>/当前第<asp:Label ID="labPage" runat="server"
                    CssClass="black">1</asp:Label>页/共有<asp:Label ID="labBackPage" runat="server" CssClass="black"></asp:Label>页
                <asp:LinkButton ID="lnkbtnOne" runat="server" CssClass="black" OnClick="lnkbtnOne_Click">第一页</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnUp" runat="server" CssClass="black" OnClick="lnkbtnUp_Click">上一页</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnNext" runat="server" CssClass="black" OnClick="lnkbtnNext_Click">下一页</asp:LinkButton>&nbsp;
                <asp:LinkButton ID="lnkbtnBack" runat="server" CssClass="black" OnClick="lnkbtnBack_Click">最后一页</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

