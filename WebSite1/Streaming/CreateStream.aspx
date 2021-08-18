<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" validateRequest="false" AutoEventWireup="true" CodeFile="CreateStream.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
        <div>
    <h1>開設我的直播賣場</h1>
            <br />
            <br />
            開設方式<br />
            1.在Facebook中開設直播並設定公開&nbsp; →&nbsp; 2.點選直播貼文的右上角的‧‧‧ →&nbsp; 3.點選嵌入並將HTML語法貼到下面的窗框中<br />
        <br/>
        <asp:Label ID="Label1" runat="server" Text="直播標題(20字)*："></asp:Label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Facebook直播頁面的嵌入語法*："></asp:Label>
            <br />
        <asp:TextBox ID="url" runat="server" Height="67px" Width="1318px"></asp:TextBox>
        <br/>
        <br/>
        <p><asp:Label ID="Label4" runat="server" Text="說明文字(50字)*："></asp:Label></p>
        <asp:TextBox ID="category" runat="server" Height="99px" TextMode="MultiLine" Width="99%" AutoCompleteType="Search"></asp:TextBox>
        <br/>
        <br/>
        <br/>
            <div class="text-left">
                <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" />
            </div>
        <br/>
        <br/>
        <br/>
    </div>
</asp:Content>

