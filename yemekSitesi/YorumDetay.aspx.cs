using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YorumDetay : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       
            id = Request.QueryString["Yorumid"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd From Tbl_yorumlar inner join Tbl_Yemekler on Tbl_yorumlar.yemekid=Tbl_yemekler.yemekid where yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }
    }

    protected void BtnOnay_Click(object sender, EventArgs e)
    {

        SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar SET YorumOnay=@p1 where yorumid=@p2", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", "1");
        komut.Parameters.AddWithValue("@p2", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}