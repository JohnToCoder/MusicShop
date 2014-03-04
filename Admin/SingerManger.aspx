<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="SingerManger.aspx.cs" Inherits="Admin_SingerManger" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="#fbd79f" border="0" cellpadding="0" cellspacing="1" style="height: 138px"
        width="100%">
        <!--DWLayoutTable-->
        <tr>
            <td align="center" bgcolor="#ccffff" colspan="5" style="height: 24px" valign="middle">
                <span style="background-color: #fff5e1">歌手信息管理</span></td>
        </tr>
        <tr>
            <td align="left" bgcolor="#fff5e1" colspan="5" style="height: 72px" valign="middle">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                    GridLines="Vertical" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
                    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="100%">
                    <Columns>
                        <asp:TemplateField HeaderText="歌手姓名">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("name") %>' Width="60"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server"><%# Eval("name")%></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
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
            <td bgcolor="#fff5e1" colspan="5" height="20">
                &nbsp;<table id="Table1" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="width: 90px; height: 24px">
                            姓名*</td>
                        <td style="width: 232px; height: 24px">
                            <asp:TextBox ID="txtname" runat="server" Width="216px"></asp:TextBox></td>
                        <td style="width: 232px; height: 24px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
                            <asp:Label ID="LabelWarningMessage" runat="server"></asp:Label></td>
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

