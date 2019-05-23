using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

/// <summary>
/// Summary description for Dataclass
/// </summary>
public class Dataclass
{

    SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt;

    string c = WebConfigurationManager.ConnectionStrings["DBCS"].ToString();

    public int AddProduct( int type,int CategoryId, string Productname, string ProductLogo,string ProductDescription)

    {

        con = new SqlConnection(c);
        cmd = new SqlCommand("sp_crudoperation_product", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@type", type);
        cmd.Parameters.AddWithValue("@CategoryId", CategoryId);
        cmd.Parameters.AddWithValue("@Productname", Productname);
        cmd.Parameters.AddWithValue("@ProductLogo", ProductLogo);
        cmd.Parameters.AddWithValue("@ProductDescription", ProductDescription);
        cmd.Parameters.Add("@retValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        int retval = (int)cmd.Parameters["@retValue"].Value;
        con.Close();
        return retval;
    }


    public int mutilpleimage(int Productid, string ImageUrl)
    {
        con = new SqlConnection(c);
        cmd = new SqlCommand("sp_insert_mutipleimage", con);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Productid", Productid);
        cmd.Parameters.AddWithValue("@ImageUrl", ImageUrl);
        cmd.Parameters.Add("@retValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        int retval = (int)cmd.Parameters["@retValue"].Value;
        con.Close();
        return retval;
    }

    public DataTable getProducts(int type)
    {
        DataTable dt = new DataTable();
        using (var con = new SqlConnection(c))
        using (var cmd = new SqlCommand("sp_crudoperation_product", con))
        using (var da = new SqlDataAdapter(cmd))
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@type", type);
            da.Fill(dt);
        }
        return dt;
    }



    public int Productremove(int type,int Productid)
    {
        SqlConnection con = new SqlConnection(c);
        SqlCommand cmd = new SqlCommand("sp_crudoperation_product", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@type", type);
        cmd.Parameters.AddWithValue("@Productid", Productid);
        cmd.Parameters.Add("@retValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        int retval = (int)cmd.Parameters["@retValue"].Value;
        con.Close();
        return retval;

    }

    public int RemoveProductimage(int type,int Productid)
    {
        SqlConnection con = new SqlConnection(c);
        SqlCommand cmd = new SqlCommand("sp_crudoperation_product", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@type", type);
        cmd.Parameters.AddWithValue("@Productid", Productid);
        cmd.Parameters.Add("@retValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        int retval = (int)cmd.Parameters["@retValue"].Value;
        con.Close();
        return retval;
    }

    public DataTable getProductdetailbyid(int type,int Productid)
    {
        DataTable dt = new DataTable();
        using (var con = new SqlConnection(c))
        using (var cmd = new SqlCommand("sp_crudoperation_product", con))
        using (var da = new SqlDataAdapter(cmd))
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@type", type);
            cmd.Parameters.AddWithValue("@Productid", Productid);
            da.Fill(dt);
        }
        return dt;
    }


    public DataTable Getproductimage(int type,int Productid)
    {
        DataTable dt = new DataTable();
        using (var con = new SqlConnection(c))
        using (var cmd = new SqlCommand("sp_crudoperation_product", con))
        using (var da = new SqlDataAdapter(cmd))
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@type", type);
            cmd.Parameters.AddWithValue("@Productid", Productid);
            da.Fill(dt);
        }
        return dt;
    }



    public DataTable getproducttypename(int type, int Productid )

    {
        dt = new DataTable();
        using (var con = new SqlConnection(c))
        using (var cmd = new SqlCommand("sp_crudoperation_product", con))
        using (var da = new SqlDataAdapter(cmd))
        {
            cmd.Parameters.AddWithValue("@type", type);
            cmd.Parameters.AddWithValue("@Productid", Productid);
            cmd.CommandType = CommandType.StoredProcedure;

            da.Fill(dt);
        }
        return dt;
    }

    public int UpdateProduct(int type,int Productid, int CategoryId, string Productname, string ProductLogo, string ProductDescription)
    {
        con = new SqlConnection(c);
        cmd = new SqlCommand("sp_crudoperation_product", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@type", type);
        cmd.Parameters.AddWithValue("@Productid", Productid);
        cmd.Parameters.AddWithValue("@CategoryId", CategoryId);
        cmd.Parameters.AddWithValue("@Productname", Productname);
        cmd.Parameters.AddWithValue("@ProductLogo", ProductLogo);
        cmd.Parameters.AddWithValue("@ProductDescription", ProductDescription);
        cmd.Parameters.Add("@retValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        int retval = (int)cmd.Parameters["@retValue"].Value;
        con.Close();
        return retval;
    }

    public int UpdateProductimages(int flag, int Productid, string ImageUrl)
    {
        SqlConnection con = new SqlConnection(c);
        SqlCommand cmd = new SqlCommand("sp_update_productimages", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Flag", flag);
        cmd.Parameters.AddWithValue("@Productid", Productid);
        cmd.Parameters.AddWithValue("@ImageUrl", ImageUrl);
        cmd.Parameters.Add("@retValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        int retval = (int)cmd.Parameters["@retValue"].Value;
        con.Close();
        return retval;
    }


    public int addgalleryimage(int type, int Categoryid, string ImageUrl)
    {
        con = new SqlConnection(c);
        cmd = new SqlCommand("sp_crud_operation_Ongallery", con);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@type", type);
        cmd.Parameters.AddWithValue("@Categoryid", Categoryid);
        cmd.Parameters.AddWithValue("@ImageUrl", ImageUrl);
        cmd.Parameters.Add("@retValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        int retval = (int)cmd.Parameters["@retValue"].Value;
        con.Close();
        return retval;
    }


    public DataTable Getgalleryimage(int type)
    {
        DataTable dt = new DataTable();
        using (var con = new SqlConnection(c))
        using (var cmd = new SqlCommand("sp_crud_operation_Ongallery", con))
        using (var da = new SqlDataAdapter(cmd))
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@type", type);
          
            da.Fill(dt);
        }
        return dt;
    }


    public int RemoveGalleryimage(int type, int Imageid)
    {
        SqlConnection con = new SqlConnection(c);
        SqlCommand cmd = new SqlCommand("sp_crud_operation_Ongallery", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@type", type);
        cmd.Parameters.AddWithValue("@Imageid", Imageid);
        cmd.Parameters.Add("@retValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        int retval = (int)cmd.Parameters["@retValue"].Value;
        con.Close();
        return retval;
    }


    public int addtestimonialimage(int type, string Customername, string Customerdesignation,string comment,string ImageUrl)
    {
        con = new SqlConnection(c);
        cmd = new SqlCommand("Sp_Crudoperation_testimonial", con);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@type", type);
        cmd.Parameters.AddWithValue("@Customername", Customername);
        cmd.Parameters.AddWithValue("@Customerdesignation", Customerdesignation);
        cmd.Parameters.AddWithValue("@Commnet", comment);
        cmd.Parameters.AddWithValue("@ImageUrl", ImageUrl);
        cmd.Parameters.Add("@retValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        int retval = (int)cmd.Parameters["@retValue"].Value;
        con.Close();
        return retval;
    }

    public DataTable GetTestimonialimage(int type)
    {
        DataTable dt = new DataTable();
        using (var con = new SqlConnection(c))
        using (var cmd = new SqlCommand("Sp_Crudoperation_testimonial", con))
        using (var da = new SqlDataAdapter(cmd))
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@type", type);

            da.Fill(dt);
        }
        return dt;
    }

    public int Removetestimonialimage(int type, int Customerid)
    {
        SqlConnection con = new SqlConnection(c);
        SqlCommand cmd = new SqlCommand("Sp_Crudoperation_testimonial", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@type", type);
        cmd.Parameters.AddWithValue("@Customerid", Customerid);
        cmd.Parameters.Add("@retValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        int retval = (int)cmd.Parameters["@retValue"].Value;
        con.Close();
        return retval;
    }


}