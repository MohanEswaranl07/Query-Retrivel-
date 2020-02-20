<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Add Image</h3>
    <p style="float:right; color: #51D3FF;">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">LogOut</asp:HyperLink>
</p>
<table style="background-color: #CCCCFF">
<tr><td></td><td>
    <asp:Label ID="Label1" runat="server" Text="Image ID :"></asp:Label></td><td>
        <asp:Label ID="Label5" runat="server"></asp:Label>
    </td><td></td></tr>
<tr><td></td><td>
    <asp:Label ID="Label2" runat="server" Text="Image Name :"></asp:Label></td><td>
        <asp:TextBox ID="TextBox1" runat="server" Width="141px" ></asp:TextBox>
    </td><td></td></tr>
<tr><td></td><td>
    <asp:Label ID="Label3" runat="server" Text="Image Color :"></asp:Label></td><td>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="153px" 
            >
           <asp:ListItem>---Select Color---</asp:ListItem>  
        <asp:ListItem>Red</asp:ListItem>
        <asp:ListItem>Green</asp:ListItem>
        <asp:ListItem>Yellow</asp:ListItem>
        <asp:ListItem>Blue</asp:ListItem>
        <asp:ListItem>Black</asp:ListItem>
        <asp:ListItem>White</asp:ListItem>
        <asp:ListItem>Pink</asp:ListItem>
           <asp:ListItem>Sky Blue</asp:ListItem>
           <asp:ListItem>Violet</asp:ListItem>
           <asp:ListItem>Brown</asp:ListItem>
           <asp:ListItem>Orange</asp:ListItem>
        </asp:DropDownList>
    </td><td></td></tr>
<tr><td></td><td>
    <asp:Label ID="Label4" runat="server" Text="Image Behaviour :"></asp:Label></td><td>
        <asp:TextBox ID="TextBox2" runat="server" Width="142px" ></asp:TextBox>
    </td><td></td></tr>
    <tr><td></td><td>
        <asp:Label ID="Label6" runat="server" Text="Images :"></asp:Label></td><td>
            <asp:FileUpload ID="FileUpload1" runat="server"  />
        </td><td></td></tr>
        <tr><td></td><td></td><td>
            <asp:Button ID="Button1" runat="server" Text="Add" Width="68px" 
                onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" ForeColor="#CC3300"></asp:Label>
            </td><td></td></tr></table>
</asp:Content>

