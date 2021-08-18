<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="StreamDetail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br/>
    <br/>
    <div>

                <asp:ListView ID="ListView1" runat="server" DataKeyNames="account" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FAFAD2;color: #284775;">開設者:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />
                    直播類型:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    標題:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #FFCC66;color: #000080;">開設者:
                    <asp:Label ID="accountLabel1" runat="server" Text='<%# Eval("account") %>' />
                    <br />
                    直播類型:
                    <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                    <br />
                    標題:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    
                    <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未傳回資料。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">開設者:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />直播類型:
                    <asp:TextBox ID="typeTextBox0" runat="server" Text='<%# Bind("type") %>' />
                    <br />標題:
                    <asp:TextBox ID="nameTextBox0" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    <asp:TextBox ID="urlTextBox0" runat="server" Text='<%# Bind("url") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="清除" />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #FFFBD6;color: #333333;">開設者:
                    <asp:Label ID="accountLabel2" runat="server" Text='<%# Eval("account") %>' />
                    <br />
                    直播類型:
                    <asp:Label ID="typeLabel0" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    標題:
                    <asp:Label ID="nameLabel0" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    
                    <asp:Label ID="urlLabel0" runat="server" Text='<%# Eval("url") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </table>
                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">開設者:
                    <asp:Label ID="accountLabel3" runat="server" Text='<%# Eval("account") %>' />
                    <br />
                    直播類型:
                    <asp:Label ID="typeLabel1" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    標題:
                    <asp:Label ID="nameLabel1" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    
                    <asp:Label ID="urlLabel1" runat="server" Text='<%# Eval("url") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT * FROM [Streaming] WHERE ([account] = @account)">
            <SelectParameters>
                <asp:QueryStringParameter Name="account" QueryStringField="account" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
    <br/>
    <br/>
    <div>

    </div>
        

</asp:Content>

