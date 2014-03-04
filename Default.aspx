<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0"
        height="300" width="776">
        <tr>
            <td align="middle" background="images/leftbg.gif" valign="top" width="181">
                <table background="images/lefttitle.gif" border="0" cellpadding="0" cellspacing="0"
                    height="31" style="color: #0000ff; text-decoration: underline" width="181">
                    <tr>
                        <td width="20">
                            &nbsp;</td>
                        <td>
                            用户登录</td>
                    </tr>
                </table>
                <table border="0" cellpadding="0" cellspacing="8" height="90" width="100%">
                    <tr>
                        <td style="width: 169px" valign="top">
                            <table id="TABLE1" runat="server" cellpadding="0" cellspacing="0" height="174">
                                <tr>
                                    <td style="width: 316px; height: 90px" valign="top">
                                        <table cellpadding="0" cellspacing="0" height="123" style="width: 174px">
                                            <tr>
                                                <td style="height: 133px">
                                                    <table cellpadding="0" cellspacing="0" height="120" style="width: 170px">
                                                        <tr>
                                                            <td align="center" class="huicu" style="width: 87px; height: 29px;">
                                                                用户：</td>
                                                            <td align="left" width="70" style="height: 29px">
                                                                <asp:TextBox ID="txtMName" runat="server" Width="120px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" class="huicu" style="width: 87px">
                                                                密码：</td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtMPwd" runat="server" TextMode="Password" Width="120px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" class="huicu" style="width: 87px">
                                                                验证码：</td>
                                                            <td align="left">
                                                                <asp:TextBox ID="TextBox3" runat="server" Width="80px"></asp:TextBox>
                                                                <asp:Image ID="Image1" runat="server" ImageUrl="VaildImg.aspx" onclick="this.src=this.src+'?'" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="2">
                                                                <a href="#"></a>
                                                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/an2.gif" OnClick="ImageButton1_Click" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="2" style="height: 19px">
                                                                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#00C0C0" OnClick="LinkButton1_Click">注册</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table id="table2" runat="server" cellpadding="0" cellspacing="0" class="huicu" height="174"
                                visible="false">
                                <tr>
                                    <td height="16" style="width: 348px" valign="top">
                                        <table cellpadding="0" cellspacing="0" height="123" style="width: 107px">
                                            <tr>
                                                <td style="text-align: center">
                                                    <table style="width: 157px">
                                                        <tr>
                                                            <td class="huicu" style="text-align: center">
                                                                欢迎<asp:Label ID="MName" runat="server" ForeColor="#FF8000" Width="107px"></asp:Label>光临！</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="huicu" style="height: 16px; text-align: center">
                                                                <asp:LinkButton ID="lbtnLogout" runat="server" Font-Underline="False" ForeColor="Black"
                                                                    OnClick="lbtnLogout_Click" Width="96px">注销</asp:LinkButton>
                                                                <asp:HyperLink ID="hlinkEdit" runat="server" Font-Underline="False" ForeColor="Black"
                                                                    NavigateUrl="EditMInfo.aspx" Width="90px">更新信息</asp:HyperLink></td>
                                                            <td style="height: 16px">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="6" style="width: 348px">
                                    </td>
                                </tr>
                            </table>

                            <script src="images/loginform.htm"></script>

                        </td>
                    </tr>
                </table>
                <table bgcolor="#d2d2d2" border="0" cellpadding="0" cellspacing="0" height="1" width="100%">
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
                <table background="images/lefttitle1.gif" border="0" cellpadding="0" cellspacing="0"
                    height="31" width="181">
                    <tr>
                        <td width="20">
                            &nbsp;</td>
                        <td align="center">
                            音乐类别</td>
                    </tr>
                </table>
                <table border="0" cellpadding="0" cellspacing="1" height="90" width="100%">
                    <tr>
                        <td align="center" valign="top">
                            <p>
                                <asp:DataList ID="DataList4" runat="server" RepeatColumns="1" Width="97%">
                                    <ItemTemplate>
                                        <font face="宋体">
                                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "MusiTypeList.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'
                                                Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'>
																				</asp:HyperLink></font>
                                    </ItemTemplate>
                                </asp:DataList>&nbsp;</p>
                        </td>
                    </tr>
                </table>
                <table background="images/lefttitle1.gif" border="0" cellpadding="0" cellspacing="0"
                    height="31" width="181">
                    <tr>
                        <td width="20">
                            &nbsp;</td>
                        <td align="center">
                            专辑列表</td>
                    </tr>
                </table>
                <table border="0" cellpadding="0" cellspacing="1" height="90" width="100%">
                    <tr>
                        <td align="center" valign="top">
                            <p>
                                <asp:DataList ID="DataList5" runat="server" RepeatColumns="1" Width="98%">
                                    <ItemTemplate>
                                        <font face="宋体">
                                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "AlbumList.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'
                                                Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'>
																				</asp:HyperLink></font>
                                    </ItemTemplate>
                                </asp:DataList>&nbsp;</p>
                        </td>
                    </tr>
                </table>
                
                 <table background="images/lefttitle1.gif" border="0" cellpadding="0" cellspacing="0"
                    height="31" width="181">
                    <tr>
                        <td width="20">
                            &nbsp;</td>
                        <td align="center">
                            歌手列表</td>
                    </tr>
                </table>
                <table border="0" cellpadding="0" cellspacing="1" height="90" width="100%">
                    <tr>
                        <td align="center" valign="top">
                            <p>
                                <asp:DataList ID="DataList6" runat="server" RepeatColumns="1" Width="97%">
                                    <ItemTemplate>
                                        <font face="宋体">
                                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "SingerList.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'
                                                Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'>
																				</asp:HyperLink></font>
                                    </ItemTemplate>
                                </asp:DataList>&nbsp;</p>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="color: #0000ff; text-decoration: underline" valign="top" width="12">
                &nbsp;</td>
            <td valign="top">
                <table border="0" cellpadding="0" cellspacing="0" height="160" width="100%">
                    <tr>
                        <td style="border-right: #d2d2d2 1px solid; border-top: #d2d2d2 1px solid;
                            border-left: #d2d2d2 1px solid; width: 1208px; border-bottom: #d2d2d2 1px solid; height: 196px;"
                            valign="top">
                            <table background="images/tbg.jpg" border="0" cellpadding="0" cellspacing="0" height="26"
                                width="100%">
                                <tr>
                                    <td align="middle" width="35">
                                        <img height="12" src="images/sp.gif" width="5" /></td>
                                    <td class="fontg">
                                        <p>
                                            本站公告</p>
                                    </td>
                                    <td align="middle" class="fontg" width="50">
                                        <a href="newslist.aspx">
                                            <img border="0" height="15" src="images/more.gif" width="53" /></a></td>
                                </tr>
                            </table>
                            <table bgcolor="#d2d2d2" border="0" cellpadding="0" cellspacing="0" height="1" style="width: 100%">
                                <tr>
                                    <td style="height: 19px">
                                    </td>
                                </tr>
                            </table>

                                        <asp:DataList ID="Datalist3" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
                                            Width="585px">
                                            <ItemTemplate>
                                                <table id="Table8" runat="server" border="0" cellpadding="1" cellspacing="0" style="width: 553px">
                                                    <tr>
                                                        <td align="left" style="width: 604px; height: 22px;">
                                                            <img height="14" src="images/items.gif" width="16" />
                                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "NewsInfo.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'><%# DataBinder.Eval(Container, "DataItem.name") %></asp:HyperLink></td>
                                                        <td align="center" style="width: 142px; height: 22px;">
                                                            <asp:Label ID="Label2" runat="server" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.Addtime") %>'
                                                                Width="112px">
																			</asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList></td>
                        <td style="width: 13px; height: 196px;" valign="top">
                        </td>
                    </tr>
                </table>
                <table border="0" cellpadding="0" cellspacing="0" height="5" width="100%">
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" height="34" width="100%">
                                <tr>
                                    <td bgcolor="#ffffff" style="height: 49px">
                                        <table border="0" cellpadding="0" cellspacing="0" height="160" width="100%">
                                            <tr>
                                                <td style="border-right: #d2d2d2 1px solid; border-top: #d2d2d2 1px solid;
                                                    border-left: #d2d2d2 1px solid; width: 1208px; border-bottom: #d2d2d2 1px solid; height: 477px;"
                                                    valign="top">
                                                    <table background="images/tbg.jpg" border="0" cellpadding="0" cellspacing="0" height="26"
                                                        width="100%">
                                                        <tr>
                                                            <td align="middle" width="35">
                                                                <img height="12" src="images/sp.gif" width="5" /></td>
                                                            <td class="fontg">
                                                                <p>
                                                                    最新音乐</p>
                                                            </td>
                                                            <td align="middle" class="fontg" width="50">
                                                                <a href="NewMusicList.aspx">
                                                                    <img border="0" height="15" src="images/more.gif" width="53" /></a></td>
                                                        </tr>
                                                    </table>
                                                    <table bgcolor="#d2d2d2" border="0" cellpadding="0" cellspacing="0" height="1" width="100%">
                                                        <tr>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table border="0" cellpadding="0" cellspacing="1" height="130" width="100%">
                                                        <tr>
                                                            <td style="padding-left: 6px; width: 645px; padding-top: 6px; height: 266px" valign="top">
                                                                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
                                                                    Width="580px">
                                                                    <ItemTemplate>
                                                                        <font face="宋体">
                                                                            <table id="Table8" runat="server" border="0" cellpadding="1" cellspacing="0" style="width: 132px">
                                                                                <tr>
                                                                                    <td align="center" style="height: 28px">
                                                                                        <font face="宋体"><a href='<%# "MusicInfo.aspx?id="+DataBinder.Eval(Container, "DataItem.id") %>'>
                                                                                            <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.pic") %>'
                                                                                                Width="120px" /></a> </font>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center" style="height: 22px">
                                                                                        <font face="宋体">
                                                                                            <asp:Label ID="Label1" runat="server" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'
                                                                                                Width="129px"></asp:Label></font></td>
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
                                                    </table>
                                                </td>
                                                <td style="width: 13px; height: 477px;" valign="top">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" height="34" width="100%">
                                <tr>
                                    <td bgcolor="#ffffff" style="height: 49px">
                                        <table border="0" cellpadding="0" cellspacing="0" height="160" style="width: 100%">
                                            <tr>
                                                <td height="130" style="border-right: #d2d2d2 1px solid; border-top: #d2d2d2 1px solid;
                                                    border-left: #d2d2d2 1px solid; width: 1208px; border-bottom: #d2d2d2 1px solid"
                                                    valign="top">
                                                    <table background="images/tbg.jpg" border="0" cellpadding="0" cellspacing="0" height="26"
                                                        width="100%">
                                                        <tr>
                                                            <td align="middle" width="35">
                                                                <img height="12" src="images/sp.gif" width="5" /></td>
                                                            <td class="fontg">
                                                                <p>
                                                                    热门音乐</p>
                                                            </td>
                                                            <td align="middle" class="fontg" width="50">
                                                                <a href="HotMusicList.aspx">
                                                                    <img border="0" height="15" src="images/more.gif" width="53" /></a></td>
                                                        </tr>
                                                    </table>
                                                    <table bgcolor="#d2d2d2" border="0" cellpadding="0" cellspacing="0" height="1" width="100%">
                                                        <tr>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                                <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
                                                                    Width="587px">
                                                                    <ItemTemplate>
                                                                        <font face="宋体">
                                                                            <table id="Table8" runat="server" border="0" cellpadding="1" cellspacing="0" style="width: 164px">
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
                                                <td style="width: 13px" valign="top">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

