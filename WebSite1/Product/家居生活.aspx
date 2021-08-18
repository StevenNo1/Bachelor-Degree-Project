<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="家居生活.aspx.cs" Inherits="SelectThings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3" OnItemCommand="ListView1_ItemCommand" DataKeyNames="pNo">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FAFAD2;color: #284775;">帳號:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("picture") %>' Width="150px" />
                    <br />種類:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    商品名稱:
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("pNo", "ProductDetail-second.aspx?pNo={0}") %>' Text='<%# Eval("pName") %>'></asp:HyperLink>
                    <br />價格:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                    庫存:
                    <asp:Label ID="stockLabel" runat="server" Text='<%# Eval("stock") %>' />
                    <br />
                    介紹:
                    <asp:Label ID="IntroductionLabel" runat="server" Text='<%# Eval("Introduction") %>' />
                    <br />
                    創建時間:
                    <asp:Label ID="createTimeLabel" runat="server" Text='<%# Eval("createTime") %>' />
                    <br />
                    <asp:Button ID="btn_AddCart" runat="server" CommandArgument='<%# Eval("pNo") %>' CommandName="AddCart" Text="加入購物車" OnClick="btn_AddCart_Click" />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #FFCC66;color: #000080;">pNo:
                    <asp:Label ID="pNoLabel1" runat="server" Text='<%# Eval("pNo") %>' />
                    <br />
                    帳號:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />
                    <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                    <br />category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />pName:
                    <asp:TextBox ID="pNameTextBox" runat="server" Text='<%# Bind("pName") %>' />
                    <br />price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />stock:
                    <asp:TextBox ID="stockTextBox" runat="server" Text='<%# Bind("stock") %>' />
                    <br />
                    Introduction:
                    <asp:TextBox ID="IntroductionTextBox" runat="server" Text='<%# Bind("Introduction") %>' />
                    <br />
                    createTime:
                    <asp:TextBox ID="createTimeTextBox" runat="server" Text='<%# Bind("createTime") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr runat="server">
                        <td runat="server">查無此資料哦！</td>
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
                <td runat="server" style="">帳號:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />
                    <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                    <br />category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />pName:
                    <asp:TextBox ID="pNameTextBox" runat="server" Text='<%# Bind("pName") %>' />
                    <br />price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />stock:
                    <asp:TextBox ID="stockTextBox" runat="server" Text='<%# Bind("stock") %>' />
                    <br />
                    Introduction:
                    <asp:TextBox ID="IntroductionTextBox" runat="server" Text='<%# Bind("Introduction") %>' />
                    <br />
                    createTime:
                    <asp:TextBox ID="createTimeTextBox" runat="server" Text='<%# Bind("createTime") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #FFFBD6; color: #333333;">帳號:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl='<%# Eval("picture") %>' Width="150px" />
                    <br />種類:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    商品名稱:
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("pNo", "ProductDetail-second.aspx?pNo={0}") %>' Text='<%# Eval("pName") %>'></asp:HyperLink>
                    <br />價格:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                    庫存:
                    <asp:Label ID="stockLabel" runat="server" Text='<%# Eval("stock") %>' />
                    <br />
                    介紹:
                    <asp:Label ID="IntroductionLabel" runat="server" Text='<%# Eval("Introduction") %>' />
                    <br />
                    創建時間:
                    <asp:Label ID="createTimeLabel" runat="server" Text='<%# Eval("createTime") %>' />
                    <br />
                    <asp:Button ID="btn_AddCart" runat="server" CommandArgument='<%# Eval("pNo") %>' CommandName="AddCart" Text="加入購物車" />
                </td>
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
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">pNo:
                    <asp:Label ID="pNoLabel" runat="server" Text='<%# Eval("pNo") %>' />
                    <br />帳號:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />
                    <asp:Label ID="pictureLabel" runat="server" Text='<%# Eval("picture") %>' />
                    <br />category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />pName:
                    <asp:Label ID="pNameLabel" runat="server" Text='<%# Eval("pName") %>' />
                    <br />price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />stock:
                    <asp:Label ID="stockLabel" runat="server" Text='<%# Eval("stock") %>' />
                    <br />
                    Introduction:
                    <asp:Label ID="IntroductionLabel" runat="server" Text='<%# Eval("Introduction") %>' />
                    <br />
                    createTime:
                    <asp:Label ID="createTimeLabel" runat="server" Text='<%# Eval("createTime") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [pNo], [account], [picture], [category], [pName], [price], [stock], [Introduction], [createTime] FROM [Product] WHERE ((category='家居生活')AND([justFor]='')AND([stock]>'0'))">
        </asp:SqlDataSource>
    </div>
    <div>

        <asp:Label ID="lbl_Message" runat="server"></asp:Label>
        <br />

    </div>
</asp:Content>

