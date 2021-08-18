<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h1>客服中心</h1>
        <br/>
        <h4>遇到什麼問題了嗎?跟我說明您的問題。</h4>
        <br/>
        <asp:Label ID="Label2" runat="server" Text="主旨*："></asp:Label>
        <asp:TextBox ID="main" runat="server"></asp:TextBox>
        <br/>
        <br/>
                <asp:Label ID="Label3" runat="server" Text="問題種類*："></asp:Label><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>請選擇</asp:ListItem>
            <asp:ListItem>交易問題</asp:ListItem>
            <asp:ListItem>開設賣場問題</asp:ListItem>
            <asp:ListItem>開設直播問題</asp:ListItem>
            <asp:ListItem>舉報不法會員</asp:ListItem>
            <asp:ListItem>其他</asp:ListItem>
        </asp:DropDownList>
        <br/>
        <br/>
        <p><asp:Label ID="Label1" runat="server" Text="內容*："></asp:Label></p>
        <asp:TextBox ID="detail" runat="server" Height="321px" TextMode="MultiLine" Width="100%" AutoCompleteType="Search"></asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="Label5" runat="server" Text="附件："></asp:Label>
        <br/>
        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
        <br/>
        <asp:Label ID="Label6" runat="server" Text="您可以上傳說明圖片，檔案大小不得超過5Mb，接受格式:jpg.jpeg.bmp.png"></asp:Label>
        <br/>
        <br/>

        <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" />
    
    </div>
</asp:Content>
