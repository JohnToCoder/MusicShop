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
                    <PagerSettings FirstPageText="��ҳ" LastPageText="βҳ" Mode="NextPreviousFirstLast"
                        NextPageText="��һҳ" PageButtonCount="12" PreviousPageText="��һҳ" />
                    <RowStyle HorizontalAlign="Left" />
                    <Columns>
                        <asp:TemplateField HeaderText="��������">
                            <ItemTemplate>
                                <asp:Label ID="title" runat="server" Text='<%# Bind("name") %>' Width="255px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="����ר��">
                            <ItemTemplate>
                                <asp:Label ID="Album" runat="server" Text='<%# Bind("Album") %>' Width="234px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="�������">
                            <ItemTemplate>
                                <asp:Label ID="TypeName" runat="server" Text='<%# Bind("TypeName") %>' Width="130px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="����">
                            <ItemTemplate>
                                <asp:Label ID="Singer" runat="server" Text='<%# Bind("Singer") %>' Width="130px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                         
                        
                        <asp:TemplateField HeaderText="�޸�">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ModifyMusic.aspx?id="+Eval("id") %>'
                                    Text="�޸�"></asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ɾ��" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                    OnClientClick="return confirm('ȷ��Ҫɾ����')" Text="ɾ��" Width="71px"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerTemplate>
                        <table border="0" width="100%">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">��ҳ </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                        CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">��һҳ </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">��һҳ </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">βҳ </asp:LinkButton>
                                    ��
                                    <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>ҳ
                                    ��
                                    <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>ҳ
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
