<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manager_member.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <br/>
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manager/Webmanager.aspx">回到管理員入口網站</asp:HyperLink>
    </div>
    <br/>
    <div>
        <asp:Label ID="Label1" runat="server" Text="查詢/編輯/刪除 會員資料庫" style="font-size: x-large"></asp:Label>
    </div>
    <br/>
    <div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="account" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="mId" HeaderText="會員編號" InsertVisible="False" ReadOnly="True" SortExpression="mId" />
                <asp:BoundField DataField="account" HeaderText="帳號" ReadOnly="True" SortExpression="account" />
                <asp:BoundField DataField="password" HeaderText="密碼" SortExpression="password" />
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                <asp:BoundField DataField="icNumber" HeaderText="身分證字號" SortExpression="icNumber" />
                <asp:BoundField DataField="birthday" HeaderText="出生年月日" SortExpression="birthday" />
                <asp:BoundField DataField="phone" HeaderText="電話" SortExpression="phone" />
                <asp:BoundField DataField="email" HeaderText="電子信箱" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="住址" SortExpression="address" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" DeleteCommand="DELETE FROM [Member] WHERE [account] = @account" InsertCommand="INSERT INTO [Member] ([account], [password], [mpri], [name], [icNumber], [birthday], [phone], [email], [address]) VALUES (@account, @password, @mpri, @name, @icNumber, @birthday, @phone, @email, @address)" SelectCommand="SELECT [account], [password], [mpri], [name], [icNumber], [birthday], [phone], [email], [mId], [address] FROM [Member] WHERE ([mpri] = @mpri) ORDER BY [mId]" UpdateCommand="UPDATE [Member] SET [password] = @password, [mpri] = @mpri, [name] = @name, [icNumber] = @icNumber, [birthday] = @birthday, [phone] = @phone, [email] = @email, [mId] = @mId, [address] = @address WHERE [account] = @account">
            <DeleteParameters>
                <asp:Parameter Name="account" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="mpri" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="icNumber" Type="String" />
                <asp:Parameter Name="birthday" Type="DateTime" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="guest" Name="mpri" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="mpri" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="icNumber" Type="String" />
                <asp:Parameter Name="birthday" Type="DateTime" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mId" Type="Int32" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="account" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

