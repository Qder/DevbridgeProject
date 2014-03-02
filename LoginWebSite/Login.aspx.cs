using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        con.Open();
        string cmdStr = "select count(*) from Registration where UserName = '" + TextBox1.Text + "'";
        SqlCommand CheckUser = new SqlCommand (cmdStr, con);
        int temp = Convert.ToInt32(CheckUser.ExecuteScalar().ToString());
        if (temp == 1)
        {
            string cmdStr2="Select Password from Registration where UserName = '" + TextBox1.Text + "'";
            SqlCommand pass = new SqlCommand(cmdStr2, con);
            string password=pass.ExecuteScalar().ToString();
            con.Close();
            if (password == TextBox2.Text)
            {
                Session["New"] = TextBox1.Text;
                if (TextBox1.Text == "admin")
                {
                    Response.Redirect("Secure.aspx");
                }
                else
                {
                    Response.Redirect("User.aspx");
                }
            }
            else
            {
                Label1.Visible =true;
                Label1.Text = "Invalid Password...!";

            }
        }
            else
            {
                Label1.Visible =true;
                Label1.Text = "Invalid User Name...!";
            }
        }
    }