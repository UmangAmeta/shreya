﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advertisment : System.Web.UI.Page
{
    Dataclass dc = new Dataclass();
    DataTable dt = new DataTable();
    int a, i, i1;
    int type, id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            type = 8;
            dt = dc.getProducts(type);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }
    }
}