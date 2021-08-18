<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br/>
    <br/>
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="height: 20px; "><span style="font-size: x-large">帳號：</span><asp:Label ID="SessionMID" runat="server" style="font-size: x-large">></asp:Label>
                    　　<span style="font-size: x-large">　評價分數：<asp:Label ID="score" runat="server" Text="&gt;"></asp:Label>
                    / 5 分</span></td>
                <td style="height: 20px; width: 50%;">
                    <a href="../Streaming/CreateStream.aspx" class="btn btn-primary btn-lg">開設我的直播　 &raquo;</a>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px">&nbsp;</td>
                <td style="height: 20px; width: 50%;">&nbsp;</td>
                <td style="height: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px">
                    <a href="../Member/BuyerSearchTransactions.aspx" class="btn btn-primary btn-lg">我購買的商品　 &raquo;</a>
                </td>
                <td style="height: 20px; width: 50%;">
                    <a href="../Member/Mystreaming.aspx" class="btn btn-primary btn-lg">我的直播紀錄　 &raquo;</a>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px"></td>
                <td style="height: 20px; width: 50%;"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px">
                    <a href="../Member/SellerSearchTransactions.aspx" class="btn btn-primary btn-lg">我的訂單　　　 &raquo;</a>
               
                </td>
                <td style="height: 20px; width: 50%;">
                    <a href="../Member/Mycontact.aspx" class="btn btn-primary btn-lg">我的客服紀錄　 &raquo;</a>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px">&nbsp;</td>
                <td style="height: 20px; width: 50%;"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px">
                     <a href="../Product/sellerUpdate.aspx" class="btn btn-primary btn-lg">開設商品賣場　 &raquo;</a>
                </td>
                <td style="height: 20px; width: 50%;">
                    <a href="../Member/Myeva.aspx" class="btn btn-primary btn-lg">我的評價　　　 &raquo;</a>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px"></td>
                <td style="height: 20px; width: 50%;"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px">
                    <a href="../Product/SearchSellingProduct.aspx" class="btn btn-primary btn-lg">我的商品賣場　 &raquo;</a></td>
                <td style="height: 20px; width: 50%;">
                    <a href="../Member/justforme.aspx" class="btn btn-primary btn-lg">我的專屬賣場　 &raquo;</a>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px">&nbsp;</td>
                <td style="height: 19px; width: 50%;">&nbsp;</td>
                <td style="height: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px">
                    <a href="../Member/Cart.aspx" class="btn btn-primary btn-lg">我的購物車　　 &raquo;</a>
                </td>
                <td style="height: 20px; width: 50%;">
                    <a href="../Member/myjustfor.aspx" class="btn btn-primary btn-lg">開設的專屬賣場 &raquo;</a>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px">&nbsp;</td>
                <td style="height: 20px">&nbsp;</td>
                <td style="height: 20px">&nbsp;</td>
            </tr>
            </table>
    </div>
</asp:Content>

