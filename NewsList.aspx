<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsList.aspx.cs" Inherits="NewsList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tbody>
            <tr>
                <td align="left"   style="width: 100%">
                    <asp:datalist id="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="1" Width="774px" >
													<ItemTemplate>
													
															<TABLE id="Table8" cellSpacing="0" cellPadding="1" border="0" runat="server" style="width: 748px">
															
																<TR>
																	<TD align="left" style="width: 604px">
																		   <img height="14" src="images/items.gif" width="16" />	<asp:HyperLink id=HyperLink1 runat="server" NavigateUrl='<%# "NewsInfo.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'><%# DataBinder.Eval(Container, "DataItem.name") %></asp:HyperLink></TD>
                                                                    <td align="center" style="width: 142px">
                                                                    <asp:Label id=Label2 runat="server" Width="112px" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.Addtime") %>'>
																			</asp:Label>
                                                                    
                                                                    </td>
																</TR>
															
															</TABLE>
														
													</ItemTemplate>
												</asp:datalist></td>
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
        </tbody>
    </table>
</asp:Content>

