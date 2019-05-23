using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Aaddproduct : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DataSet ds = new DataSet();
    Dataclass dc = new Dataclass();
    SqlConnection con;
    SqlDataAdapter da;
    SqlCommand cmd;


    string s, c, productname, category, description, imagename, imagename2, typeid;
    int i, productid, type;
    byte[] bytes, bytes2;
    protected void Page_Load(object sender, EventArgs e)
    {


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        productname = ProductName.Text;
        category = ddlCategory.SelectedValue;
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
        type = 1;
        i = dc.AddProduct(type, Convert.ToInt32(category), productname, imagename, description);
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
                    string imag = "Productimage/" + imagename2;
                    int ret = dc.mutilpleimage(i, imag);
                }
            }
        }
    }
}