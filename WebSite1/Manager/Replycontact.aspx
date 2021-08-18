<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Replycontact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br/>
    <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manager/Webmanager.aspx">回到管理員入口網</asp:HyperLink>
    </div>
    <br/>
    <br/>
    <br/>
    <div>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="contact_No" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;color: #284775;">客服單號:
                    <asp:Label ID="contact_NoLabel" runat="server" Text='<%# Eval("contact_No") %>' />
                    <br />送出者帳號:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />標題:
                    <asp:Label ID="mainLabel" runat="server" Text='<%# Eval("main") %>' />
                    <br />問題種類:
                    <asp:Label ID="questionTypeLabel" runat="server" Text='<%# Eval("questionType") %>' />
                    <br />內容:
                    <asp:Label ID="detailLabel" runat="server" Text='<%# Eval("detail") %>' />
                    <br />圖片:
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture") %>' Height="150px" Width="150px" />
                    <br/>
                    <asp:Label ID="pictureLabel" runat="server" Text='<%# Eval("picture") %>' />
                    <br />送出時間:
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    <br />回覆:
                    <asp:Label ID="replyLabel" runat="server" Text='<%# Eval("reply") %>' />
                    <br />回覆人:
                    <asp:Label ID="replyerLabel" runat="server" Text='<%# Eval("replyer") %>' />
                    <br />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">客服單號:
                    <asp:Label ID="contact_NoLabel1" runat="server" Text='<%# Eval("contact_No") %>' />
                    <br />送出者帳號:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />標題:
                    <asp:TextBox ID="mainTextBox" runat="server" Text='<%# Bind("main") %>' />
                    <br />問題種類:
                    <asp:TextBox ID="questionTypeTextBox" runat="server" Text='<%# Bind("questionType") %>' />
                    <br />內容:
                    <asp:TextBox ID="detailTextBox" runat="server" Text='<%# Bind("detail") %>' />
                    <br />圖片:
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture") %>' Height="150px" Width="150px" />
                    <br/>
                    <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                    <br />送出時間:
                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                    <br />回覆:
                    <asp:TextBox ID="replyTextBox" runat="server" Text='<%# Bind("reply") %>' />
                    <br />回覆人:
                    <asp:TextBox ID="replyerTextBox" runat="server" Text='<%# Bind("replyer") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>目前沒有新的客服案件。</td>
                    </tr>
                </table>
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
                <td runat="server" style="">送出者帳號:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />標題:
                    <asp:TextBox ID="mainTextBox" runat="server" Text='<%# Bind("main") %>' />
                    <br />問題種類:
                    <asp:TextBox ID="questionTypeTextBox" runat="server" Text='<%# Bind("questionType") %>' />
                    <br />內容:
                    <asp:TextBox ID="detailTextBox" runat="server" Text='<%# Bind("detail") %>' />
                    <br />圖片:
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture") %>' Height="150px" Width="150px" />
                    <br/>
                    <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                    <br />送出時間:
                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                    <br />回覆:
                    <asp:TextBox ID="replyTextBox" runat="server" Text='<%# Bind("reply") %>' />
                    <br />回覆人:
                    <asp:TextBox ID="replyerTextBox" runat="server" Text='<%# Bind("replyer") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #E0FFFF;color: #333333;">客服單號:
                    <asp:Label ID="contact_NoLabel" runat="server" Text='<%# Eval("contact_No") %>' />
                    <br />送出者帳號:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />標題:
                    <asp:Label ID="mainLabel" runat="server" Text='<%# Eval("main") %>' />
                    <br />問題種類:
                    <asp:Label ID="questionTypeLabel" runat="server" Text='<%# Eval("questionType") %>' />
                    <br />內容:
                    <asp:Label ID="detailLabel" runat="server" Text='<%# Eval("detail") %>' />
                    <br />圖片:
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture") %>' Height="150px" Width="150px" />
                    <br/>
                    <asp:Label ID="pictureLabel" runat="server" Text='<%# Eval("picture") %>' />
                    <br />送出時間:
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    <br />回覆:
                    <asp:Label ID="replyLabel" runat="server" Text='<%# Eval("reply") %>' />
                    <br />回覆人:
                    <asp:Label ID="replyerLabel" runat="server" Text='<%# Eval("replyer") %>' />
                    <br />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
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
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
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
                <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">客服單號:
                    <asp:Label ID="contact_NoLabel" runat="server" Text='<%# Eval("contact_No") %>' />
                    <br />送出者帳號:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />標題:
                    <asp:Label ID="mainLabel" runat="server" Text='<%# Eval("main") %>' />
                    <br />問題種類:
                    <asp:Label ID="questionTypeLabel" runat="server" Text='<%# Eval("questionType") %>' />
                    <br />內容:
                    <asp:Label ID="detailLabel" runat="server" Text='<%# Eval("detail") %>' />
                    <br />圖片:
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture") %>' Height="150px" Width="150px" />
                    <br/>
                    <asp:Label ID="pictureLabel" runat="server" Text='<%# Eval("picture") %>' />
                    <br />送出時間:
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    <br />回覆:
                    <asp:Label ID="replyLabel" runat="server" Text='<%# Eval("reply") %>' />
                    <br />回覆人:
                    <asp:Label ID="replyerLabel" runat="server" Text='<%# Eval("replyer") %>' />
                    <br />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" DeleteCommand="DELETE FROM [Contact] WHERE [contact_No] = @contact_No" InsertCommand="INSERT INTO [Contact] ([account], [main], [questionType], [detail], [picture], [Time], [reply], [replyer]) VALUES (@account, @main, @questionType, @detail, @picture, @Time, @reply, @replyer)" SelectCommand="SELECT * FROM [Contact] WHERE ([reply] IS NULL)" UpdateCommand="UPDATE [Contact] SET [account] = @account, [main] = @main, [questionType] = @questionType, [detail] = @detail, [picture] = @picture, [Time] = @Time, [reply] = @reply, [replyer] = @replyer WHERE [contact_No] = @contact_No">
            <DeleteParameters>
                <asp:Parameter Name="contact_No" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="main" Type="String" />
                <asp:Parameter Name="questionType" Type="String" />
                <asp:Parameter Name="detail" Type="String" />
                <asp:Parameter Name="picture" Type="String" />
                <asp:Parameter Name="Time" Type="DateTime" />
                <asp:Parameter Name="reply" Type="String" />
                <asp:Parameter Name="replyer" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="main" Type="String" />
                <asp:Parameter Name="questionType" Type="String" />
                <asp:Parameter Name="detail" Type="String" />
                <asp:Parameter Name="picture" Type="String" />
                <asp:Parameter Name="Time" Type="DateTime" />
                <asp:Parameter Name="reply" Type="String" />
                <asp:Parameter Name="replyer" Type="String" />
                <asp:Parameter Name="contact_No" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

