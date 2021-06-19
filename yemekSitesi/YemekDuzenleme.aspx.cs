using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDuzenleme : System.Web.UI.Page
{

    sqlSinif bgl = new sqlSinif();
    string yemekid = "";
    static string kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["Yemekid"];

        if (Page.IsPostBack == false)//sayfanın 1 kere yuklenmesini saglıyor 1 alt taraf 1 kere kaydedilip kalıcak
        {

            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut2.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                kategoriid = dr[7].ToString();
            }
            bgl.baglanti().Close();

            SqlCommand komut3 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut3.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

            bgl.baglanti().Close();
        }
    }


    protected void BtnGüncelle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Update Tbl_Yemekler SET YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4 where yemekid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", yemekid);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();



        if (kategoriid != DropDownList1.SelectedValue)
        {

            String kategoriSayisi = "";
            SqlCommand komut2 = new SqlCommand("Select KategoriAdet from Tbl_Kategoriler where Kategoriid=@K1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@k1", DropDownList1.SelectedValue);
            SqlDataReader dr = komut2.ExecuteReader();

            while (dr.Read())
            {
                kategoriSayisi = dr[0].ToString();
            }
            bgl.baglanti().Close();
            int sayi = Convert.ToInt32(kategoriSayisi);
            sayi = sayi + 1;
            kategoriSayisi = sayi.ToString();

            SqlCommand komut3 = new SqlCommand("Update Tbl_Kategoriler SET KategoriAdet=@U1 where kategoriid=@U2", bgl.baglanti());
            komut3.Parameters.AddWithValue("@U1", kategoriSayisi);
            komut3.Parameters.AddWithValue("@U2", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komut4 = new SqlCommand("Select KategoriAdet from Tbl_Kategoriler where Kategoriid=@K1", bgl.baglanti());
            komut4.Parameters.AddWithValue("@k1", kategoriid);
            SqlDataReader dr2 = komut4.ExecuteReader();

            while (dr2.Read())
            {
                kategoriSayisi = dr2[0].ToString();
            }
            bgl.baglanti().Close();
             sayi = Convert.ToInt32(kategoriSayisi);
            sayi = sayi - 1;
            kategoriSayisi = sayi.ToString();

            SqlCommand komut5 = new SqlCommand("Update Tbl_Kategoriler SET KategoriAdet=@U1 where kategoriid=@U2", bgl.baglanti());
            komut5.Parameters.AddWithValue("@U1", kategoriSayisi);
            komut5.Parameters.AddWithValue("@U2", kategoriid);
            komut5.ExecuteNonQuery();
            bgl.baglanti().Close();



        }
    }
}
