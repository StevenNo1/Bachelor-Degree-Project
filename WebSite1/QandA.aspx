<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="QandA.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br/>
    <div>
        <br/>
        <asp:Label ID="Label1" runat="server" Text="商品賣場問題" style="font-size: x-large"></asp:Label>
        <br/>
        <div class="jumbotron">
            <asp:Label ID="Label6" runat="server" Text="Q1.如何開設商品賣場?" style="font-size: large"></asp:Label>
            <br/>
            <asp:Label ID="Label7" runat="server" Text="A1.登入會員之後，點選上方的我的Mymine→開設商品賣場" style="font-size: large"></asp:Label>
            <br/>
            <br/>
            <asp:Label ID="Label8" runat="server" Text="Q2.有什麼不能刊登的商品嗎?" style="font-size: large"></asp:Label>
            <br/>
            <asp:Label ID="Label9" runat="server" Text="A2.有的，除了非法的毒品槍械外，部分藥品和化妝品也是無法刊登的喔(詳見藥事法)，如果刊登遭檢舉或警方調查本站不負一切責任，且予以下架。" style="font-size: large"></asp:Label>
            <br/>
        </div>
    </div>
    <br/>
    <div>
        <br/>
        <asp:Label ID="Label2" runat="server" Text="交易問題" style="font-size: x-large"></asp:Label>
        <br/>
        <div class="jumbotron">
            <asp:Label ID="Label10" runat="server" Text="Q1.付款方式有哪些?" style="font-size: large"></asp:Label>
            <br/>
            <asp:Label ID="Label11" runat="server" Text="A1.您可以選擇線上刷卡或是貨到時支付現金的方式" style="font-size: large"></asp:Label>
            <br/>
            <br/>
            <asp:Label ID="Label12" runat="server" Text="Q2.商品的實際內容與我想的不符，有退貨的保障嗎?" style="font-size: large"></asp:Label>
            <br/>
            <asp:Label ID="Label13" runat="server" Text="A2.有的，如果您有退貨的需要，可以至客服中心填寫資料，本站會為您處理退貨事項。" style="font-size: large"></asp:Label>
            <br/>
        </div>
    </div>
    <br/>
    <div>
        <br/>
        <asp:Label ID="Label3" runat="server" Text="直播問題" style="font-size: x-large"></asp:Label>
        <br/>
        <div class="jumbotron">
            <asp:Label ID="Label14" runat="server" Text="Q1.如何開設直播?" style="font-size: large"></asp:Label>
            <br/>
            <asp:Label ID="Label15" runat="server" Text="A1.登入會員之後，點選上方的我的Mymine→開設商品賣場。" style="font-size: large"></asp:Label>
            <br/>
            <br/>
            <asp:Label ID="Label16" runat="server" Text="Q2.有甚麼特殊限制嗎? 任何人都可以開直播嗎?" style="font-size: large"></asp:Label>
            <br/>
            <asp:Label ID="Label17" runat="server" Text="A2.僅接受Facebook作為直播平台，並將直播貼文設定公開，方能擷取嵌入語法。" style="font-size: large"></asp:Label>
            <br/>
        </div>
    </div>
    <br/>
    <div>
        <br/>
        <asp:Label ID="Label5" runat="server" Text="還有問題嗎？試著跟我們線上客服聯繫吧。" style="font-size: x-large"></asp:Label>
        <br/>
        <br/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Contact.aspx" style="font-size: large">前往客服中心</asp:HyperLink>
    </div>
</asp:Content>

