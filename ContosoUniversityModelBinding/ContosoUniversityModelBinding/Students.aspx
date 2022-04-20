﻿<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="ContosoUniversityModelBinding.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <a href="https://localhost:5001/">go</a>
    <h1>Students</h1>
    <p>All students that are currently enrolled are below.</p>
    <asp:ValidationSummary ShowModelStateErrors="true" runat="server" />
    <br />
    <asp:HyperLink NavigateUrl="~/AddStudent" Text="Add New Student" runat="server" />
    <asp:Label runat="server" Text="Show:" />
    <asp:DropDownList runat="server" AutoPostBack="true" ID="DisplayYear">
        <asp:ListItem Text="All" Value="" />
        <asp:ListItem Text="Sophomore" />
        <asp:ListItem Text="Freshman" />
        <asp:ListItem Text="Junior" />
        <asp:ListItem Text="Senior" />
    </asp:DropDownList>
    <asp:GridView runat="server" ID="studentsGrid"
        ItemType="ContosoUniversityModelBinding.Models.Student"
        DataKeyNames="StudentID"
        SelectMethod="studentsGrid_GetData"
        UpdateMethod="studentsGrid_UpdateItem"
        DeleteMethod="studentsGrid_DeleteItem"
        AutoGenerateEditButton="true"
        AutoGenerateDeleteButton="true"
        AutoGenerateColumns="false"
        AllowSorting="true">
        <Columns>
            <asp:DynamicField DataField="StudentID" />
            <asp:DynamicField DataField="NickName" HeaderText="Nick Name" />
            <asp:DynamicField DataField="LastName" HeaderText="LastName" />
            <asp:DynamicField HeaderText="FirstName" DataField="FirstName"></asp:DynamicField>
            <asp:DynamicField HeaderText="Year" DataField="Year"></asp:DynamicField>
            <asp:DynamicField DataField="EnrollmentDate" />
            <asp:TemplateField HeaderText="Total Credits">
                <ItemTemplate>
                    <asp:Label Text="<%# Item.Enrollments.Sum(en => en.Course.Credits) %>"
                        runat="server" />

                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>
</asp:Content>
