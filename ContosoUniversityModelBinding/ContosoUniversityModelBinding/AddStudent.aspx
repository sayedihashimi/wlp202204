<%@ Page Title="Add Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="ContosoUniversityModelBinding.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Add Student</h1>
    <ul class="registerlist">
        <li><asp:Label runat="server" Text="Last name"></asp:Label></li>
        <li><asp:TextBox runat="server"></asp:TextBox><br /></li>
        <li><asp:Label runat="server" Text="First name"></asp:Label></li>
    </ul>
</asp:Content>
