using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDetay : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();

    string yemekid = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"]; //ana sayafadan cektigimiz yemekid bu cekilde kac oldugunu anlıyoruz

        SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where yemekid=@p1", bgl.baglanti());
        SqlCommand komut1 = new SqlCommand("Select * from Tbl_Yorumlar where yemekid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", yemekid);
        komut1.Parameters.AddWithValue("@p1", yemekid);

        SqlDataReader dr = komut.ExecuteReader();
        SqlDataReader dr1 = komut1.ExecuteReader();
        DataList2.DataSource = dr1;
        DataList2.DataBind();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
         
           
        }
        bgl.baglanti().Close();

    }

   
    

    protected void Button2_Click(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];
        SqlCommand komut2 = new SqlCommand("Insert into Tbl_Yorumlar(YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) VALUES(@t1,@t2,@t3,@t4)", bgl.baglanti());
        komut2.Parameters.AddWithValue("@t1", TxtAdSoyad.Text);
        komut2.Parameters.AddWithValue("@t2", TxtMail.Text);
        komut2.Parameters.AddWithValue("@t3", Txticerik.Text);
        komut2.Parameters.AddWithValue("@t4", yemekid);

        komut2.ExecuteNonQuery();

        bgl.baglanti().Close();
        Response.Write("Yorumunuz Alınmıstır");

    }
}