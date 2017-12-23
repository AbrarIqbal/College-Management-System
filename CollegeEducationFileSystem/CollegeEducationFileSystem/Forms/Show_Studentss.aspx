<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Show_Studentss.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Show_Studentss" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Stylesheets/Grids.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="girdss">
                <h2>Student List</h2>
            <asp:DropDownList ID="Student_List_DRPDWN_Teacher" runat="server" Visible="False">
                <asp:ListItem>Total</asp:ListItem>
                <asp:ListItem>By Class</asp:ListItem>
                <asp:ListItem>By Name</asp:ListItem>
                </asp:DropDownList>
                <asp:GridView ID="Student_List_Teacher" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Student_List_Source" ForeColor="#333333" GridLines="None" Visible="False">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                        <asp:BoundField DataField="parentname" HeaderText="parentname" SortExpression="parentname" />
                        <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
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

                <asp:SqlDataSource ID="Student_List_Source" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [name], [email], [address], [contact], [parentname], [qualification], [dob] FROM [Users] where roleid= '2'"></asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
