<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CommentsManger.aspx.cs" Inherits="Admin_liuyan" Title="Untitled Page" %>
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
            <td align="left" colspan="2" nowrap="nowrap" style="height: 21px">
                评论信息管理</td>
        </tr>
    </table>
    <table border="0" cellpadding="3" cellspacing="1" style="border-right: #fe0000 1px solid;
        border-top: #fe0000 1px solid; border-left: #fe0000 1px solid; border-bottom: #fe0000 1px solid;
        background-color: #eeeeee" width="100%">
        <tr>
            <td align="center" colspan="2" style="height: 19px">
                <table border="0" cellpadding="0" cellspacing="0" style="border-right: #3399ff 0.1mm solid;
                    border-top: #3399ff 0.1mm solid; width: 100%; border-bottom: #3399ff 0.1mm solid">
                    <tr>
                        <td align="left" colspan="3" style="height: 132px" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
                                PageSize="12" Width="859px" DataKeyNames="id">
                                <RowStyle BackColor="#EFF3FB" />
                                <Columns>
                                   
                                  
                                    <asp:BoundField DataField="AddUserName" HeaderText="评论人" SortExpression="AddUserName" />
                                    <asp:BoundField DataField="Comments" HeaderText="评论内容" SortExpression="Comments" />
                                   
                                       <asp:CommandField ShowDeleteButton="True" />
                                    
 <asp:HyperLinkField HeaderText="评论歌曲" Text="评论歌曲" DataNavigateUrlFields="MusicId"  Target=_blank DataNavigateUrlFormatString="../MusicInfo.aspx?id={0}">
                                <ControlStyle Font-Underline="False" ForeColor="Black" />
                            </asp:HyperLinkField>  
                                </Columns>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connStr %>"
                                SelectCommand="SELECT * FROM [Comments] ORDER BY [id]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Comments] WHERE [id] = @id_id " OldValuesParameterFormatString="id_{0}" InsertCommand="INSERT INTO [Comments] ([MusicId], [Comments], [Addtime], [AddUserName]) VALUES (@MusicId, @Comments, @Addtime, @AddUserName)" UpdateCommand="UPDATE [Comments] SET [MusicId] = @MusicId, [Comments] = @Comments, [Addtime] = @Addtime, [AddUserName] = @AddUserName WHERE [id] = @id_id AND [MusicId] = @id_MusicId AND [Comments] = @id_Comments AND [Addtime] = @id_Addtime AND [AddUserName] = @id_AddUserName">
                                <DeleteParameters>
                                    <asp:Parameter Name="id_id" Type="Int32" />
                                    
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="MusicId" Type="Int32" />
                                    <asp:Parameter Name="Comments" Type="String" />
                                    <asp:Parameter Name="Addtime" Type="DateTime" />
                                    <asp:Parameter Name="AddUserName" Type="String" />
                                    <asp:Parameter Name="id_id" Type="Int32" />
                                    <asp:Parameter Name="id_MusicId" Type="Int32" />
                                    <asp:Parameter Name="id_Comments" Type="String" />
                                    <asp:Parameter Name="id_Addtime" Type="DateTime" />
                                    <asp:Parameter Name="id_AddUserName" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="MusicId" Type="Int32" />
                                    <asp:Parameter Name="Comments" Type="String" />
                                    <asp:Parameter Name="Addtime" Type="DateTime" />
                                    <asp:Parameter Name="AddUserName" Type="String" />
                                </InsertParameters>
                                
                              
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
    </table>
</asp:Content>

