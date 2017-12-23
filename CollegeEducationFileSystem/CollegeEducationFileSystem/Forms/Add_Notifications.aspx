<%@ Page Title="College Education System | Add Notifications" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Add_Notifications.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Add_Notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                <link href="../Stylesheets/Registration%20Style%20Sheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container1">
              <h2> Notification Form</h2>
                <div>
                    <label><b>Title:</b>  <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ControlToValidate="Title_Notification" ValidationGroup="Parents" ID="Title_Validator" runat="server" ErrorMessage="Enter Title"></asp:RequiredFieldValidator></label>
                    <asp:TextBox ID="Title_Notification" placeholder="Enter Title" runat="server"></asp:TextBox>

                    <label><b>Summary:</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Summary_Notification" ID="Sumary_Validator" runat="server" ErrorMessage="Enter Summary"></asp:RequiredFieldValidator> </label>
                    <asp:TextBox ID="Summary_Notification" placeholder="Enter Summary" runat="server" TextMode="MultiLine"></asp:TextBox>
                    
                    <label><b>Date:</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Date_Notification" ID="Date_Validator" runat="server" ErrorMessage="Enter Date"></asp:RequiredFieldValidator> </label>
                    <asp:TextBox ID="Date_Notification" placeholder="Enter Date" runat="server" TextMode="Date"></asp:TextBox>
                    
                     <asp:Button CssClass="button" ID="REG_BTN" runat="server" ValidationGroup="Parents" Text="Register" OnClick="REG_BTN_Click"/>
                </div>

         </div>
</asp:Content>
