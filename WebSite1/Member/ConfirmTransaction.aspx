<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ConfirmTransaction.aspx.cs" Inherits="ConfirmTransaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="購物車編號" SortExpression="cNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("cNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="商品編號" SortExpression="pNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("pNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("pNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
                <asp:TemplateField HeaderText="數量" SortExpression="quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Cart_Date" HeaderText="購物車產生時間" SortExpression="Cart_Date" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT * FROM [Cart_Detail]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="totalmoney" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="tNo" HeaderText="交易編號" SortExpression="tNo" />
                <asp:BoundField DataField="sellMid" HeaderText="賣家" SortExpression="sellMid" />
                <asp:BoundField DataField="buyMid" HeaderText="買家" SortExpression="buyMid" />
                <asp:BoundField DataField="transTime" HeaderText="交易時間" SortExpression="transTime" />
                <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
                <asp:BoundField DataField="statement" HeaderText="交易狀態" SortExpression="statement" />
                <asp:BoundField DataField="money" HeaderText="金額" SortExpression="money" />
                <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address" />
                <asp:BoundField DataField="amount" HeaderText="數量" SortExpression="amount" />
                <asp:BoundField DataField="pNo" HeaderText="商品編號" SortExpression="pNo" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT * FROM [Transactions_Detail]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="銀行代號："></asp:Label>
        <asp:TextBox ID="bankId" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="銀行卡號："></asp:Label>
        <asp:TextBox ID="cardNumber" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="收貨地址："></asp:Label>
        <asp:TextBox ID="address" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="confirm" runat="server" Text="確認付款" OnClick="confirm_Click" />
    </div>
</asp:Content>

