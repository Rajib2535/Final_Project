<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_login.aspx.cs" Inherits="user_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <center>
    <text>User  Login</text>
    </center>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <table>
    
    <td>
    User Name
    
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 20px" 
            Width="249px" Height="24px"></asp:TextBox>
    
    </td>
    <tr>
     <td>
    Password
    
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 20px; margin-bottom: 1px;" 
             Width="243px" Height="24px"></asp:TextBox>
    
    </td>
    </tr>
    
    
    
    
    </table>
    </center>
    <center>
    <br /><br /> 
     
     <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" /><br /> <br /> 
      <asp:Button ID="Button2" runat="server" Text="Sign  up" onclick="Button2_Click" /><br /><br /> 
       <asp:Button ID="Button3" runat="server" Text="Back" onclick="Button3_Click" /><br /> <br /> 
       </center>

      
    </form>


     <center>
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     </center>

</body>
</html>
