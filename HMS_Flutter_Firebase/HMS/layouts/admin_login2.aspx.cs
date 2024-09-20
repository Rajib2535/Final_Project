using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_login2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con=new SqlConnection();
        
        try{  
        string uid = TextBox1.Text;  
        string pass = TextBox2.Text;  
        con.Open();  
        string qry = "select * from A_login where UserId='" + uid + "' and Password='" + pass + "'";  
        SqlCommand cmd = new SqlCommand(qry,con);  
        SqlDataReader sdr = cmd.ExecuteReader();  
        if(sdr.Read())  
        {  
            Label1.Text = "Login Sucess......!!";  
        }  
        else  
        {  
            Label1.Text = "UserId & Password Is not correct Try again..!!";  
  
        }  
            con.Close();  
        }  
        catch(Exception ex)  
        {  
            Response.Write(ex.Message);  
        }  
}      
    
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}