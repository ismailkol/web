using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yemekler : System.Web.UI.Page
{

    sqlSinif bgl = new sqlSinif();
    string id = "", islem = "";
    string kategoriid = "";
    string kategoriAdetSayisi = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;


        //yemek listesi
        SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        

        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["yemekid"];
            islem = Request.QueryString["islem"];

     //Kategori listesi
        SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
            bgl.baglanti().Close();
        }

        if (islem == "sil")
        {
            
            SqlCommand komut4 = new SqlCommand("Select * from Tbl_Yemekler where yemekid=@p2", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p2", id);
            SqlDataReader dr5 = komut4.ExecuteReader();

            while (dr5.Read())
            {
                kategoriid = dr5[0].ToString();
            }
            bgl.baglanti().Close();
            SqlCommand komut5 = new SqlCommand("Select KategoriAdet from Tbl_Kategoriler where=@p3", bgl.baglanti());
            komut5.Parameters.AddWithValue("@p3", kategoriid);
            SqlDataReader dr4 = komut5.ExecuteReader();
            while (dr4.Read())
            {
               kategoriAdetSayisi = dr4[0].ToString();
            }
            int sayi = Convert.ToInt32(kategoriAdetSayisi);
            sayi = sayi - 1;
            kategoriAdetSayisi = sayi.ToString();
            bgl.baglanti().Close();

            SqlCommand komut6 = new SqlCommand("Update Tbl_Kategoriler SET KategoriAdet=@p4 where kategoriid=@p5", bgl.baglanti());
            komut6.Parameters.AddWithValue("@p4", kategoriAdetSayisi);
            komut6.Parameters.AddWithValue("@p5", kategoriid);
            komut6.ExecuteNonQuery();
            bgl.baglanti().Close();


            SqlCommand komut3 = new SqlCommand("Delete from Tbl_Yemekler where=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", id);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        string kategorid="";
        SqlCommand komut = new SqlCommand("Insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) VALUES(@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        kategorid = DropDownList1.SelectedValue;
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        String kategoriSayisi = "";
        SqlCommand komut2 = new SqlCommand("Select KategoriAdet from Tbl_Kategoriler where Kategoriid=@K1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@k1", kategorid);
        SqlDataReader dr = komut2.ExecuteReader();
         while (dr.Read()){
            kategoriSayisi = dr[0].ToString();
        }
        bgl.baglanti().Close();
        int sayi = Convert.ToInt32(kategoriSayisi);
        sayi = sayi + 1;
        kategoriSayisi = sayi.ToString();
        SqlCommand komut3 = new SqlCommand("Update Tbl_Kategoriler SET KategoriAdet=@U1 where kategoriid=@U2", bgl.baglanti());
        komut3.Parameters.AddWithValue("@U1", kategoriSayisi);
        komut3.Parameters.AddWithValue("@U2", kategorid);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("islem tamamlandı");
    }
}