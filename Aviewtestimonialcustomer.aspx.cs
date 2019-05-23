using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aviewtestimonialcustomer : System.Web.UI.Page
{
    Dataclass dc = new Dataclass();
    DataTable dt = new DataTable();
    int a, i, i1;
    int type, id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            type = 2;
            dt = dc.GetTestimonialimage(type);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            a = Convert.ToInt32(e.CommandArgument);
            i = dc.Removetestimonialimage(3, a);
            //i = dc.Productremove(5, a);
            if (i == 0)
            {
                Response.Write("<script>alert('Not deleted')</script>");
            }
            else
            {
                Response.Write("<script>alert('Successfully deleted')</script>");
            }
        }
    }
}