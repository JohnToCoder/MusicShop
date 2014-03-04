<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="zhuti.aspx.cs" Inherits="Admin_zhuti" Title="Untitled Page" %>
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
                论坛管理 &gt;&gt;帖子管理<a href="#"></a></td>
        </tr>
    </table>
    <table border="0" cellpadding="3" style="border-right: #fe0000 1px solid; border-top: #fe0000 1px solid;
        border-left: #fe0000 1px solid; border-bottom: #fe0000 1px solid; background-color: #eeeeee"
        width="100%">
        <tr>
            <td align="center" colspan="2" style="height: 19px">
                <asp:GridView ID="NewsGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="0px"
                    CellPadding="4" CellSpacing="2" DataKeyNames="id" ForeColor="Black" OnPageIndexChanging="NewsGridView_PageIndexChanging"
                    OnRowDeleting="NewsGridView_RowDeleting" PageSize="15" Width="98%">
                    <PagerSettings Mode="NumericFirstLast" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <RowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="PostTitle" HeaderText="论坛主题" HtmlEncode="False">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="发帖人">
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "UserID")%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="PostTime" HeaderText="发帖时间" HtmlEncode="False" />
                        <asp:TemplateField HeaderText="详细">
                            <ItemTemplate>
                                <a href='../Reply.aspx?id=<%#DataBinder.Eval(Container.DataItem,"id")%>' target="_blank">
                                    详细</a> &nbsp;
                                <asp:ImageButton ID="delBtn" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"id")%>'
                                    CommandName="delete" ImageUrl="images/del.gif" ToolTip="删除" />
                            </ItemTemplate>
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="LightGray" Font-Bold="True" ForeColor="Black" />
                </asp:GridView>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
    </table>
</asp:Content>