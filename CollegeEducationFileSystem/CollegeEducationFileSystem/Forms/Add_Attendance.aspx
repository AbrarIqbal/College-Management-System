<%@ Page Title="College Education System | Add Attendance" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Add_Attendance.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Add_Attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                <link href="../Stylesheets/Registration%20Style%20Sheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container1">
                  <h2> Attendance Form</h2>
               <div>
                <label><b>Date</b>  <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ControlToValidate="Attendance_Date" ValidationGroup="Parents" ID="User_Validator" runat="server" ErrorMessage="Enter Date"></asp:RequiredFieldValidator></label>
                <asp:TextBox ID="Attendance_Date" placeholder="Enter Date" runat="server" TextMode="Date"></asp:TextBox>

                <label><b>Student Name</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Student_List" ID="PName_Validator" runat="server" ErrorMessage="Enter Student Name"></asp:RequiredFieldValidator> </label>
                <asp:DropDownList CssClass="dropdownlist" ID="Student_List" runat="server" DataSourceID="Studentss_Lists" DataTextField="name" DataValueField="name"></asp:DropDownList>

                   <asp:SqlDataSource ID="Studentss_Lists" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [name] FROM [Users] where roleid='2'"></asp:SqlDataSource>

                <label><b>Attendance</b> <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Attendance_List" ID="Password_Validator" runat="server" ErrorMessage="Enter Attendance"></asp:RequiredFieldValidator> </label>
                   <asp:DropDownList CssClass="dropdownlist" ID="Attendance_List" runat="server">
                       <asp:ListItem>None</asp:ListItem>
                       <asp:ListItem>Present</asp:ListItem>
                       <asp:ListItem>Absent</asp:ListItem>
                       <asp:ListItem>Leave</asp:ListItem>
                   </asp:DropDownList>                   
                
                   <asp:Button CssClass="button" ID="REG_BTN" runat="server" ValidationGroup="Parents" Text="Enter" OnClick="REG_BTN_Click"  />

              </div>
        </div>
</asp:Content>
