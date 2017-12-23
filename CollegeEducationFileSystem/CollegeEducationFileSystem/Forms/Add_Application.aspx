<%@ Page Title="College Education System | Add Application" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Add_Application.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Add_Application" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                    <link href="../Stylesheets/Registration%20Style%20Sheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div class="container1">
                  <h2> Application Form</h2>
               <div>
                <label><b>Title</b>  <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ControlToValidate="Title_P" ValidationGroup="Parents" ID="User_Validator" runat="server" ErrorMessage="Enter Date"></asp:RequiredFieldValidator></label>
                <asp:TextBox ID="Title_P" placeholder="Enter Title" runat="server" TextMode="SingleLine"></asp:TextBox>

                <label><b>Reason</b>  <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ControlToValidate="Reasons" ValidationGroup="Parents" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Date"></asp:RequiredFieldValidator></label>
                <asp:TextBox ID="Reasons" placeholder="Enter Reason" runat="server" TextMode="MultiLine"></asp:TextBox>
                 
                                   
                
                   <asp:Button CssClass="button" ID="REG_BTN" runat="server" ValidationGroup="Parents" Text="Submit" OnClick="REG_BTN_Click"/>

              </div>
        </div>
</asp:Content>
