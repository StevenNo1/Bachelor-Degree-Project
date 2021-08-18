<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeFile="sellerUpdate.aspx.cs" Inherits="sellerUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
            <br>
            <br>
            <br>
        <asp:Label ID="Label1" runat="server" Text="開設我的賣場" style="font-size: x-large"></asp:Label>
            <br>
            <br>
            <br>    
            <table style="width:100%">
                <tr>
                    <td style="width: 25%" class="text-right">商品名稱：</td>
                    <td>
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">上傳圖片：</td>
                    <td>
                        <asp:FileUpload ID="picture" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 22px; width: 25%;" class="text-right">&nbsp;</td>
                    <td style="height: 22px">
                        &nbsp;</td>
                    <td style="height: 22px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 22px; width: 25%;" class="text-right">商品種類：</td>
                    <td style="height: 22px">
                        <asp:DropDownList ID="type" runat="server">
                            <asp:ListItem>請選擇</asp:ListItem>
                            <asp:ListItem>女生衣著</asp:ListItem>
                            <asp:ListItem>男生衣著</asp:ListItem>
                            <asp:ListItem>美妝保健</asp:ListItem>
                            <asp:ListItem>手機平板與周邊</asp:ListItem>
                            <asp:ListItem>嬰幼童與母親</asp:ListItem>
                            <asp:ListItem>3C相關</asp:ListItem>
                            <asp:ListItem>家居生活</asp:ListItem>
                            <asp:ListItem>家電影音</asp:ListItem>
                            <asp:ListItem>女生配件</asp:ListItem>
                            <asp:ListItem>男生配件</asp:ListItem>
                            <asp:ListItem>女生包包精品</asp:ListItem>
                            <asp:ListItem>戶外與運動精品</asp:ListItem>
                            <asp:ListItem>美食伴手禮</asp:ListItem>
                            <asp:ListItem>汽機車零件百貨</asp:ListItem>
                            <asp:ListItem>寵物</asp:ListItem>
                            <asp:ListItem>娛樂、收藏</asp:ListItem>
                            <asp:ListItem>服務、票卷</asp:ListItem>
                            <asp:ListItem>遊戲王</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="height: 22px"></td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">價格：</td>
                    <td>
                        <asp:TextBox ID="price" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 22px; width: 25%" class="text-right">數量：</td>
                    <td style="height: 22px">
                        <asp:TextBox ID="stock" runat="server"></asp:TextBox>
                    </td>
                    <td style="height: 22px"></td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">商品介紹：</td>
                    <td>
                        <asp:TextBox ID="Introduction" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">專屬會員：</td>
                    <td>
                        <asp:TextBox ID="only" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">&nbsp;</td>
                    <td class="text-left">
                        (輸入表示只有該會員可購買)</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">&nbsp;</td>
                    <td class="text-left">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-right">&nbsp;</td>
                    <td class="text-left">
                <asp:Button ID="Button1" runat="server" Text="上傳" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <div class="text-left">
            </div>
    </div>
</asp:Content>
