<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="intern.aspx.cs" Inherits="intern" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" BackColor="#CCCCFF"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3"   ForeColor="Black"
             Width="100%" onitemcommand="HyperLinkItemCommand_Click" 
        RepeatDirection="Horizontal">
           <FooterStyle BackColor="#CCCCCC" />
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderTemplate>
                                   <span> Users’ Search Intention</span>
            </HeaderTemplate>
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <ItemTemplate>
                      <asp:ImageButton Width="105px" ID="Image1" runat="server"  BorderStyle="Solid" ImageUrl='<%# Bind("Image", "~/Images/{0}") %>'
                      Height="94px"  />
                          <br />
                          <asp:HyperLink ID="HyperLink1" Text='<%# Bind("Image") %>' runat="server"/>
                         
                      </ItemTemplate>
                          <FooterStyle BackColor="White" ForeColor="#333333" />
                          <ItemStyle BorderColor="Silver" BorderStyle="Dotted" BorderWidth="1px" HorizontalAlign="Center"
                              VerticalAlign="Bottom" BackColor="White" ForeColor="#333333" />
</asp:DataList>
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
</div>
</asp:Content>

