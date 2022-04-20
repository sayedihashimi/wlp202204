<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutComplete.aspx.cs" Inherits="ContosoUniversityModelBinding.AboutComplete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Which movie is best?</h1>
    <asp:ListBox runat="server" ID="mylistbox"
        OnSelectedIndexChanged="mylistbox_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem>The Big Lebowski</asp:ListItem>
        <asp:ListItem>Inception</asp:ListItem>
        <asp:ListItem>Shawshank Redemption</asp:ListItem>
    </asp:ListBox>.
    <asp:Label runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button runat="server" Text="Submit" ID="MyButton" OnClick="MyButton_Click"></asp:Button>
    
    <div>        
        <asp:Label ID="Label1" runat="server" Text="Label">selected value:</asp:Label> 
        <asp:Label ID="LabelSelectedValue" runat="server" Text=""></asp:Label>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="saved value:"></asp:Label>
        <asp:Label ID="LabelSubmitted" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
