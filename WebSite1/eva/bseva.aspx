<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="bseva.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br>
    <div>
        <br>
        <asp:Label ID="Label1" runat="server" Text="我所購買的商品評價" style="font-size: x-large"></asp:Label>
        <br>
        <br>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="eNo" DataSourceID="SqlDataSource1" style="font-size: medium">
            <AlternatingItemTemplate>
                <li style="">評價編號:
                    <asp:Label ID="eNoLabel" runat="server" Text='<%# Eval("eNo") %>' />
                    <br />
                    商品名稱:
                    <asp:Label ID="pNameLabel" runat="server" Text='<%# Eval("pName") %>' />
                    <br />
                    賣家帳號:
                    <asp:Label ID="toMidLabel" runat="server" Text='<%# Eval("toMid") %>' />
                    <br />
                    評分(最低1分，最高5分):
                    <asp:Label ID="levelLabel" runat="server" Text='<%# Eval("level") %>' />
                    <br />
                    敘述:
                    <asp:Label ID="depictionLabel" runat="server" Text='<%# Eval("depiction") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="">評價編號:
                    <asp:Label ID="eNoLabel1" runat="server" Text='<%# Eval("eNo") %>' />
                    <br />
                    商品名稱:
                    <asp:Label ID="pNameTextBox" runat="server" Text='<%# Bind("pName") %>' />
                    <br />
                    賣家帳號:
                    <asp:Label ID="toMidTextBox" runat="server" Text='<%# Bind("toMid") %>' />
                    <br />
                    評分(最低1分，最高5分):
                    <asp:TextBox ID="levelTextBox" runat="server" Text='<%# Bind("level") %>' />
                    <br />
                    敘述:
                    <asp:TextBox ID="depictionTextBox" runat="server" Text='<%# Bind("depiction") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <asp:Label ID="Label2" runat="server" Text="哎呀!你還沒有該類型的評價資料喔。" Font-Size="X-Large" BorderColor="#FF6600" BorderStyle="Double"></asp:Label>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">商品名稱:
                    <asp:TextBox ID="pNameTextBox" runat="server" Text='<%# Bind("pName") %>' />
                    <br />
                    賣家帳號:
                    <asp:TextBox ID="toMidTextBox" runat="server" Text='<%# Bind("toMid") %>' />
                    <br />
                    評分(最低1分，最高5分):
                    <asp:TextBox ID="levelTextBox" runat="server" Text='<%# Bind("level") %>' />
                    <br />
                    敘述:
                    <asp:TextBox ID="depictionTextBox" runat="server" Text='<%# Bind("depiction") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="">評價編號:
                    <asp:Label ID="eNoLabel" runat="server" Text='<%# Eval("eNo") %>' />
                    <br />
                    商品名稱:
                    <asp:Label ID="pNameLabel" runat="server" Text='<%# Eval("pName") %>' />
                    <br />
                    賣家帳號:
                    <asp:Label ID="toMidLabel" runat="server" Text='<%# Eval("toMid") %>' />
                    <br />
                    評分(最低1分，最高5分):
                    <asp:Label ID="levelLabel" runat="server" Text='<%# Eval("level") %>' />
                    <br />
                    敘述:
                    <asp:Label ID="depictionLabel" runat="server" Text='<%# Eval("depiction") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="">評價編號:
                    <asp:Label ID="eNoLabel" runat="server" Text='<%# Eval("eNo") %>' />
                    <br />
                    商品名稱:
                    <asp:Label ID="pNameLabel" runat="server" Text='<%# Eval("pName") %>' />
                    <br />
                    賣家帳號:
                    <asp:Label ID="toMidLabel" runat="server" Text='<%# Eval("toMid") %>' />
                    <br />
                    評分(最低1分，最高5分):
                    <asp:Label ID="levelLabel" runat="server" Text='<%# Eval("level") %>' />
                    <br />
                    敘述:
                    <asp:Label ID="depictionLabel" runat="server" Text='<%# Eval("depiction") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" DeleteCommand="DELETE FROM [Evaluation] WHERE [eNo] = @eNo" InsertCommand="INSERT INTO [Evaluation] ([pName], [toMid], [level], [depiction]) VALUES (@pName, @toMid, @level, @depiction)" SelectCommand="SELECT [eNo], [pName], [toMid], [level], [depiction] FROM [Evaluation] WHERE (([type] = @type) AND ([level] IS NULL) AND ([submitMid] = @submitMid)) ORDER BY [eNo]" UpdateCommand="UPDATE [Evaluation] SET [pName] = @pName, [toMid] = @toMid, [level] = @level, [depiction] = @depiction WHERE [eNo] = @eNo">
            <DeleteParameters>
                <asp:Parameter Name="eNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="toMid" Type="String" />
                <asp:Parameter Name="level" Type="Int32" />
                <asp:Parameter Name="depiction" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="bs" Name="type" Type="String" />
                <asp:SessionParameter Name="submitMid" SessionField="MID" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="toMid" Type="String" />
                <asp:Parameter Name="level" Type="Int32" />
                <asp:Parameter Name="depiction" Type="String" />
                <asp:Parameter Name="eNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br>


    </div>
</asp:Content>

