<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Myeva.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br>
<br>
    <div>
        
        <asp:Label ID="Label1" runat="server" style="font-size: x-large" Text="我所購買的商品評價"></asp:Label>
        <br>
        <br>
        <span style="font-size: large">您現在有<asp:Label ID="bsevacount" runat="server" Text="Label"></asp:Label>筆該類型評價未處理。</span>
        <br>
        <br>
        <a href="../eva/bseva.aspx" class="btn btn-primary btn-lg">前往評價 &raquo;</a>
    </div>
<br>
<br>
    <div>
        
        <asp:Label ID="Label2" runat="server" style="font-size: x-large" Text="我的賣場之客戶評價"></asp:Label>
        <br>
        <br>
        <span style="font-size: large">您現在有<asp:Label ID="sbevacount" runat="server" Text="Label"></asp:Label>筆該類型評價未處理。
        </span>
        <br>
        <br>
        <a href="../eva/sbeva.aspx" class="btn btn-primary btn-lg">前往評價 &raquo;</a>
    </div>
<br>
<br>
    <div>
        <asp:Label ID="Label4" runat="server" Text="我購買的賣場之會員評價記錄" style="font-size: x-large"></asp:Label>
        <br>
    </div>
<br>
<br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="eNo" DataSourceID="SqlDataSource1" style="font-size: x-large" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
            <asp:BoundField DataField="toMid" HeaderText="賣家名稱" SortExpression="toMid" />
            <asp:BoundField DataField="level" HeaderText="評分" SortExpression="level" />
            <asp:BoundField DataField="depiction" HeaderText="敘述" SortExpression="depiction" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label7" runat="server" BorderStyle="Double" style="font-size: x-large" Text="目前還沒有此類型的評價紀錄"></asp:Label>
        </EmptyDataTemplate>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [eNo], [pName], [toMid], [level], [depiction] FROM [Evaluation] WHERE (([level] IS NOT NULL) AND ([submitMid] = @submitMid) AND ([type] = @type)) ORDER BY [eNo]">
        <SelectParameters>
            <asp:SessionParameter Name="submitMid" SessionField="MID" Type="String" />
            <asp:Parameter DefaultValue="bs" Name="type" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div>
        <br>
        <asp:Label ID="Label6" runat="server" Text="購買我的商品之會員評價記錄" style="font-size: x-large"></asp:Label>
        <br>
        <br>
        <br>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="eNo" DataSourceID="SqlDataSource2" style="font-size: x-large" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
            <Columns>
                <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
                <asp:BoundField DataField="toMid" HeaderText="買家名稱" SortExpression="toMid" />
                <asp:BoundField DataField="level" HeaderText="評分" SortExpression="level" />
                <asp:BoundField DataField="depiction" HeaderText="敘述" SortExpression="depiction" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="Label7" runat="server" BorderStyle="Double" style="font-size: x-large" Text="目前還沒有此類型的評價紀錄"></asp:Label>
            </EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [eNo], [pName], [level], [depiction], [toMid] FROM [Evaluation] WHERE (([level] IS NOT NULL) AND ([type] = @type) AND ([submitMid] = @submitMid)) ORDER BY [eNo]">
            <SelectParameters>
                <asp:Parameter DefaultValue="sb" Name="type" Type="String" />
                <asp:SessionParameter Name="submitMid" SessionField="MID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div>
        <br>
        <asp:Label ID="Label3" runat="server" Text="別人給我的評價記錄" style="font-size: x-large"></asp:Label>
        <br>
        <br>
        <br>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="eNo" DataSourceID="SqlDataSource3" style="font-size: x-large" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="pName" HeaderText="商品名稱" SortExpression="pName" />
                <asp:BoundField DataField="submitMid" HeaderText="提交者" SortExpression="submitMid" />
                <asp:BoundField DataField="level" HeaderText="評分" SortExpression="level" />
                <asp:BoundField DataField="depiction" HeaderText="敘述" SortExpression="depiction" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="Label7" runat="server" BorderStyle="Double" style="font-size: x-large" Text="目前還沒有任何人評價過您"></asp:Label>
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [eNo], [pName], [submitMid], [level], [depiction], [type] FROM [Evaluation] WHERE (([toMid] = @toMid) AND ([level] IS NOT NULL))">
            <SelectParameters>
                <asp:SessionParameter Name="toMid" SessionField="MID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>

