using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string UserID = "";
        string Password = "";
        string Email = "";

        SqlDataReader MyReader;
        SqlConnection MyConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand MyCommand = new SqlCommand(SqlDataSource1.SelectCommand);

        MyCommand.Connection = MyConnection;
        MyCommand.Parameters.AddWithValue("@Password", txtPass.Text);
        MyCommand.Parameters.AddWithValue("@Email", txtUser.Text);

        MyConnection.Open();

        MyReader = MyCommand.ExecuteReader(CommandBehavior.CloseConnection);

        while (MyReader.Read())
        {
            UserID = MyReader.GetString(2).Trim() + " " + MyReader.GetString(3).Trim();
            Password = MyReader.GetString(1).Trim();
            Email = MyReader.GetString(0).Trim();
        }
        MyConnection.Close();

        if (txtPass.Text == Password && Password != "")
        {
            Session["UserID"] = UserID;
            Response.Redirect("Success.aspx");
        }

        else
        {
            lblError.Text = "Incorrect User ID or Password.";
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        //code for clicking on the cancel button

        //Clear out the controls
        txtUser.Text = "";
        txtPass.Text = "";
        lblError.Text = "";

        //Redirect to default
        Response.Redirect("Default.aspx");

    }
}