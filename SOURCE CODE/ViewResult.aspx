<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="ViewResult.aspx.cs" Inherits="ViewResult" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" BackColor="White"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3"   ForeColor="Black"
             Width="100%" onitemcommand="HyperLinkItemCommand_Click" 
            RepeatDirection="Horizontal" Height="187px">
           <FooterStyle BackColor="#CCCCCC" />
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderTemplate>
                                   <span>Visual Similarities</span>
            </HeaderTemplate>
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <ItemTemplate>
                      <asp:ImageButton Width="105px" ID="Image1" runat="server"  BorderStyle="Solid" ImageUrl='<%# Bind("Image", "~/Images/{0}") %>'
                      Height="94px" OnClick="Image1_Click"  />
                          <br />
                          <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("Image") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                         
                      </ItemTemplate>
                          <FooterStyle BackColor="White" ForeColor="#333333" />
                          <ItemStyle BorderColor="Silver" BorderStyle="Dotted" BorderWidth="1px" HorizontalAlign="Center"
                              VerticalAlign="Bottom" BackColor="White" ForeColor="#333333" />
</asp:DataList>
</div>
    <asp:Label ID="Label1" runat="server" Visible="False" ></asp:Label>
    <asp:Label ID="Label2" runat="server" Visible="False" ></asp:Label>
</asp:Content>

