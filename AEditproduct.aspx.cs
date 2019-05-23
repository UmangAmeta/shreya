using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AEditproduct : System.Web.UI.Page
{

    DataTable dt, dt3 = new DataTable();
    Dataclass dc = new Dataclass();
    SqlDataAdapter da;
    string c, s, qu, ab, productname, description, imagename, imagename2;

    int a, i, i1, flag = 0, category;
    byte[] bytes;
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Convert.ToInt32(Request.QueryString["id"].ToString());

        if (!IsPostBack)
        {
            dt = dc.getProductdetailbyid(2, a);
            ddlCategory.SelectedValue = dt.Rows[0]["CategoryId"].ToString();
            ProductName.Text = dt.Rows[0]["Productname"].ToString();
            sc_contact_form_message.InnerText = dt.Rows[0]["ProductDescription"].ToString();
            Literal1.Text = "<img src=" + dt.Rows[0]["ProductLogo"].ToString() + " height=135px width=135px>";
            dt3 = dc.Getproductimage(7, a);
            for (int i = 1; i < dt3.Rows.Count; i++)
            {

                Literal2.Text += "<img src='" + dt3.Rows[i]["ImageUrl"].ToString() + "' height=135px width=135px><br/>";
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        productname = ProductName.Text;
        category = Convert.ToInt32(ddlCategory.SelectedValue);
        description = sc_contact_form_message.InnerText;
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
        else
        {
            dt = dc.getProductdetailbyid(2, a);
            imagename = dt.Rows[0]["ProductLogo"].ToString();
        }

        i = dc.UpdateProduct(4, a, category, productname, imagename, description);



        if (FileUpload2.HasFile)
        {
            Random rd = new Random();
            HttpFileCollection fileCollection = Request.Files;
            for (int y = 0; y < fileCollection.Count; y++)
            {
                HttpPostedFile uploadfile = fileCollection[y];
                imagename2 = rd.Next(1000, 9999) + Path.GetFileName(uploadfile.FileName);
                if (uploadfile.ContentLength > 0)
                {
                    uploadfile.SaveAs(Server.MapPath("~/Productimage/") + imagename2);
                    i1 = dc.UpdateProductimages(flag, a, "Productimage/"+imagename2);
                    flag++;
                }
            }

        }



        if (i == 0)
        {
            Response.Write("<script>alert('not Added')</script>");
        }
        else
        {
            Response.Write("<script>alert('Update Successfully')</script>");
            Response.Redirect("~/AdminDefault.aspx");
        }

    }
}