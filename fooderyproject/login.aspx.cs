using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fooderyproject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            try
            {
                // Redirect the user to another page after successful login
                Response.Redirect("partener.aspx");
            }
            catch (Exception ex)
            {
                // Log or handle the exception
                // For debugging purposes, you can also print the exception message
                Response.Write("An error occurred: " + ex.Message);
            }
        }
    }
}