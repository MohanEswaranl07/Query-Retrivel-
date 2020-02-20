<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h4>User Search:</h4>
 <table style="background-color: #CCCCFF"><tr><td></td><td></td><td></td></tr>
 <tr><td></td><td style="width: 20px; height: 10px">
     <asp:TextBox ID="TextBox1" runat="server" BackColor="White" Height="29px" 
         Width="396px"></asp:TextBox>
&nbsp;</td><td>
         <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" 
             ImageUrl="~/App/images/seo-icon.png" onclick="ImageButton1_Click" 
             Width="38px" />
     </td></tr>
 <tr><td></td><td></td><td>
     <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
     </td></tr>
 </table>
 <div>
     <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" BackColor="White"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
         CellPadding="3"   ForeColor="Black"
             Width="102%" onitemcommand="LinkButton1ItemCommand_Click" 
         Height="163px" RepeatDirection="Horizontal">
           <FooterStyle BackColor="#CCCCCC" />
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderTemplate>
                                   <span>Search Result</span>
            </HeaderTemplate>
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <ItemTemplate>
                      <asp:ImageButton Width="105px" ID="Image1" runat="server"  BorderStyle="Solid" ImageUrl='<%# Bind("Image", "~/Images/{0}") %>' Height="94px"  />
                          <br />
                          <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("Image") %>' > </asp:LinkButton>
                         
                      </ItemTemplate>
                          <FooterStyle BackColor="White" ForeColor="#333333" />
                          <ItemStyle BorderColor="Silver" BorderStyle="Dotted" BorderWidth="1px" HorizontalAlign="Center"
                              VerticalAlign="Bottom" BackColor="White" ForeColor="#333333" />
</asp:DataList>
     <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label></div>
</asp:Content>

