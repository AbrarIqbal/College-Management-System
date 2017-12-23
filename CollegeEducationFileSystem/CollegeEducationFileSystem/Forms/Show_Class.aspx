﻿<%@ Page Title="College Education System | Show Class" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Show_Class.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Show_Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                <link href="../Stylesheets/Grids.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Class </h2>
        <asp:GridView CssClass="girdss" ID="Student_View" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="Student_Source">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                <asp:BoundField DataField="section" HeaderText="section" SortExpression="section"></asp:BoundField>
                <asp:BoundField DataField="studentname" HeaderText="studentname" SortExpression="studentname"></asp:BoundField>
                <asp:BoundField DataField="teachername" HeaderText="teachername" SortExpression="teachername"></asp:BoundField>
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

        <asp:SqlDataSource runat="server" ID="Student_Source" ConnectionString='<%$ ConnectionStrings:DBCS %>' SelectCommand="SELECT [name], [section], [studentname], [teachername] FROM [Class] where studentname = @name"> <SelectParameters><asp:SessionParameter Name="name" SessionField="Name" /></SelectParameters></asp:SqlDataSource>


        <asp:GridView CssClass="girdss" ID="Admin_View" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="classid" DataSourceID="Admin_Source" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

            <Columns>
                <asp:BoundField DataField="classid" HeaderText="classid" ReadOnly="True" InsertVisible="False" SortExpression="classid"></asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                <asp:BoundField DataField="section" HeaderText="section" SortExpression="section"></asp:BoundField>
                <asp:BoundField DataField="studentname" HeaderText="studentname" SortExpression="studentname"></asp:BoundField>
                <asp:BoundField DataField="teachername" HeaderText="teachername" SortExpression="teachername"></asp:BoundField>
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



        <asp:SqlDataSource runat="server" ID="Admin_Source" ConnectionString='<%$ ConnectionStrings:DBCS %>' DeleteCommand="DELETE FROM [Class] WHERE [classid] = @classid" InsertCommand="INSERT INTO [Class] ([name], [section], [studentname], [teachername]) VALUES (@name, @section, @studentname, @teachername)" SelectCommand="SELECT * FROM [Class]" UpdateCommand="UPDATE [Class] SET [name] = @name, [section] = @section, [studentname] = @studentname, [teachername] = @teachername WHERE [classid] = @classid">
            <DeleteParameters>
                <asp:Parameter Name="classid" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="section" Type="String"></asp:Parameter>
                <asp:Parameter Name="studentname" Type="String"></asp:Parameter>
                <asp:Parameter Name="teachername" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="section" Type="String"></asp:Parameter>
                <asp:Parameter Name="studentname" Type="String"></asp:Parameter>
                <asp:Parameter Name="teachername" Type="String"></asp:Parameter>
                <asp:Parameter Name="classid" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>


        <asp:GridView CssClass="girdss" ID="Teachers_View" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="Teacher_Views">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="section" HeaderText="section" SortExpression="section" />
                <asp:BoundField DataField="studentname" HeaderText="studentname" SortExpression="studentname" />
                <asp:BoundField DataField="teachername" HeaderText="teachername" SortExpression="teachername" />
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


        <asp:SqlDataSource ID="Teacher_Views" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [name], [section], [studentname], [teachername] FROM [Class] where teachername = @name"> <SelectParameters><asp:SessionParameter Name="name" SessionField="Name" /></SelectParameters> </asp:SqlDataSource>

        <div class="container">
            <div> <asp:Label ID="Label1" CssClass="text-align:center; text-transform:uppercase"  runat="server" Text="Childrens"></asp:Label> <asp:DropDownList CssClass="dropdownlist" ID="Child_List" runat="server" DataSourceID="Child_Source" DataTextField="name" DataValueField="name"></asp:DropDownList>
                <asp:SqlDataSource ID="Child_Source" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [name] FROM [Users] where parentname = @name"> <SelectParameters><asp:SessionParameter Name="name" SessionField="Name" /></SelectParameters></asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" />
            </div>
        <asp:GridView CssClass="girdss" ID="Paret_Grids" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        </div>

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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

    </div>

</asp:Content>