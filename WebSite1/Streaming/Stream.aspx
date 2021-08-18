<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Stream.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <br />
    <div>
        　</div>
          
    <br />
    <h2>現正直播</h2>
    <br />

    <div>

        <div>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="account" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#FFF8DC;">帳戶:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />標題:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>'/>
                    <br />
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">帳戶:
                    <asp:Label ID="accountLabel1" runat="server" Text='<%# Eval("account") %>' />
                    <br />標題:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>'/>
                    <br />
                    <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <asp:Label ID="Label1" runat="server" Text="現在沒有正在直播的會員" Font-Size="X-Large" BorderStyle="Double"></asp:Label>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">帳戶:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />標題:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>'/>
                    <br />
                    <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000;">帳戶:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />標題:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>'/>
                    <br />
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">帳戶:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />標題:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>'/>
                    <br />
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [stream_No], [account], [name], [url], [createTime], [closeTime] FROM [Streaming] WHERE ([closeTime] IS NULL)">
        </asp:SqlDataSource>

    </div>

    

    





    
   
    
    





    
   
    
</asp:Content>
