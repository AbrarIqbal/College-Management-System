<%@ Page Title="College Education System | Show Attendance" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Show_Attendance.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Show_Attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                <link href="../Stylesheets/Grids.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="container">
                <h2>Attendance </h2>
        <asp:GridView ID="Student_View" CssClass="girdss" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="Student_Source">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

            <Columns>
                <asp:BoundField DataField="studentname" HeaderText="studentname" SortExpression="studentname"></asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                <asp:BoundField DataField="dateofstatus" HeaderText="dateofstatus" SortExpression="dateofstatus"></asp:BoundField>
            </Columns>

            <EditRowStyle BackColor="#999999"></EditRowStyle>

            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="Student_Source" ConnectionString='<%$ ConnectionStrings:DBCS %>' SelectCommand="SELECT [studentname], [status], [dateofstatus] FROM [Attendance] where studentname = @name"><SelectParameters><asp:SessionParameter Name="name" SessionField="Name" /></SelectParameters></asp:SqlDataSource>
    </div>
</asp:Content>
