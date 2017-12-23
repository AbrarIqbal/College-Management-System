<%@ Page Title="College Education System | Login" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Stylesheets/Forms%20Input.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="container1">
      <div>
    <label><b>Username</b>  <asp:RequiredFieldValidator ForeColor="#ffffff" ControlToValidate="username" ValidationGroup="login_G" ID="User_Validator" runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator></label>
    <asp:TextBox ID="username" placeholder="Enter Username" runat="server"></asp:TextBox>

    <label><b>Password</b> <asp:RequiredFieldValidator ForeColor="#ffffff" ValidationGroup="login_G" ControlToValidate="passwordtext" ID="Password_Validator" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator> </label>
    <asp:TextBox ID="passwordtext" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>

    <asp:Button CssClass="button" ID="submit" runat="server" ValidationGroup="login_G" Text="Login" OnClick="submit_Click" />
    <a href="Registration.aspx"> Not a member? Register Here.</a>
     </div>
 </div>
</asp:Content>