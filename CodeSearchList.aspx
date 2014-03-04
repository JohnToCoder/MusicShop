<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CodeSearchList.aspx.cs" Inherits="CodeSearchList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td align="left" style="width: 100%">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
                    Width="771px">
                    <ItemTemplate>
                        <font face="宋体">
                            <table id="Table8" runat="server" border="0" cellpadding="1" cellspacing="0" style="width: 193px">
                                <tr>
                                    <td align="center" style="height: 28px">
                                        <font face="宋体"><a href='<%# "MusicInfo.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'>
                                            <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.pic") %>'
                                                Width="120px" /></a> </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <font face="宋体">
                                            <asp:Label ID="Label1" runat="server" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'
                                                Width="187px"></asp:Label></font></td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <font face="宋体">歌手:
                                            <asp:Label ID="Label2" runat="server" Height="16px" Text='<%# DataBinder.Eval(Container, "DataItem.Singer ") %>'
                                                Width="63px">
																			</asp:Label></font></td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <font face="宋体">歌曲类别:
                                            <asp:Label ID="Label3" runat="server" Height="16px" Text='<%# DataBinder.Eval(Container, "DataItem.TypeName ") %>'
                                                Width="63px">
																			</asp:Label></font></td>
                                </tr>
                            </table>
                        </font>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%;
                height: 38px">
                共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; 当前第【<asp:Label
                    ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
                <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                &nbsp; &nbsp;
                <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                &nbsp;&nbsp;
                <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="width: 541px; height: 8px">
                <img src="images/middle_xwrd_bg3.gif" style="width: 745px; height: 5px" /></td>
        </tr>
    </table>
</asp:Content>

