<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AlbumManger.aspx.cs" Inherits="Admin_AlbumManger" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="#fbd79f" border="0" cellpadding="0" cellspacing="1" style="height: 138px"
        width="100%">
        
        <tr>
            <td align="center" bgcolor="#ccffff" colspan="5" style="height: 24px" valign="middle">
                <span style="background-color: #fff5e1">专辑信息管理</span></td>
        </tr>
        <tr>
            <td align="left" bgcolor="#fff5e1" colspan="5" style="height: 72px" valign="middle">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                    GridLines="Vertical" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
                    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="100%">
                    <Columns>
                        <asp:TemplateField HeaderText="类别名称">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("name") %>' Width="60"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server"><%# Eval("name")%></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="歌手">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPerson" runat="server" Text='<%# Eval("Person") %>' Width="60"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Person" runat="server"><%# Eval("Person")%></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="专辑描述">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtds" runat="server" Text='<%# Eval("ds") %>' Width="60"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="ds" runat="server"><%# Eval("ds")%></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                          
                        <asp:TemplateField HeaderText="修改">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ModifyAlbum.aspx?id="+Eval("id") %>'
                                    Text="修改"></asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <AlternatingRowStyle BackColor="Gainsboro" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td bgcolor="#fff5e1" colspan="5" height="20" align="left">
                &nbsp;<table id="Table1" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="width: 90px; height: 25px">
                            名称*</td>
                        <td style="width: 232px; height: 25px" align="left">
                            <asp:TextBox ID="txtname" runat="server" Width="90px"></asp:TextBox></td>
                        <td style="width: 232px; height: 25px">
                            &nbsp;<asp:Label ID="LabelWarningMessage" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 25px">
                            歌手：</td>
                        <td align="left" style="width: 232px; height: 25px">
                            <asp:TextBox ID="TextBox1" runat="server" Width="90px"></asp:TextBox></td>
                        <td style="width: 232px; height: 25px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 25px">
                            专辑图片：</td>
                        <td align="left" colspan="2" style="height: 25px">
                            <asp:Image ID="Image1" runat="server" Width="126px" /><asp:TextBox ID="pic" runat="server"
                                CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input id="file1"
                                    runat="server" class="inputBox" style="width: 141px" type="file" /><asp:Button ID="Button3"
                                        runat="server" OnClick="Button3_Click" Text="上传图片" />
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 25px">
                            专辑描述：</td>
                        <td colspan="2" style="height: 25px">
                            <asp:TextBox ID="TextBox2" runat="server" Width="447px" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 25px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 15px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

