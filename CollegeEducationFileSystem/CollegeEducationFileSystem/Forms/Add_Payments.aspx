<%@ Page Title="College Education System | Add Payments" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Add_Payments.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Add_Payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="../Stylesheets/Registration%20Style%20Sheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container1">
                  <h2> Payment Form</h2>
                    <div>
                <label><b>Title</b>  <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ControlToValidate="Title_Payment" ValidationGroup="Parents" ID="User_Validator" runat="server" ErrorMessage="Enter Payment Title"></asp:RequiredFieldValidator></label>
                <asp:TextBox ID="Title_Payment" placeholder="Enter Payment Title" runat="server"></asp:TextBox>

                <label><b>Ammount</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Ammount_Payment" ID="Password_Validator" runat="server" ErrorMessage="Enter Ammount"></asp:RequiredFieldValidator> </label>
                <asp:TextBox ID="Ammount_Payment" placeholder="Enter Ammount" runat="server" TextMode="Number"></asp:TextBox>

                <label><b>Student Name</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Student_List" ID="PName_Validator" runat="server" ErrorMessage="Enter Student Name"></asp:RequiredFieldValidator> </label>

                    <asp:DropDownList CssClass="dropdownlist" ID="Student_List" runat="server" DataSourceID="Student_Lists" DataTextField="name" DataValueField="name">
                        </asp:DropDownList>

                        <asp:SqlDataSource ID="Student_Lists" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [name] FROM [Users] where roleid='2'"></asp:SqlDataSource>

                <asp:Button CssClass="button" ID="REG_BTN" runat="server" ValidationGroup="Parents" Text="Register" OnClick="REG_BTN_Click" />
                </div>
            </div>
</asp:Content>
