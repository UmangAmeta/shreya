﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addtestimonialcustomer : System.Web.UI.Page
{
    Dataclass dc = new Dataclass();
    string imagename,customername,customerdesignation,Customercomment;
    int i;
    byte[] bytes;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        customername = Customername.Text;
        customerdesignation = Customerdesignation.Text;
        Customercomment = comment.InnerText;
        if (FileUpload1.HasFile)
        {
            Random rd = new Random();
            string strname = rd.Next(1000, 9999) + Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Productimage/" + strname));
            imagename = "Productimage/" + strname;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    bytes = br.ReadBytes((Int32)fs.Length);
                }
            }
        }

        i = dc.addtestimonialimage(1, customername, customerdesignation, Customercomment, imagename);
        if (i == 0)
        {
            Response.Write("<script>alert('Not Added')</script>");
        }
        else
        {

            Response.Redirect("~/Aviewtestimonialcustomer.aspx");
        }

    }
}