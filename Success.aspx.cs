using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Success : System.Web.UI.Page
{
    private object lblMesssage;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserName"] != null)
        {
            lblMesssage = "Welcome";
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }

}