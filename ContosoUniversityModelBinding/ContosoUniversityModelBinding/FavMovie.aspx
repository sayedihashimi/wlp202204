<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FavMovie.aspx.cs" Inherits="ContosoUniversityModelBinding.FavMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>todo: set title</h1>
    <asp:ListBox runat="server" ID="mylistbox"
        AutoPostBack="True">
        <asp:ListItem>The Big Lebowski</asp:ListItem>
        <asp:ListItem>Inception</asp:ListItem>
        <asp:ListItem>Shawshank Redemption</asp:ListItem>
    </asp:ListBox>.
    <asp:Label runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button runat="server" Text="Save selection" ID="MyButton"></asp:Button>
    
    <div>        
        <asp:Label ID="Label1" runat="server" Text="Label">selected value:</asp:Label> 
        <asp:Label ID="LabelSelectedValue" runat="server" Text=""></asp:Label>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="saved value:"></asp:Label>
        <asp:Label ID="LabelSavedValue" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
