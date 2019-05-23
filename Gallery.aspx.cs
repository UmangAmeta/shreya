using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Gallery : System.Web.UI.Page
{
    Dataclass dc = new Dataclass();
    DataTable dt,dt1,dt2,dt3 = new DataTable();
    int a, i, i1;
    int type, id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //type = 2;
            //dt = dc.Getgalleryimage(type);
            //Repeater1.DataSource = dt;
            //Repeater1.DataBind();

            dt1 = dc.Getgalleryimage(3);
            Repeater2.DataSource = dt1;
            Repeater2.DataBind();

            dt2 = dc.Getgalleryimage(4);
            Repeater3.DataSource = dt2;
            Repeater3.DataBind();

            dt3 = dc.Getgalleryimage(5);
            Repeater4.DataSource = dt3;
            Repeater4.DataBind();


        }

    }
}