<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manager_product.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br/>
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manager/Webmanager.aspx">回到管理員入口網站</asp:HyperLink>
    </div>
    <br/>
    <div>
        <asp:Label ID="Label1" runat="server" Text="查詢/編輯/刪除 商品資料庫" style="font-size: x-large"></asp:Label>
    </div>
    <br/>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="pNo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="pNo" HeaderText="商品編號" InsertVisible="False" ReadOnly="True" SortExpression="pNo" />
                <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                <asp:BoundField DataField="picture" HeaderText="圖片路徑" SortExpression="picture" />
                <asp:BoundField DataField="category" HeaderText="分類" SortExpression="category" />
                <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
                <asp:BoundField DataField="price" HeaderText="價格" SortExpression="price" />
                <asp:BoundField DataField="stock" HeaderText="存貨數量" SortExpression="stock" />
                <asp:BoundField DataField="Introduction" HeaderText="商品介紹" SortExpression="Introduction" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" DeleteCommand="DELETE FROM [Product] WHERE [pNo] = @pNo" InsertCommand="INSERT INTO [Product] ([account], [picture], [category], [pName], [price], [stock], [Introduction]) VALUES (@account, @picture, @category, @pName, @price, @stock, @Introduction)" SelectCommand="SELECT [pNo], [account], [picture], [category], [pName], [price], [stock], [Introduction] FROM [Product] ORDER BY [pNo]" UpdateCommand="UPDATE [Product] SET [account] = @account, [picture] = @picture, [category] = @category, [pName] = @pName, [price] = @price, [stock] = @stock, [Introduction] = @Introduction WHERE [pNo] = @pNo">
            <DeleteParameters>
                <asp:Parameter Name="pNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="picture" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="stock" Type="Int32" />
                <asp:Parameter Name="Introduction" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="picture" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="stock" Type="Int32" />
                <asp:Parameter Name="Introduction" Type="String" />
                <asp:Parameter Name="pNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

