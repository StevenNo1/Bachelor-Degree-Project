<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Justforme.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br>
    <br>
    <asp:Label ID="Label1" runat="server" Text="我的專屬賣場" style="font-size: x-large"></asp:Label>
    <br>
    <br>
    <div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="pNo" DataSourceID="SqlDataSource1" GroupItemCount="3" OnItemCommand="ListView1_ItemCommand">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FAFAD2;color: #284775;">商品編號:
                    <asp:Label ID="pNoLabel" runat="server" Text='<%# Eval("pNo") %>' />
                    <br />賣家帳號:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />圖片:
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("picture") %>' Width="150px" />
                    <br />分類:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />商品名稱:
                    <asp:Label ID="pNameLabel" runat="server" Text='<%# Eval("pName") %>' />
                    <br />價格:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />存貨:
                    <asp:Label ID="stockLabel" runat="server" Text='<%# Eval("stock") %>' />
                    <br />介紹:
                    <asp:Label ID="IntroductionLabel" runat="server" Text='<%# Eval("Introduction") %>' />
                    <br />創建時間:
                    <asp:Label ID="createTimeLabel" runat="server" Text='<%# Eval("createTime") %>' />
                    <br />專屬會員:
                    <asp:Label ID="justForLabel" runat="server" Text='<%# Eval("justFor") %>' />
                    <br />
                    <asp:Button ID="btn_AddCart" runat="server" CommandArgument='<%# Eval("pNo") %>' CommandName="AddCart" OnClick="btn_AddCart_Click" Text="加入購物車" />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #FFCC66;color: #000080;">商品編號:
                    <asp:Label ID="pNoLabel1" runat="server" Text='<%# Eval("pNo") %>' />
                    <br />賣家帳號:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />圖片:
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("picture") %>' Width="150px" />
                    <br />分類:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />商品名稱:
                    <asp:TextBox ID="pNameTextBox" runat="server" Text='<%# Bind("pName") %>' />
                    <br />價格:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />存貨:
                    <asp:TextBox ID="stockTextBox" runat="server" Text='<%# Bind("stock") %>' />
                    <br />介紹:
                    <asp:TextBox ID="IntroductionTextBox" runat="server" Text='<%# Bind("Introduction") %>' />
                    <br />創建時間:
                    <asp:TextBox ID="createTimeTextBox" runat="server" Text='<%# Bind("createTime") %>' />
                    <br />專屬會員:
                    <asp:TextBox ID="justForTextBox" runat="server" Text='<%# Bind("justFor") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未傳回資料。</td>
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
                <td runat="server" style="">賣家帳號:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />圖片:
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("picture") %>' Width="150px" />
                    <br />分類:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />商品名稱:
                    <asp:TextBox ID="pNameTextBox" runat="server" Text='<%# Bind("pName") %>' />
                    <br />價格:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />存貨:
                    <asp:TextBox ID="stockTextBox" runat="server" Text='<%# Bind("stock") %>' />
                    <br />介紹:
                    <asp:TextBox ID="IntroductionTextBox" runat="server" Text='<%# Bind("Introduction") %>' />
                    <br />創建時間:
                    <asp:TextBox ID="createTimeTextBox" runat="server" Text='<%# Bind("createTime") %>' />
                    <br />專屬會員:
                    <asp:TextBox ID="justForTextBox" runat="server" Text='<%# Bind("justFor") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #FFFBD6;color: #333333;">商品編號:
                    <asp:Label ID="pNoLabel" runat="server" Text='<%# Eval("pNo") %>' />
                    <br />賣家帳號:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />圖片:
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("picture") %>' Width="150px" />
                    <br />分類:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />商品名稱:
                    <asp:Label ID="pNameLabel" runat="server" Text='<%# Eval("pName") %>' />
                    <br />價格:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />存貨:
                    <asp:Label ID="stockLabel" runat="server" Text='<%# Eval("stock") %>' />
                    <br />介紹:
                    <asp:Label ID="IntroductionLabel" runat="server" Text='<%# Eval("Introduction") %>' />
                    <br />創建時間:
                    <asp:Label ID="createTimeLabel" runat="server" Text='<%# Eval("createTime") %>' />
                    <br />專屬會員:
                    <asp:Label ID="justForLabel" runat="server" Text='<%# Eval("justFor") %>' />
                    <br />
                    <asp:Button ID="btn_AddCart" runat="server" CommandArgument='<%# Eval("pNo") %>' CommandName="AddCart" OnClick="btn_AddCart_Click" Text="加入購物車" />
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
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">商品編號:
                    <asp:Label ID="pNoLabel" runat="server" Text='<%# Eval("pNo") %>' />
                    <br />賣家帳號:
                    <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                    <br />圖片:
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("picture") %>' Width="150px" />
                    <br />分類:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />商品名稱:
                    <asp:Label ID="pNameLabel" runat="server" Text='<%# Eval("pName") %>' />
                    <br />價格:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />存貨:
                    <asp:Label ID="stockLabel" runat="server" Text='<%# Eval("stock") %>' />
                    <br />介紹:
                    <asp:Label ID="IntroductionLabel" runat="server" Text='<%# Eval("Introduction") %>' />
                    <br />創建時間:
                    <asp:Label ID="createTimeLabel" runat="server" Text='<%# Eval("createTime") %>' />
                    <br />專屬會員:
                    <asp:Label ID="justForLabel" runat="server" Text='<%# Eval("justFor") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anotherconnection %>" SelectCommand="SELECT [pNo], [account], [picture], [category], [pName], [price], [stock], [Introduction], [createTime], [justFor] FROM [Product] WHERE (([justFor] = @justFor) AND ([stock]&lt;&gt;0)) ORDER BY [pNo]">
            <SelectParameters>
                <asp:SessionParameter Name="justFor" SessionField="MID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br>
        <br>

        <asp:Label ID="lbl_Message" runat="server" ForeColor="#FF3300" style="font-size: x-large"></asp:Label>
    </div>
</asp:Content>

