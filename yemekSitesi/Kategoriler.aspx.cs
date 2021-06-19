using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Kategoriler : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];
        }


        SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        bgl.baglanti().Close();



        //silme islemi
        if (islem == "sil")
        {
            SqlCommand komut2 = new SqlCommand("Delete  from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        Panel2.Visible = false;
        Panel4.Visible = false;
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
        SqlCommand komut = new SqlCommand("Insert into Tbl_Kategoriler(KategoriAd,kategoriAdet,kategoriresim) VALUES(@KAd,@KAdet,@Kresim)", bgl.baglanti());
        komut.Parameters.AddWithValue("@KAd", TextBox1.Text);
        komut.Parameters.AddWithValue("@KAdet", "0".ToString());
        komut.Parameters.AddWithValue("@Kresim", FileUpload1.FileName);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("kayıt tamamlanmıstır");

    }
}