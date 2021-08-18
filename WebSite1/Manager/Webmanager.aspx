<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Webmanager.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br/>
    <div class="jumbotron">
        <br/>
        <asp:Label ID="SessionMID" runat="server" Text="管理員入口網站,歡迎" style="font-size: x-large"></asp:Label>
        <table style="width: 100%;">
            <tr>
                <td style="width: 240px">&nbsp;</td>
                <td style="width: 23%">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px" colspan="2"><a href="Replycontact.aspx" class="btn btn-primary btn-lg">處理客服案件 &raquo;</a></td>
                <td style="height: 20px">
                    <asp:Label ID="ContactCount" runat="server" Text="目前尚未處理的客服案件數目：" style="font-size: x-large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 240px">&nbsp;</td>
                <td style="width: 23%">&nbsp;</td>
                <td class="text-left">
                    <asp:Label ID="Count" runat="server" Text="Label" style="font-size: x-large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 20px" colspan="2"></td>
                <td style="height: 20px">
                    <asp:Label ID="Label1" runat="server" Text="請盡快至『處理客服案件』查看。" style="font-size: x-large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 240px; height: 20px;"></td>
                <td style="width: 23%; height: 20px;"></td>
                <td style="height: 20px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2"></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 240px; height: 20px;"></td>
                <td style="width: 23%; height: 20px;"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px" colspan="2"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 240px; height: 20px;"></td>
                <td style="width: 23%; height: 20px;"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px; " colspan="2"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px; width: 240px">&nbsp;</td>
                <td style="height: 20px; width: 23%;">&nbsp;</td>
                <td style="height: 20px">&nbsp;</td>
            </tr>
        </table>
        <br/>


    </div>
</asp:Content>

