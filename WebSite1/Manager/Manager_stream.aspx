<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" validateRequest="false" CodeFile="Manager_stream.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <br/>
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manager/Webmanager.aspx">回到管理員入口網站</asp:HyperLink>
    </div>
    <br/>
    <div>
        <asp:Label ID="Label1" runat="server" Text="查詢/編輯/刪除 直播資料庫" style="font-size: x-large"></asp:Label>
    </div>
    <br/>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="account" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="account" HeaderText="帳戶" ReadOnly="True" SortExpression="account" />
                <asp:BoundField DataField="name" HeaderText="直播名稱" SortExpression="name" />
                <asp:BoundField DataField="url" HeaderText="直播鏈結" SortExpression="url" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" DeleteCommand="DELETE FROM [Streaming] WHERE [account] = @account" InsertCommand="INSERT INTO [Streaming] ([account], [type], [name], [url]) VALUES (@account, @type, @name, @url)" SelectCommand="SELECT * FROM [Streaming] ORDER BY [account]" UpdateCommand="UPDATE [Streaming] SET [type] = @type, [name] = @name, [url] = @url WHERE [account] = @account">
            <DeleteParameters>
                <asp:Parameter Name="account" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="url" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="url" Type="String" />
                <asp:Parameter Name="account" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

