<%@ Page Title="Register Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterStudent.aspx.cs" Inherits="ContosoUniversityModelBinding.RegisterStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Register student</h2>
    <ul class="registerlist">
        <li>
            <asp:Label ID="LabelFirstname" runat="server" Text="Last name" Font-Bold="True"></asp:Label>
        </li>
        <li>
            <asp:TextBox ID="TextLastname" runat="server"></asp:TextBox>
        </li>
        <li>
            <asp:Label runat="server" Text="First name" Font-Bold="True"></asp:Label>
        </li>
        <li>
            <asp:TextBox ID="TextFirstname" runat="server"></asp:TextBox>
        </li>
        <li>
            <asp:Label runat="server" Text="Email address" Font-Bold="True"></asp:Label>
        </li>
        <li>
            <asp:TextBox ID="TextEmailaddress" runat="server"></asp:TextBox>
        </li>

        <li>
            <asp:Label ID="Label1" runat="server" Text="Enrollment date" Font-Bold="True"></asp:Label>
        </li>
        <li>
            <asp:Calendar runat="server" ID="CalendarEnrollmentDate"></asp:Calendar>
        </li>

        <li>
            <asp:CheckBox runat="server" Text="Sign up for campus tour" Font-Bold="True"></asp:CheckBox>
        </li>
        <li>
            <asp:Label runat="server" Text="Select year" Font-Bold="True"></asp:Label>
        </li>
        <li>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Freshman</asp:ListItem>
                <asp:ListItem>Sophmore</asp:ListItem>
                <asp:ListItem>Junior</asp:ListItem>
                <asp:ListItem>Senior</asp:ListItem>
            </asp:DropDownList>
        </li>
    </ul>
    <asp:Button ID="ButtonRegister" runat="server" Text="Register"></asp:Button>
    </asp:Content>
