<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewPassword.aspx.cs" Inherits="Account_NewPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br>
    <br>
    <div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="NewPassword" CssClass="col-md-2 control-label">新密碼</asp:Label>
                 <div class="col-md-10">
                      <asp:TextBox runat="server" ID="NewPassword" CssClass="form-control" TextMode="Password" />
                      <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword"
                            CssClass="text-danger" ErrorMessage="必須填寫新密碼欄位。" />
                 </div>
        </div>
    </div>
    <div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">確認新密碼</asp:Label>
                 <div class="col-md-10">
                      <asp:TextBox runat="server" ID="ConfirmPassword" CssClass="form-control" TextMode="Password" />
                      <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" ErrorMessage="必須填寫確認新密碼欄位。" />
                      <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="密碼和確認密碼不相符。" />
                 </div>
        </div>
    </div>
    <br />
    <div class="form-group">
          <div class="col-md-offset-2 col-md-10">
                  <asp:Button runat="server" OnClick="ChangePassword_Click" Text="確認修改密碼" CssClass="btn btn-default" />
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
          </div>
    </div>
    
</asp:Content>

