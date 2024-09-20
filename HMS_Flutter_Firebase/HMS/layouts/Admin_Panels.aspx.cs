using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

using System.Configuration;

public partial class Admin_Panels : System.Web.UI.Page
{

    SqlCommand sCommand;
    SqlDataAdapter sAdapter;
    SqlCommandBuilder sBuilder;
    DataSet sDs;
    DataTable sTable;  

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string connectionString = "Data Source=.;Initial Catalog=pubs;Integrated Security=True";
        string sql = "SELECT * FROM ";
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();
        sCommand = new SqlCommand(sql, connection);
        sAdapter = new SqlDataAdapter(sCommand);
        sBuilder = new SqlCommandBuilder(sAdapter);
        sDs = new DataSet();
        sAdapter.Fill(sDs, "Stores");
        sTable = sDs.Tables["Stores"];
        connection.Close();
        GridView1.DataSource = sDs.Tables["Stores"];
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=DatabaseName;Integrated Security=True");
       SqlCommand comm = new SqlCommand();
        comm.Connection = con;
        con.Open();
        comm.CommandText = "INSERT INTO users (Name,Roll,Marks) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        // string str= "insert into users values(Name ='" + TextBox1.Text + "' and Roll='" + TextBox2.Text + "' and Marks='" + TextBox3.Text + "')";
        comm.ExecuteNonQuery();

        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=DatabaseName;Integrated Security=True");
        SqlCommand comm = new SqlCommand();
        comm.Connection = con;
        con.Open();
        comm.CommandText = "DELETE FROM users (Name,Roll,Marks) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        // string str= "insert into users values(Name ='" + TextBox1.Text + "' and Roll='" + TextBox2.Text + "' and Marks='" + TextBox3.Text + "')";
        comm.ExecuteNonQuery();

        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=DatabaseName;User ID=UserName;Password=Password");
        SqlCommand comm = new SqlCommand();
        comm.Connection = con;
        con.Open();
        comm.CommandText = "UPDATE INTO users (Name,Roll,Marks) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        // string str= "insert into users values(Name ='" + TextBox1.Text + "' and Roll='" + TextBox2.Text + "' and Marks='" + TextBox3.Text + "')";
        comm.ExecuteNonQuery();

        con.Close();
    }
}