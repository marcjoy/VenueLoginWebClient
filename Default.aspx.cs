using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        Login();
    }

    protected void Login()
    {
        VenueServiceReference.VenueLoginRegistrationServiceClient vl = new VenueServiceReference.VenueLoginRegistrationServiceClient();

        int key = vl.VenueLogin(userTextBox.Text, passwordTextBox.Text);

        if(key != 0)
        {
            errorLabel.Text = "Welcome";
            Session["UserKey"] = key;
        }
        else
        {
            errorLabel.Text = "Invalid Login";
        }
    }
}