using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{

    string username, password, email;
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        email = "Shr.advertising@gmail.com";
        password = "9893954975";
        username = "Shreya";

        if (TextBox1.Text == email && TextBox2.Text == password)
        {

            Session["username"] = username;
            Response.Redirect("AdminDefault.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid credential')</script>");
        }
    }
}