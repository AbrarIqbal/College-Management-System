﻿<%@ Page Title="College Education System | Show Assignment Attendance" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Show_Assignments.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Show_Assignments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="../Stylesheets/Grids.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
                <h2>Assignments </h2>
        <asp:GridView CssClass="girdss" ID="Admin_Grids" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="workid" DataSourceID="All_Assignments" ForeColor="#333333" GridLines="None" OnRowCommand="Download_Assignments" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="workid" HeaderText="workid" InsertVisible="False" ReadOnly="True" SortExpression="workid" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="classname" HeaderText="classname" SortExpression="classname" />
                <asp:ButtonField CommandName="Downloadss" HeaderText="Actions" Text="Download" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="All_Assignments" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [workid], [title], [classname] FROM [Assignment]" DeleteCommand="DELETE FROM [Assignment] WHERE [workid] = @workid" InsertCommand="INSERT INTO [Assignment] ([title], [classname]) VALUES (@title, @classname)" UpdateCommand="UPDATE [Assignment] SET [title] = @title, [classname] = @classname WHERE [workid] = @workid">
            <DeleteParameters>
                <asp:Parameter Name="workid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="classname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="classname" Type="String" />
                <asp:Parameter Name="workid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>




        <div>
            <asp:GridView CssClass="gridss" ID="Student_Assignment_Grids" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="workid" DataSourceID="All_Ass_Ord" OnRowCommand="ordinary_Down">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="workid" HeaderText="workid" InsertVisible="False" ReadOnly="True" SortExpression="workid" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:ButtonField CommandName="Download_Ord" HeaderText="Action" Text="Download" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="All_Ass_Ord" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [workid], [title] FROM [Assignment] where classname = @name"><SelectParameters><asp:SessionParameter Name="name" SessionField="Assignment_Stu" /> </SelectParameters></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
