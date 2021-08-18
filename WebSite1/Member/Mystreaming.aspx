<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Mystreaming.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br/>
    <div>
        <asp:Label ID="Label3" runat="server" Text="現正直播" style="font-size: x-large"></asp:Label>
        <br/>
        <br/>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="stream_No" DataSourceID="SqlDataSource2" BorderStyle="Double" CellPadding="4" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="stream_No" HeaderText="直播編號" InsertVisible="False" ReadOnly="True" SortExpression="stream_No" />
                <asp:BoundField DataField="name" HeaderText="直播名稱" SortExpression="name" />
                <asp:BoundField DataField="createTime" HeaderText="開始時間" SortExpression="stream_No" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="關閉直播" OnClick="Button1_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <EmptyDataTemplate>
                <asp:Label ID="Label2" runat="server" BorderStyle="Double" ForeColor="#FF3300" style="font-size: x-large" Text="你現在還沒有創建直播喔！"></asp:Label>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" DeleteCommand="DELETE FROM [Streaming] WHERE [stream_No] = @stream_No" InsertCommand="INSERT INTO [Streaming] ([name], [url], [createTime], [closeTime]) VALUES (@name, @url, @createTime, @closeTime)" SelectCommand="SELECT [stream_No], [name], [url], [createTime], [closeTime] FROM [Streaming] WHERE (([account] = @account) AND ([closeTime] IS NULL))" UpdateCommand="UPDATE [Streaming] SET [name] = @name, [url] = @url, [createTime] = @createTime, [closeTime] = @closeTime WHERE [stream_No] = @stream_No">
            <DeleteParameters>
                <asp:Parameter Name="stream_No" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="url" Type="String" />
                <asp:Parameter Name="createTime" Type="DateTime" />
                <asp:Parameter Name="closeTime" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="account" SessionField="MID" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="url" Type="String" />
                <asp:Parameter Name="createTime" Type="DateTime" />
                <asp:Parameter Name="closeTime" Type="DateTime" />
                <asp:Parameter Name="stream_No" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    <div>
        <br/>
        <br/>
        <asp:Label ID="Label1" runat="server" Text="我的直播紀錄" style="font-size: x-large"></asp:Label>
        <br/>
        <br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="stream_No" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="stream_No" HeaderText="直播編號" ReadOnly="True" SortExpression="stream_No" InsertVisible="False" />
                <asp:BoundField DataField="name" HeaderText="直播名稱" SortExpression="name" />
                <asp:BoundField DataField="createTime" HeaderText="開設時間" SortExpression="createTime" />
                <asp:BoundField DataField="closeTime" HeaderText="關閉時間" SortExpression="closeTime" />
                <asp:BoundField DataField="account" HeaderText="account" SortExpression="account" Visible="False" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="Label4" runat="server" BorderColor="#FF3300" BorderStyle="Double" ForeColor="#FF3300" style="font-size: x-large" Text="您從來沒有開過直播喔"></asp:Label>
            </EmptyDataTemplate>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [stream_No], [name], [createTime], [closeTime], [account] FROM [Streaming] WHERE ([account] = @account)">
            <SelectParameters>
                <asp:SessionParameter Name="account" SessionField="MID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

