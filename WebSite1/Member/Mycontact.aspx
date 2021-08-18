<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Mycontact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br/>
    <br/>
    <div>

        <asp:Label ID="Label1" runat="server" Text="我的客服紀錄" style="font-size: x-large"></asp:Label>
        <br/>
        <div>
            <br/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="contact_No" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="contact_No" HeaderText="客服單號" InsertVisible="False" ReadOnly="True" SortExpression="contact_No" />
                    <asp:BoundField DataField="main" HeaderText="標題" SortExpression="main" />
                    <asp:BoundField DataField="questionType" HeaderText="問題種類" SortExpression="questionType" />
                    <asp:BoundField DataField="detail" HeaderText="內容" SortExpression="detail" />
                    <asp:BoundField DataField="Time" HeaderText="送出時間" SortExpression="Time" />
                    <asp:BoundField DataField="reply" HeaderText="回覆" SortExpression="reply" />
                    <asp:BoundField DataField="replyer" HeaderText="受理客服專員" SortExpression="replyer" />
                </Columns>
                <EmptyDataTemplate>
                    <asp:Label ID="Label2" runat="server" Text="您並沒有客服案件的紀錄喔。"></asp:Label>
                </EmptyDataTemplate>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [contact_No], [main], [questionType], [detail], [picture], [Time], [reply], [replyer] FROM [Contact] WHERE ([account] = @account)">
                <SelectParameters>
                    <asp:SessionParameter Name="account" SessionField="MID" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br/>

        </div>
    </div>
</asp:Content>

