<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script language="javascript" type="text/javascript" >

       function btn_Transaction_onCLick() {
           var answer = confirm("是否確定結帳？");
           if (answer) {
               alert("Confirmed!!!");
               window.location = "ConfirmTransaction.aspx";
           }
           else { }

       }
   </script>

    <div>
        <br>
        <br>
        <asp:Label ID="Label1" runat="server" Text="我的購物車" style="font-size: x-large"></asp:Label>
        <br>
        <br>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="cNo" HeaderText="購物車編號" SortExpression="cNo" />
                <asp:TemplateField HeaderText="商品編號" SortExpression="pNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("pNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_PID" runat="server" Text='<%# Bind("pNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
                <asp:TemplateField HeaderText="商品數量" SortExpression="quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txt_Qty" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Cart_Date" HeaderText="購物車時間" SortExpression="Cart_Date" />
                <asp:TemplateField HeaderText="刪除此商品">
                    <ItemTemplate>
                        <asp:CheckBox ID="chk_Del" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [cNo], [pNo], [pName], [quantity], [Cart_Date] FROM [Cart_Detail]"></asp:SqlDataSource>
    </div>
    <div>
        <asp:Button ID="btn_UpdateCart" runat="server" Text="更新" Width="76px" OnClick="btn_UpdateCart_Click" />
        <input id="btn_Transaction" type="button" value="結帳喔" onclick="btn_Transaction_onCLick()" />
    </div>
</asp:Content>

