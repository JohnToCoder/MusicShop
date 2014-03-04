<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="MusicList.aspx.cs" Inherits="Admin_MoveList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
        cellpadding="4" cellspacing="0" style="font-size: 12px; width: 100%">
        <tr>
            <td width="79%" align="left">
                <asp:GridView ID="gvFilms" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvFilms_PageIndexChanging"
                    OnRowDataBound="gvFilms_RowDataBound" OnRowDeleting="gvFilms_RowDeleting" PageSize="12"
                    Width="990px">
                    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                    <RowStyle HorizontalAlign="Left" />
                    <Columns>
                        <asp:TemplateField HeaderText="歌曲名称">
                            <ItemTemplate>
                                <asp:Label ID="title" runat="server" Text='<%# Bind("name") %>' Width="255px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="所属专辑">
                            <ItemTemplate>
                                <asp:Label ID="Album" runat="server" Text='<%# Bind("Album") %>' Width="234px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="歌曲类别">
                            <ItemTemplate>
                                <asp:Label ID="TypeName" runat="server" Text='<%# Bind("TypeName") %>' Width="130px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="歌手">
                            <ItemTemplate>
                                <asp:Label ID="Singer" runat="server" Text='<%# Bind("Singer") %>' Width="130px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                         
                        
                        <asp:TemplateField HeaderText="修改">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ModifyMusic.aspx?id="+Eval("id") %>'
                                    Text="修改"></asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="删除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                    OnClientClick="return confirm('确定要删除吗？')" Text="删除" Width="71px"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerTemplate>
                        <table border="0" width="100%">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                        CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                    共
                                    <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                    第
                                    <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                </td>
                                <td align="right" width="20%">
                                </td>
                            </tr>
                        </table>
                    </PagerTemplate>
                    <PagerStyle BackColor="#F6F6F6" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#F6F6F6" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <div align="center">
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></div>
            </td>
        </tr>
        <tr bgcolor="#4296e7">
            <td colspan="1">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

