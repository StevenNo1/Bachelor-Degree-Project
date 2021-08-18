<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchSellingProduct.aspx.cs" Inherits="Member_SearchSellingProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <br>
        <br>
        <asp:Label ID="Label1" runat="server" Text="現在正在販售的商品(不含專屬會員商品)" style="font-size: x-large"></asp:Label>
        <br>
        <br>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="pNo" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="pNo" HeaderText="商品編號" InsertVisible="False" ReadOnly="True" SortExpression="pNo" />
                <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
                <asp:BoundField DataField="category" HeaderText="分類" SortExpression="category" />
                <asp:BoundField DataField="price" HeaderText="價格" SortExpression="price" />
                <asp:BoundField DataField="stock" HeaderText="存貨" SortExpression="stock" />
                <asp:BoundField DataField="Introduction" HeaderText="介紹" SortExpression="Introduction" />
                <asp:BoundField DataField="createTime" HeaderText="創建時間" SortExpression="createTime" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" DeleteCommand="DELETE FROM [Product] WHERE [pNo] = @pNo" InsertCommand="INSERT INTO [Product] ([account], [picture], [category], [pName], [price], [stock], [Introduction], [createTime], [justFor]) VALUES (@account, @picture, @category, @pName, @price, @stock, @Introduction, @createTime, @justFor)" SelectCommand="SELECT * FROM [Product] WHERE (([account] = @account)AND([justFor]='')AND([stock]&gt;'0'))" UpdateCommand="UPDATE [Product] SET [account] = @account, [picture] = @picture, [category] = @category, [pName] = @pName, [price] = @price, [stock] = @stock, [Introduction] = @Introduction, [createTime] = @createTime, [justFor] = @justFor WHERE [pNo] = @pNo">
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
                <asp:Parameter Name="createTime" Type="DateTime" />
                <asp:Parameter Name="justFor" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="account" SessionField="MID" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="picture" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="stock" Type="Int32" />
                <asp:Parameter Name="Introduction" Type="String" />
                <asp:Parameter Name="createTime" Type="DateTime" />
                <asp:Parameter Name="justFor" Type="String" />
                <asp:Parameter Name="pNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

