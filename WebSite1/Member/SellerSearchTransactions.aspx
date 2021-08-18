<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SellerSearchTransactions.aspx.cs" Inherits="SearchTransactions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <br />
        <span style="font-size: x-large">您賣出商品的交易紀錄：</span><br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="tNo" HeaderText="交易編號" SortExpression="tNo" />
                <asp:BoundField DataField="sellMid" HeaderText="賣家名稱" SortExpression="sellMid" />
                <asp:BoundField DataField="buyMid" HeaderText="買家名稱" SortExpression="buyMid" />
                <asp:BoundField DataField="transTime" HeaderText="交易時間" SortExpression="transTime" />
                <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
                <asp:BoundField DataField="statement" HeaderText="商品狀態" SortExpression="statement" />
                <asp:BoundField DataField="money" HeaderText="價格" SortExpression="money" />
                <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address" />
                <asp:BoundField DataField="shippingTime" HeaderText="出貨時間" SortExpression="shippingTime" />
                <asp:BoundField DataField="getTime" HeaderText="收貨時間" SortExpression="getTime" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT * FROM [Transactions_Detail] WHERE ([sellMid] = @sellMid)">
            <SelectParameters>
                <asp:SessionParameter Name="sellMid" SessionField="MID" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="tNo" SortExpression="tNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("tNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("tNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="statement" SortExpression="statement">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("statement") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("statement") %>'>
                            <asp:ListItem>買家已付款</asp:ListItem>
                            <asp:ListItem>已出貨</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="pName" HeaderText="pName" SortExpression="pName" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [tNo], [statement], [pName], [buyMid] FROM [Transactions_Detail] WHERE (([statement] = @statement) AND ([buyMid] &lt;&gt; @buyMid))">
            <SelectParameters>
                <asp:Parameter DefaultValue="買家已付款" Name="statement" Type="String" />
                <asp:SessionParameter Name="buyMid" SessionField="MID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確認上傳" />
        <br />
        <br />
        
    </div>
</asp:Content>

