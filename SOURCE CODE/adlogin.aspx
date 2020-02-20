<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adlogin.aspx.cs" Inherits="adlogin" Title="Untitled Page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link href="App/styles.css" rel="stylesheet" type="text/css" />
   
    <style type="text/css">
        .style1
        {
            height: 47px;
        }
    </style>
   
</head>
<body  background="Images/kraft_background_of_the_large_size_of_highdefinition_picture_1_169649.jpg" style="background-image: url('/SOURCE CODE/Images/background_petrol_blue_262821.jpg')">

		<!-- TITLE --><br /><br />
		<h3><a href="#">EFFICIENT QUERY RETRIEVAL BASED N PAGE RANKING IN WEB DATABASE </a></h3>
       
		<!-- END TITLE -->
	


		<div class="nav">
			<ul>	
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </li>
				<!-- MENU -->
				<li><a href="Default.aspx" style="background-color: #CCCCFF">Home</a></li>
				<li><a href="adlogin.aspx" style="background-color: #CCCCFF; height: 15px;">Admin Login</a></li>
				
				<!-- END MENU -->
			</ul>
		</div>
	
<div class="pagewidth">
	<div class="page-wrap">
		<div class="content">
		<form id="frm1" runat="server" style="background-color: #CCCCFF">
			<!-- CONTENT -->
			<table style="background-color: #CCCCFF">
                    <tr>
                        <td>
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/adimg/admin.jpg" 
                                Width="258px" />
                        </td>
                        <td>  
                            <asp:Panel ID="Panel1" runat="server" Height="298px" 
                    Width="351px" HorizontalAlign="Center">
               <br />
               <br />
                <table style="height: 121px; width: 384px">
                <tr><td style="font-family: 'Times New Roman', Times, serif; font-style: normal;"></td><td></td><td></td></tr>
                <tr><td style="font-family: 'Times New Roman', Times, serif; font-style: normal;">
                    <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
                        
                <td><asp:TextBox ID="txtName" runat="server" Width="178px"></asp:TextBox>
                </td>
                <td>
                
                <asp:RequiredFieldValidator ID="RV" runat="server" ControlToValidate="txtName" 
                             SetFocusOnError="True" ErrorMessage="*" Font-Size="X-Large"></asp:RequiredFieldValidator></td></tr>
                <tr><td class="style1" 
                        style="font-family: 'Times New Roman', Times, serif; font-style: normal;">
                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
                <td class="style1"><asp:TextBox ID="txtPass" runat="server" Width="181px" 
                        TextMode="Password"></asp:TextBox></td>
                <td class="style1">
                <asp:RequiredFieldValidator ID="RV1" runat="server" ControlToValidate="txtPass" 
                             SetFocusOnError="True" ErrorMessage="*" Font-Size="X-Large"></asp:RequiredFieldValidator></td></tr>
                <tr><td style="font-family: 'Times New Roman', Times, serif; font-style: normal;"></td><td></td><td></td></tr>
                <tr><td style="font-family: 'Times New Roman', Times, serif; font-style: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                        BorderColor="#66FFFF" />
                    </td><td> 
                        <asp:Button ID="Button2" runat="server" Text="Cancel" 
                            onclick="Button2_Click" Width="113px" BorderColor="#66FFFF" /></td><td></td></tr>
                    <tr><td style="font-family: 'Times New Roman', Times, serif; font-style: normal;"></td><td></td><td></td></tr>
                </table>
                <br />
                   
            </asp:Panel></td>
                    </tr>
            </table>

			 
			<br /><br />
			
			<!-- END CONTENT -->
			</form>
		</div>
		<div class="clear"></div>		
	</div>
	<div class="footer-wrapper-outside">
		<div class="footer-wrapper">
			<div class="footer">
				<p></p> 
			</div>	
		</div>
	</div>
</div>
</body>
</html>



