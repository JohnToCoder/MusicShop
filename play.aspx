<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="play.aspx.cs" Inherits="play" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" style="width: 773px">
        <tr>
            <td colspan="4" rowspan="1" style="height: 95px; text-align: center">

<object classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6" id="Object1" style="width: 417px; height: 105px">
                                <param name="URL" value="<%=downPath %>" />
                                <param name="FileName" value="<%=Fname%>" />
                                <param name="volume" value="100"/>
                                <param name="autoStart" value="1"/>
                                <param name="playCount" value="100"/>
                                <param name="enablecontextmenu" value="0"/>
                                <param name="enableerrordialogs" value="0"/>
                            </object>
                &nbsp;</td>
        </tr>
    </table>
    <!--播放器-->


</asp:Content>

