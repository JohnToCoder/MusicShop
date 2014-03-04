<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Musitype.aspx.cs" Inherits="Musitype" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left" style="width: 100%">
                <asp:DataList ID="DataList4" runat="server" RepeatColumns="4" Width="100%" >
                    <ItemTemplate>
                        <font face="宋体">
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "MusiTypeList.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'
                                Text='<%# DataBinder.Eval(Container, "DataItem.name") %>' Width="148px"></asp:HyperLink></font>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
    </table>
</asp:Content>

