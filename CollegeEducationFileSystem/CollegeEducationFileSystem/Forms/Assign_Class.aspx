<%@ Page Title="College Education System | Assign Class" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Assign_Class.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Add_Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                <link href="../Stylesheets/Registration%20Style%20Sheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container1">
            <h2> Assign Class Form</h2>
                <div>
                    <label><b>Class Name</b>  <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ControlToValidate="Class_List" ValidationGroup="Parents" ID="User_Validator" runat="server" ErrorMessage="Enter Class Name"></asp:RequiredFieldValidator></label>
                    <asp:DropDownList CssClass="dropdownlist" ID="Class_List" runat="server">
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem>FSC</asp:ListItem>
                        <asp:ListItem>FSC-Medical</asp:ListItem>
                        <asp:ListItem>ICS</asp:ListItem>
                        <asp:ListItem>ICOM</asp:ListItem>
                        <asp:ListItem>FA</asp:ListItem>
                    </asp:DropDownList>
                    <label><b>Section</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Section_List" ID="Password_Validator" runat="server" ErrorMessage="Enter Class Section"></asp:RequiredFieldValidator> </label>
                    <asp:DropDownList CssClass="dropdownlist" ID="Section_List" runat="server">
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>
                    <label><b>Student Name</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Student_List" ID="PName_Validator" runat="server" ErrorMessage="Enter Student Name"></asp:RequiredFieldValidator> </label>
                    <asp:DropDownList CssClass="dropdownlist" ID="Student_List" runat="server" DataSourceID="Students_Lists" DataTextField="name" DataValueField="name"></asp:DropDownList>
                    <asp:SqlDataSource ID="Students_Lists" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [name] FROM [Users] where roleid='2'"></asp:SqlDataSource>
                    
                                        <label>Teacher Name</label>
                    <asp:DropDownList CssClass="dropdownlist" ID="Teacher_List" runat="server" DataSourceID="Teacher_Source" DataTextField="name" DataValueField="name"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="Teacher_Source" ConnectionString='<%$ ConnectionStrings:DBCS %>' SelectCommand="SELECT [name] FROM [Users] where roleid='3'"></asp:SqlDataSource>

                    <asp:Button CssClass="button" ID="REG_BTN" runat="server" ValidationGroup="Parents" Text="Register" OnClick="REG_BTN_Click" />

                </div>
          </div>
</asp:Content>
