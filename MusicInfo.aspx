<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MusicInfo.aspx.cs" Inherits="MusicInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="#fbd79f" border="0" cellpadding="0" cellspacing="1" height="280"
        width="100%">
        <!--DWLayoutTable-->
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 24px" valign="middle">
                歌曲名称:</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 24px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 24px" valign="middle">
                <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 23px" valign="middle">
                歌曲类别：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 23px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 23px" valign="middle">
                <asp:Label ID="lblType" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 23px" valign="middle">
                歌曲时间：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 23px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 23px" valign="middle">
                <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 23px" valign="middle">
                歌手：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 23px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 23px" valign="middle">
                <asp:Label ID="lblgeshou" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 22px" valign="middle">
                所属专辑：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 22px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 22px" valign="middle">
                <asp:Label ID="lblzhuanji" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 22px" valign="middle">
                音乐海报：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 22px" valign="middle">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 22px" valign="middle">
                <asp:Image ID="Image1" runat="server" Width="156px" /></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px; height: 129px;" valign="middle">
                内容描述</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 129px;" valign="top">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" valign="top" style="height: 129px">
                <asp:Label ID="lblContent" runat="server" Height="130px" Text="Label" Width="692px"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px" valign="middle">
                下载歌曲：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px" valign="top">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" valign="top">
      
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="点击下载" />
                <input id="Hidden1" runat="server" type="hidden" />下载歌曲将使用5个金币</td>
        </tr> 
        <tr>
            <td align="right" bgcolor="#fff5e1" style="width: 317px" valign="middle">
                收藏该歌曲：</td>
            <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px" valign="top">
            </td>
            <td align="left" bgcolor="#fff5e1" colspan="3" valign="top">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="收藏歌曲" /></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#fff5e1" height="20" style="width: 317px" valign="middle">
                在线试听：&nbsp;</td>
            <td bgcolor="#fff5e1" colspan="1" height="20" style="width: 2px">
            </td>
            <td bgcolor="#fff5e1" colspan="3" height="20">
                <a href=play.aspx?id=<%=id %> >歌曲试听</a>
                
                
                </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#fff5e1" colspan="5" height="20" valign="middle">
                歌曲评论</td>
        </tr>
        <tr>
            <td align="left" bgcolor="#fff5e1" colspan="5" height="20" valign="middle">
                <asp:DataList ID="DataList1" runat="server" 
                    RepeatColumns="1" Width="100%">
                    <ItemTemplate>
                        <div>
                            用户：<%#(Eval("AddUserName"))%>
                            评论时间：<%#(Eval("Addtime" ,"{0:d}"))%></div>
                        <div style="width: 744px;">
                            <%#(Eval("Comments"))%>
                        </div>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td align="left" bgcolor="#fff5e1" colspan="5" height="20" valign="middle">
                用户：<asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" bgcolor="#fff5e1" colspan="5" height="20" valign="middle">
                评论：<asp:TextBox ID="txtContent" runat="server" Height="75px" TextMode="MultiLine"
                    Width="724px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#fff5e1" colspan="5" height="20" valign="middle">
                &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="评论" />
                
                【欢迎评论歌曲——评论歌曲赠送2个金币】</td>
        </tr>
    </table>
</asp:Content>

