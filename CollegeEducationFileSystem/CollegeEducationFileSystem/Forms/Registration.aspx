<%@ Page Title="College Education System | Registration" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Registeration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Stylesheets/Registration%20Style%20Sheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
	<section id="boxess">
        <div runat="server" id="panels">
		    <div class="container">
			    <div class="box">
				        <img src="../Images/Student.png"/>
				        <h3>Student</h3>
				        <p>
                            Register yourself as a Student.
                        </p>
                        <asp:Button CssClass="Button" ID="Student" runat="server" Text="Register" OnClick="Student_Click" />
			        </div>

			        <div class="box">
                        <img src="../Images/Teacher.png" />
				        <h3>Teacher</h3>
				        <p>
                            Register yourself as a teacher.			
                        </p>
                        <a><asp:Button CssClass="Button" ID="Teacher" runat="server" Text="Register" OnClick="Teacher_Click" /></a>	
			        </div>

			        <div class="box">
				        <img src="../Images/Parent.png"/>
				        <h3>Parents</h3>
				        <p>
                            Register yourself as a parent.
				        </p>
                        <asp:Button CssClass="Button" ID="Parent" runat="server" Text="Register" OnClick="Parent_Click" />
			    </div>
		    </div>
         </div>
	</section></asp:Content>
