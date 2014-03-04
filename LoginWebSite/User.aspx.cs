using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            LabelUser.Text = Session["New"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void ButtonLogOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void TryNAudio ()
    {

    }
}