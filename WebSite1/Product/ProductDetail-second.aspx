<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProductDetail-second.aspx.cs" Inherits="ProductDetail_second" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
    <div>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="pNo" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="pNo" HeaderText="商品編號" InsertVisible="False" ReadOnly="True" SortExpression="pNo" />
                <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                <asp:TemplateField HeaderText="圖片" SortExpression="picture">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl='<%# Eval("picture") %>' Width="400px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="category" HeaderText="分類" SortExpression="category" />
                <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
                <asp:BoundField DataField="price" HeaderText="價格" SortExpression="price" />
                <asp:BoundField DataField="stock" HeaderText="存貨" SortExpression="stock" />
                <asp:BoundField DataField="Introduction" HeaderText="商品介紹" SortExpression="Introduction" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [pNo], [account], [picture], [category], [pName], [price], [stock], [Introduction] FROM [Product] WHERE ([pNo] = @pNo)">
            <SelectParameters>
                <asp:QueryStringParameter Name="pNo" QueryStringField="pNo" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        </div>
        <div class="text-center">
            <input id="Button1" type="button" onclick="goBack()" value="繼續購買" height="50px" width="100px" />
    </div>
</asp:Content>

