<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reply.aspx.cs" Inherits="Reply" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 770px">
        <tr>
            <td colspan="3" style="width: 900px; height: 16px; text-align: left">
                标题：<asp:Label ID="Label1" runat="server"></asp:Label>发贴人：<asp:Label ID="Label2" runat="server"></asp:Label>发贴时间：<asp:Label
                    ID="Label3" runat="server"></asp:Label>
                &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="发贴" /></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left">
                跟贴列表：<br />
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" Width="766px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <table style="width: 644px; line-height: 25px">
                            <tr>
                                <td style="width: 101px; text-align: center">
                                    回复标题：</td>
                                <td style="width: 353px; line-height: 25px">
                                    <%#Eval("ReTitle") %>
                                </td>
                                <td colspan="2">
                                    回贴人：<%#Eval("UserID")%>回复时间：<%#Eval("ReTime")%></td>
                            </tr>
                            <tr>
                                <td style="width: 101px; text-align: center" valign="top">
                                    回贴内容：</td>
                                <td colspan="3" style="line-height: 25px">
                                    <%#FormatString(Eval("ReContent").ToString ())%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 297px; text-align: left">
                <div style="text-align: left">
                    &nbsp;</div>
                <asp:Panel ID="Panel1" runat="server" Width="100%">
                    <table style="width: 596px; height: auto">
                        <tr>
                            <td style="width: 364px">
                                回贴人：</td>
                            <td style="width: 500px">
                                <asp:Label ID="Label5" runat="server"></asp:Label></td>
                            <td style="width: 504px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 364px">
                                回复标题：</td>
                            <td style="width: 500px">
                                <asp:TextBox ID="TextBox1" runat="server" Width="375px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    Display="Dynamic" ErrorMessage="*" ValidationGroup="t"></asp:RequiredFieldValidator></td>
                            <td style="width: 504px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 364px">
                                回复内容：</td>
                            <td style="width: 500px">
                                <asp:TextBox ID="TextBox2" runat="server" Height="122px" TextMode="MultiLine" Width="378px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                    Display="Dynamic" ErrorMessage="*" ValidationGroup="t"></asp:RequiredFieldValidator></td>
                            <td style="width: 504px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 364px">
                            </td>
                            <td style="width: 500px">
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="回复" ValidationGroup="t" /></td>
                            <td style="width: 504px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 364px; height: 21px;">
                            </td>
                            <td style="width: 500px; height: 21px;">
                            </td>
                            <td style="width: 504px; height: 21px;">
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

