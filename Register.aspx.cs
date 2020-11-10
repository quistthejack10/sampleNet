using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection MyConnection = new SqlConnection(SqlDataSource1.ConnectionString);

        SqlCommand MyCommand = new SqlCommand(SqlDataSource1.InsertCommand);
        MyCommand.Connection = MyConnection;

        MyCommand.Parameters.AddWithValue("@Email", txtEmail2.Text);
        MyCommand.Parameters.AddWithValue("@Password", txtPass2.Text);
        MyCommand.Parameters.AddWithValue("@FName", txtFName.Text);
        MyCommand.Parameters.AddWithValue("@LName", txtLName.Text);
        MyCommand.Parameters.AddWithValue("@YOB", Convert.ToInt32(txtYOB.Text));

        MyConnection.Open();

        MyCommand.ExecuteNonQuery();

        MyConnection.Close();

        Response.Redirect("Default.aspx");


    }
}