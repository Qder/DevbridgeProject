using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }
    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            String insCmd = "Insert into Registration (UserName, Password, EmailAddress) values (@UserName, @Password, @EmailAddress)";
            SqlCommand insertUser = new SqlCommand(insCmd, con);
            insertUser.Parameters.AddWithValue("@UserName", TextBoxName.Text);
            insertUser.Parameters.AddWithValue("@Password", TextBoxPassword.Text);
            insertUser.Parameters.AddWithValue("@EmailAddress", TextBoxEmail.Text);

            try
            {
                insertUser.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Login.aspx");
            }
            catch (Exception er)
            {
                Response.Write("<b>Somethink Really Bad Happened... Please Try Again.</b>");
            }
            //Any Special Action You Want To Add...
            finally
            {

            }
        }
        else
        {
            Response.Write("Registration failed...");
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        con.Open();
        string cmdStr = "Select count(*) from Registration where UserName='" + TextBoxName.Text + "'";
        SqlCommand userExist = new SqlCommand(cmdStr, con);
        int temp = Convert.ToInt32(userExist.ExecuteScalar().ToString());
        con.Close();
        if (temp >= 1)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }

    protected void TextBoxName_TextChanged(object sender, EventArgs e)
    {
        CustomValidator1_ServerValidate(TextBoxName, null);
    }
}