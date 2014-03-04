<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MusicAlbumList.aspx.cs" Inherits="MusicAlbumList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width: 100%">
        <tr>
            <td align="left" style="width: 100%">
                <asp:DataList ID="DataList4" runat="server" RepeatColumns="4" Width="100%">
                    <ItemTemplate>
                    
                        <font face="宋体">
                        <a href='<%# "AlbumList.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'>
                                            <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.Pic") %>'
                                                Width="120px" /></a> 
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "AlbumList.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'
                                Text='<%# DataBinder.Eval(Container, "DataItem.name") %>' Width="148px"></asp:HyperLink></font>
                                <br />
                                   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "SCbum.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'
                                Text='收藏该专辑' Width="148px"></asp:HyperLink>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
    </table>
</asp:Content>

