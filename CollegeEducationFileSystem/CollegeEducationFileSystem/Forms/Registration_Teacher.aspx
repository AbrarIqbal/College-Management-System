<%@ Page Title="College Education System | Teacher Registration" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Registration_Teacher.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Registration_Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../Stylesheets/Registration%20Style%20Sheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div runat="server" id="Registeration_Parent">
              <div class="container1">
                  <h2> Teacher Registration Form</h2>
                    <div>
                <label><b>Username</b>  <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ControlToValidate="username_P" ValidationGroup="Parents" ID="User_Validator" runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator></label>
                <asp:TextBox ID="username_P" placeholder="Enter Username" runat="server"></asp:TextBox>

                <label><b>Password</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="passwordtext_P" ID="Password_Validator" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator> </label>
                <asp:TextBox ID="passwordtext_P" placeholder="Enter Password" runat="server"></asp:TextBox>

                <label><b>FullName</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="FullName_P" ID="FullName_Validator" runat="server" ErrorMessage="Enter Full Name"></asp:RequiredFieldValidator> </label>
                <asp:TextBox ID="FullName_P" TextMode="SingleLine" placeholder="Enter Full Name" runat="server"></asp:TextBox>

                <label><b>Father Name</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="FName" ID="Fathers_Validator" runat="server" ErrorMessage="Enter Full Name"></asp:RequiredFieldValidator> </label>
                <asp:TextBox ID="FName" TextMode="SingleLine" placeholder="Enter Father's Name" runat="server"></asp:TextBox>

                <label><b>Date Of Birth</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="DOB_P" ID="DOB_Validator" runat="server" ErrorMessage="Enter DOB"></asp:RequiredFieldValidator> </label>
                <asp:TextBox ID="DOB_P" TextMode="Date" placeholder="Enter Date of Birth" runat="server"></asp:TextBox>

                <label><b>Address</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Address_P" ID="Address_Validator" runat="server" ErrorMessage="Enter Address"></asp:RequiredFieldValidator> </label>
                <asp:TextBox ID="Address_P" TextMode="SingleLine" placeholder="Enter Address" runat="server"></asp:TextBox>

                <label><b>Email</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="mail_P" ID="mail_Validator" runat="server" ErrorMessage="Enter Email"></asp:RequiredFieldValidator> </label>
                <asp:TextBox ID="mail_P"  placeholder="Enter Email" runat="server" TextMode="Email"></asp:TextBox>              


                <label><b>Contact No.</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Contact_P" ID="Contact_Validator" runat="server" ErrorMessage="Enter Contact Number"></asp:RequiredFieldValidator> </label>
                <asp:TextBox ID="Contact_P" TextMode="SingleLine" placeholder="Enter Conact No." runat="server"></asp:TextBox>

                <label><b>Terminal Qualification</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Qual_P" ID="Qualification_Validator" runat="server" ErrorMessage="Enter Qualification"></asp:RequiredFieldValidator> </label>
                <asp:TextBox ID="Qual_P" TextMode="SingleLine" placeholder="Enter Your Last Qualification" runat="server"></asp:TextBox>

                <asp:Button CssClass="button" ID="Button1" runat="server" ValidationGroup="Parents" Text="Register" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
</asp:Content>
