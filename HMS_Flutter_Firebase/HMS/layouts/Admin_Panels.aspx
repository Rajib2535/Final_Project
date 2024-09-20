<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Panels.aspx.cs" Inherits="Admin_Panels" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <center>
    <text>Admin Panel</text>
    </center>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <table>
    
    <td>
    Name
    
        <asp:TextBox ID="TextBox1" runat="server" Width="162px"></asp:TextBox>
    
    </td>
    <tr>
     <td>
    ID
    
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 21px" 
             Width="157px"></asp:TextBox>
    
    </td>
    </tr>
     <td>
    Marks
    
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Width="156px"></asp:TextBox>
    
    </td>
     
    
    
    
    </table>
    </center>
    <center>
    <br /><br /> 
     
     <asp:Button ID="Button1" runat="server" Text="Insert" onclick="Button1_Click" /><br /> <br /> 
      <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" /><br /><br /> 
       <asp:Button ID="Button3" runat="server" Text="Update" onclick="Button3_Click" /><br /> <br /> 
       </center>

    <center>
    <asp:GridView ID="GridView1" runat="server" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>

    </center>
    <br /><br />
   <center>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
   </center>
    </form>
</body>
</html>
