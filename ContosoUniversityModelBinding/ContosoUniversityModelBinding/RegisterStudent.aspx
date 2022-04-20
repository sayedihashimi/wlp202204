<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterStudent.aspx.cs" Inherits="ContosoUniversityModelBinding.RegisterStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Register student</h2>
    <ul class="registerlist">
        <li>
            <asp:Label ID="LabelFirstname" runat="server" Text="Last name"></asp:Label></li>
        <li>
            <asp:TextBox ID="TextLastname" runat="server"></asp:TextBox></li>
        <li>
            <asp:Label runat="server" Text="First name"></asp:Label></li>
        <li>
            <asp:TextBox ID="TextFirstname" runat="server"></asp:TextBox></li>
        <li>
            <asp:Label ID="Label1" runat="server" Text="Enrollment date"></asp:Label></li>
        <li>
            <asp:TextBox ID="TextEnrollmentDate" runat="server"></asp:TextBox></li>
        <li><asp:Label runat="server" Text="Home city"></asp:Label></li>
        <li>
            <asp:TextBox runat="server"></asp:TextBox></li>
        <li><asp:Label runat="server" Text="Home state"></asp:Label></li>
        <li></li>
    </ul>
    <asp:Button ID="ButtonRegister" runat="server" Text="Register"></asp:Button>
</asp:Content>
