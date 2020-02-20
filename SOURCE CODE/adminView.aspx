<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminView.aspx.cs" Inherits="adminView" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><asp:DataList ID="DataList1" runat="server" RepeatColumns="5" BackColor="White"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"   ForeColor="Black"
             Width="100%">
           <FooterStyle BackColor="#CCCCCC" />
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderTemplate>
                                   <span>Image Updated</span>
            </HeaderTemplate>
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <ItemTemplate>
                       <table  style="font-family:Courier New;border-style:dotted;border-width:thick" >
        <tr> <td align="right">Image Id :-</td>                 
             <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("Imgid") %>' Font-Bold="True"
         Font-Size="10pt" ForeColor="#336699" Width="100%" /></td></tr>
         <tr> <td align="right">Image Name :-</td>                 
             <td><asp:Label ID="Label7" runat="server" Text='<%# Eval("ImgName") %>' Font-Bold="True"
         Font-Size="10pt" ForeColor="#336699" Width="100%" /></td></tr>
         <tr> <td align="right">Image Color :-</td>                 
             <td><asp:Label ID="Label8" runat="server" Text='<%# Eval("ImgClr") %>' Font-Bold="True"
         Font-Size="10pt" ForeColor="#336699" Width="100%" /></td></tr>
         <tr> <td align="right">Image Behaviour :-</td>                 
             <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("ImgBhr") %>' Font-Bold="True"
         Font-Size="10pt" ForeColor="#336699" Width="100%" /></td></tr>
          <tr> <td align="right">Binary :-</td>                 
             <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("ImgBry") %>' Font-Bold="True"
         Font-Size="10pt" ForeColor="#336699" Width="100%" /></td></tr>
        <tr> <td align="right">Image :-</td>                 
             <td><asp:Label ID="Label4" runat="server" Text='<%# Eval("Image") %>' Font-Bold="True"
         Font-Size="10pt" ForeColor="#336699" Width="100%" /></td></tr>
      <tr><td valign="top"></td><td>
        <asp:ImageButton Width="105px" ID="Image1" runat="server"  BorderStyle="Solid" ImageUrl='<%# Bind("Image", "~/Images/{0}") %>'
                      Height="94px"  /></td></tr></table>
                          <br />
                      </ItemTemplate>
                          <FooterStyle BackColor="White" ForeColor="#333333" />
                          <ItemStyle BorderColor="Silver" BorderStyle="Dotted" BorderWidth="1px" HorizontalAlign="Center"
                              VerticalAlign="Bottom" BackColor="White" ForeColor="#333333" />
</asp:DataList></div>
</asp:Content>

