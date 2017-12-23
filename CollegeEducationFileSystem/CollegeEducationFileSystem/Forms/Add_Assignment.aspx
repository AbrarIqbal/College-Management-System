<%@ Page Title="College Education System | Upload Assignment Attendance" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Add_Assignment.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Add_Assignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                    <link href="../Stylesheets/Registration%20Style%20Sheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div class="container1">
                  <h2> Assignment Form</h2>
               <div>
                <label><b>Title</b>  <asp:RequiredFieldValidator ForeColor="#f0f0f0f" ControlToValidate="Assignment_Title" ValidationGroup="Parents" ID="User_Validator" runat="server" ErrorMessage="Enter Title"></asp:RequiredFieldValidator></label>
                <asp:TextBox ID="Assignment_Title" placeholder="Enter Title" runat="server"></asp:TextBox>

                   <asp:DropDownList CssClass="dropdownlist" ID="Class_List" runat="server">
                       <asp:ListItem>None</asp:ListItem>
                       <asp:ListItem>FSC</asp:ListItem>
                       <asp:ListItem>FSC-Medical</asp:ListItem>
                       <asp:ListItem>ICS</asp:ListItem>
                       <asp:ListItem>ICOM</asp:ListItem>
                       <asp:ListItem>FA</asp:ListItem>
                   </asp:DropDownList>

                <label><b>File</b> <%--<asp:RequiredFieldValidator ForeColor="#f0f0f0f" ValidationGroup="Parents" ControlToValidate="Uploading_Files" ID="PName_Validator" runat="server" ErrorMessage="Enter Student Name"></asp:RequiredFieldValidator>--%> </label>
                   <asp:FileUpload ID="Uploading_Files" runat="server" />          
                
                   <asp:Button CssClass="button" ID="REG_BTN" runat="server" ValidationGroup="Parents" Text="Upload" OnClick="REG_BTN_Click" />
              </div>
        </div>


</asp:Content>
