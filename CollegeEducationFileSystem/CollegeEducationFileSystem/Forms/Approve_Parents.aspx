<%@ Page Title="College Education System | Approve Parents" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Approve_Parents.aspx.cs" Inherits="CollegeEducationFileSystem.Forms.Approve_Parents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../Stylesheets/Grids.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Button CssClass="Button2" ID="Button1" runat="server" Text="Pending" OnClick="Button1_Click" ValidationGroup="be" /><asp:Button CssClass="Button2" ID="Button2" runat="server" Text="Approved" OnClick="Button2_Click" ValidationGroup="be" />
    </div>

    <asp:GridView CssClass="girdss" ID="ApproveParentss" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="userid" DataSourceID="Parentss" ForeColor="#333333" GridLines="None" OnRowCommand="Approved_Parentssss" Visible="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="userid" HeaderText="userid" InsertVisible="False" ReadOnly="True" SortExpression="userid" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
            <asp:BoundField DataField="parentname" HeaderText="parentname" SortExpression="parentname" />
            <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:ButtonField ControlStyle-CssClass="Button" ButtonType="Button" CommandName="aproovep" HeaderText="Action" Text="Approve" />
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
    <asp:SqlDataSource ID="Parentss" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" DeleteCommand="DELETE FROM [Users] WHERE [userid] = @userid" InsertCommand="INSERT INTO [Users] ([username], [password], [name], [email], [address], [contact], [parentname], [qualification], [dob]) VALUES (@username, @password, @name, @email, @address, @contact, @parentname, @qualification, @dob)" SelectCommand="SELECT [userid], [username], [password], [name], [email], [address], [contact], [parentname], [qualification], [dob] FROM [Users] where roleid= '7'" UpdateCommand="UPDATE [Users] SET [username] = @username, [password] = @password, [name] = @name, [email] = @email, [address] = @address, [contact] = @contact, [parentname] = @parentname, [qualification] = @qualification, [dob] = @dob WHERE [userid] = @userid">
        <DeleteParameters>
            <asp:Parameter Name="userid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="parentname" Type="String" />
            <asp:Parameter Name="qualification" Type="String" />
            <asp:Parameter DbType="Date" Name="dob" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="parentname" Type="String" />
            <asp:Parameter Name="qualification" Type="String" />
            <asp:Parameter DbType="Date" Name="dob" />
            <asp:Parameter Name="userid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


<asp:GridView CssClass="girdss" ID="Approved_Parents" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="userid" DataSourceID="A_Parentsss" ForeColor="#333333" GridLines="None" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnRowCommand="Send_Mails" Visible="False">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="userid" HeaderText="userid" InsertVisible="False" ReadOnly="True" SortExpression="userid" />
        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
        <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
        <asp:BoundField DataField="parentname" HeaderText="parentname" SortExpression="parentname" />
        <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
        <asp:ButtonField ControlStyle-CssClass="Button" ButtonType="Button" HeaderText="Action" Text="Send Email" CommandName="Mails" >
<ControlStyle CssClass="Button"></ControlStyle>
        </asp:ButtonField>
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



    <asp:SqlDataSource ID="A_Parentsss" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" DeleteCommand="DELETE FROM [Users] WHERE [userid] = @userid" InsertCommand="INSERT INTO [Users] ([username], [password], [name], [email], [address], [contact], [parentname], [qualification], [dob]) VALUES (@username, @password, @name, @email, @address, @contact, @parentname, @qualification, @dob)" SelectCommand="SELECT [userid], [username], [password], [name], [email], [address], [contact], [parentname], [qualification], [dob] FROM [Users] where roleid='4'" UpdateCommand="UPDATE [Users] SET [username] = @username, [password] = @password, [name] = @name, [email] = @email, [address] = @address, [contact] = @contact, [parentname] = @parentname, [qualification] = @qualification, [dob] = @dob WHERE [userid] = @userid">
        <DeleteParameters>
            <asp:Parameter Name="userid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="parentname" Type="String" />
            <asp:Parameter Name="qualification" Type="String" />
            <asp:Parameter DbType="Date" Name="dob" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="parentname" Type="String" />
            <asp:Parameter Name="qualification" Type="String" />
            <asp:Parameter DbType="Date" Name="dob" />
            <asp:Parameter Name="userid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>



</asp:Content>


