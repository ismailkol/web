using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class KategoriAdminDetay : System.Web.UI.Page
{

    sqlSinif bgl = new sqlSinif();
    string Kategoriid = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Kategoriid = Request.QueryString["Kategoriid"];

        if (Page.IsPostBack == false)//sayfanın 1 kere yuklenmesini saglıyor 1 alt taraf 1 kere kaydedilip kalıcak
        {

            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", Kategoriid);
            SqlDataReader dr = komut2.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
            }

            bgl.baglanti().Close();
        }
    }

    protected void BtnGüncelle_Click(object sender, EventArgs e)
    {
     
        SqlCommand komut = new SqlCommand("update Tbl_Kategoriler SET KategoriAd=@KAd,KategoriAdet=@KAdet,Kategoriresim=@Kresim where Kategoriid=@Kid",bgl.baglanti());
         komut.Parameters.AddWithValue("@KAd", TextBox1.Text);
        komut.Parameters.AddWithValue("@KAdet", TextBox2.Text);
        komut.Parameters.AddWithValue("@Kresim", FileUpload1.FileName);
        komut.Parameters.AddWithValue("@Kid", Kategoriid);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Güncelleme gerceklesti");

    }
}