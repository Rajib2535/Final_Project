<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login2.aspx.cs" Inherits="admin_login2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <center>
    <text>Admin Login</text>
    </center>
</head>
<body>
    <form id="form1" runat="server">
     <td>
    Admin Name
    
        <asp:TextBox ID="TextBox1" runat="server" Width="194px"></asp:TextBox>
    
    </td>
    <tr>
     <td>
    Password
    
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 20px" 
             Width="193px" Height="24px"></asp:TextBox>
    
    </td>
    </tr>

    <center>
    <br /><br /> 
     
     <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" /><br /> <br /> 
      <asp:Button ID="Button2" runat="server" Text="Admin Sign  up" 
            onclick="Button2_Click" style="height: 26px" /><br /><br /> 
       <asp:Button ID="Button3" runat="server" Text="Back" onclick="Button3_Click" /><br /> <br /> 
       </center>

        
   </form>
  <center>
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     </center>
   
</body>
</html>
