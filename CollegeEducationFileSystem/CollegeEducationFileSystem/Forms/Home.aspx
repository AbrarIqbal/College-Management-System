<%@ Page Title="College Education System | Home" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<section runat="server" id="adminsss" class="boxes">
		<div class="container">
			<div class="box">

                <asp:LinkButton ID="Approve_Student" runat="server" OnClick="Approve_Student_Click"><img src="../Images/Student.png"/></asp:LinkButton>
				<h3>Approve Students</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Approve_Teacher" runat="server" OnClick="Approve_Teacher_Click"><img src="../Images/Teacher.png" /></asp:LinkButton>
				<h3>Approve Teacher</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Approve_Parent" runat="server" OnClick="Approve_Parent_Click"><img src="../Images/Parent.png"/></asp:LinkButton>
				<h3>Approve Parent</h3>
			</div>
		</div>

	</section>

	<section runat="server" id="adminss2" class="boxes">
		<div class="container">
			<div class="box">

                <asp:LinkButton ID="Show_Students" runat="server" OnClick="Show_Students_Click"><img src="../Images/payment.png"/></asp:LinkButton>
				<h3>Add Payments</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Show_Teachers" runat="server" OnClick="Show_Teachers_Click"><img src="../Images/Class.png" /></asp:LinkButton>
				<h3>Add Class</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Show_Parents" runat="server" OnClick="Show_Parents_Click"><img src="../Images/Notifications.png"/></asp:LinkButton>
				<h3>Add Notification</h3>
			</div>
		</div>

	</section>
    
    <section runat="server" id="Students" class="boxes" visible="True">

		<div class="container">
			<div class="box">

                <asp:LinkButton ID="Show_Attendance" runat="server" OnClick="Show_Attendance_Click"><img src="../Images/Attendance.png"/></asp:LinkButton>
				<h3>Show Attendance</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Show_Class" runat="server" OnClick="Show_Class_Click"><img src="../Images/Class.png" /></asp:LinkButton>
				<h3>Show Class</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Add_Applicationss" runat="server" OnClick="Add_Applicationss_Click"><img src="../Images/Leave.png"/></asp:LinkButton>
				<h3>Add Application</h3>
			</div>
		</div>
	</section>

    <section runat="server" id="student2" class="boxes">
        
        		<div class="container">
			<div class="box">

                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><img src="../Images/Assignment.png"/></asp:LinkButton>
				<h3>Show Assignments</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Show_Payment_S" runat="server" OnClick="Show_Payment_S_Click"><img src="../Images/payment.png" /></asp:LinkButton>
				<h3>Show Payments</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><img src="../Images/Leave.png"/></asp:LinkButton>
				<h3>Show Application</h3>
			</div>
		</div>
    </section>

    <section runat="server" id="Teacher_Section" class="boxes">
         <div class="container">
			<div class="box">

                <asp:LinkButton ID="Add_Attendance_T" runat="server" OnClick="Add_Attendance_T_Click"><img src="../Images/Attendance.png"/></asp:LinkButton>
				<h3>Mark Attendance</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Add_Assignment_T" runat="server" OnClick="Add_Assignment_T_Click"><img src="../Images/Assignment.png" /></asp:LinkButton>
				<h3>Add Assignments</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Add_Application_T" runat="server" OnClick="Add_Application_T_Click" ><img src="../Images/Leave.png"/></asp:LinkButton>
				<h3>Apply Application</h3>
			</div>
		</div>


                 <div class="container">
			<div class="box">

                <asp:LinkButton ID="Show_Students_T" runat="server"><img src="../Images/Student.png"/></asp:LinkButton>
				<h3>Show Students</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Show_Assignment_T" runat="server" OnClick="Show_Assignment_T_Click"><img src="../Images/Assignment.png" /></asp:LinkButton>
				<h3>Show Assignments</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Show_Application_T" runat="server" OnClick="Show_Application_T_Click"><img src="../Images/Leave.png"/></asp:LinkButton>
				<h3>Show Application</h3>
			</div>
		</div>
    </section>

    <section runat="server" id="Parentss" class="boxes">
        
        		<div class="container">
			<div class="box">

                <asp:LinkButton ID="Show_Class_Parent" runat="server"><img src="../Images/Class.png"/></asp:LinkButton>
				<h3>Show Assignments</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Show_Attendance_Parent" runat="server"><img src="../Images/payment.png" /></asp:LinkButton>
				<h3>Show Payments</h3>
			</div>

			<div class="box">
                <asp:LinkButton ID="Show_Marks_Parents" runat="server"><img src="../Images/Leave.png"/></asp:LinkButton>
				<h3>Show Application</h3>
			</div>
		</div>
    </section>



</asp:Content>
