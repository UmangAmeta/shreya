using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prodetail : System.Web.UI.Page
{
    DataTable dt, dt2 = new DataTable();
    Dataclass dc = new Dataclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(Request.QueryString["id"]);
        if (!IsPostBack)
        {
            dt = dc.getProductdetailbyid(2,a);
            dt2 = dc.Getproductimage(7,a);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Repeater moreimage = (Repeater)e.Row.FindControl("Repeater1");
            moreimage.DataSource = dt2;
            moreimage.DataBind();
        }
    }
}