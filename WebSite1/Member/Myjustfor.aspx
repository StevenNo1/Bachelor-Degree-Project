<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Myjustfor.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br>
    <br>
    <asp:Label ID="Label1" runat="server" Text="我開設的專屬賣場" style="font-size: x-large"></asp:Label>

    <br>
    <br>
    <div>
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pNo" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="pNo" HeaderText="商品編號" InsertVisible="False" ReadOnly="True" SortExpression="pNo" />
                <asp:BoundField DataField="category" HeaderText="分類" SortExpression="category" />
                <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
                <asp:BoundField DataField="price" HeaderText="價格" SortExpression="price" />
                <asp:BoundField DataField="stock" HeaderText="存貨" SortExpression="stock" />
                <asp:BoundField DataField="Introduction" HeaderText="介紹" SortExpression="Introduction" />
                <asp:BoundField DataField="justFor" HeaderText="專屬會員" SortExpression="justFor" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [pNo], [category], [pName], [price], [stock], [Introduction], [justFor], [createTime] FROM [Product] WHERE (([account] = @account)AND([justFor])&lt;&gt;'') ORDER BY [pNo]" DeleteCommand="DELETE FROM [Product] WHERE [pNo] = @pNo" InsertCommand="INSERT INTO [Product] ([category], [pName], [price], [stock], [Introduction], [justFor], [createTime]) VALUES (@category, @pName, @price, @stock, @Introduction, @justFor, @createTime)" UpdateCommand="UPDATE [Product] SET [category] = @category, [pName] = @pName, [price] = @price, [stock] = @stock, [Introduction] = @Introduction, [justFor] = @justFor, [createTime] = @createTime WHERE [pNo] = @pNo">
            <DeleteParameters>
                <asp:Parameter Name="pNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="stock" Type="Int32" />
                <asp:Parameter Name="Introduction" Type="String" />
                <asp:Parameter Name="justFor" Type="String" />
                <asp:Parameter Name="createTime" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="account" SessionField="MID" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="stock" Type="Int32" />
                <asp:Parameter Name="Introduction" Type="String" />
                <asp:Parameter Name="justFor" Type="String" />
                <asp:Parameter Name="createTime" Type="DateTime" />
                <asp:Parameter Name="pNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

