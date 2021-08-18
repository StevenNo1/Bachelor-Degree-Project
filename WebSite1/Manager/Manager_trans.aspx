<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manager_trans.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br/>
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manager/Webmanager.aspx">回到管理員入口網站</asp:HyperLink>
    </div>
    <br/>
    <div>
        <asp:Label ID="Label1" runat="server" Text="查詢/編輯/刪除 交易資料庫" style="font-size: x-large"></asp:Label>
    </div>
    <br/>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="tNo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="tNo" HeaderText="交易編號" ReadOnly="True" SortExpression="tNo" />
                <asp:BoundField DataField="pNo" HeaderText="商品編號" SortExpression="pNo" />
                <asp:BoundField DataField="buyMid" HeaderText="買方會員編號" SortExpression="buyMid" />
                <asp:BoundField DataField="amount" HeaderText="數量" SortExpression="amount" />
                <asp:BoundField DataField="transTime" HeaderText="交易時間" SortExpression="transTime" />
                <asp:BoundField DataField="address" HeaderText="取/到貨地點" SortExpression="address" />
                <asp:BoundField DataField="getTime" HeaderText="取貨時間" SortExpression="getTime" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" DeleteCommand="DELETE FROM [Transactions_Detail] WHERE [tNo] = @tNo" InsertCommand="INSERT INTO [Transactions_Detail] ([tNo], [buyMid], [transTime], [address], [getTime], [pNo], [amount]) VALUES (@tNo, @buyMid, @transTime, @address, @getTime, @pNo, @amount)" SelectCommand="SELECT [tNo], [buyMid], [transTime], [address], [getTime], [pNo], [amount] FROM [Transactions_Detail] ORDER BY [tNo]" UpdateCommand="UPDATE [Transactions_Detail] SET [buyMid] = @buyMid, [transTime] = @transTime, [address] = @address, [getTime] = @getTime, [pNo] = @pNo, [amount] = @amount WHERE [tNo] = @tNo">
            <DeleteParameters>
                <asp:Parameter Name="tNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tNo" Type="Int32" />
                <asp:Parameter Name="buyMid" Type="Int32" />
                <asp:Parameter Name="transTime" Type="DateTime" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="getTime" Type="DateTime" />
                <asp:Parameter Name="pNo" Type="Int32" />
                <asp:Parameter Name="amount" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="buyMid" Type="Int32" />
                <asp:Parameter Name="transTime" Type="DateTime" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="getTime" Type="DateTime" />
                <asp:Parameter Name="pNo" Type="Int32" />
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter Name="tNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

