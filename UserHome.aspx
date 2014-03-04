<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" style="width: 100%">
                欢迎<asp:Label ID="Label1" runat="server"></asp:Label>您光临
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100%; height: 21px;">
                
           
                <asp:LinkButton
                    ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">在线购买金币</asp:LinkButton>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
 
             </td>
        </tr>
        <tr>
            <td align="center" style="width: 100%">
                您目前具有的金币数量为：<asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" style="width: 100%; background-color: #6699ff;">
                您收藏的专辑</td>
        </tr>
        <tr>
            <td align="left" style="width: 100%">
                <asp:DataList ID="DataList4" runat="server" RepeatColumns="6" Width="100%">
                    <ItemTemplate>
                        <font face="宋体">
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "AlbumList.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'
                                Text='<%# DataBinder.Eval(Container, "DataItem.name") %>' Width="148px"></asp:HyperLink></font>
                       
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td align="left" style="width: 100%; ">
                </td>
        </tr>
        <tr>
            <td align="center" style="width: 100%; background-color: #3399ff">
                收藏的歌曲</td>
        </tr>
        <tr>
            <td align="left" style="width: 100%; ">
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="6" Width="100%">
                    <ItemTemplate>
                        <font face="宋体">
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "MusicInfo.aspx?id="+DataBinder.Eval(Container, "DataItem.MusidId") %>'
                                Text='<%# DataBinder.Eval(Container, "DataItem.MusicName") %>' Width="148px"></asp:HyperLink></font>
                    
                          
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        
    </table>
</asp:Content>

