using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kaydol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pnlDurum.Visible = false;

    }

    protected void btnKayit_Click(object sender, EventArgs e)
    {

        if (txtKullaniciAdi.Text != "" && txtSifre.Text != "")
        {



            string ad = ConfigurationManager.ConnectionStrings[0].ConnectionString;
            SqlConnection cnn = new SqlConnection(ad);
            cnn.Open();

            string sorgu = "Insert into kullanicilar(KullaniciAdi,Sifre) Values (@kullaniciadi,@sifre)";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            try
            {
                cmd.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
                cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

                cmd.ExecuteNonQuery();
                cnn.Close();
                lblSonuc.Text = "Basarıyla kaydedildi.";
            }
            catch (Exception)
            {
                lblDurum.Text = "Kaydınız yapılamamıstır.";
                pnlDurum.Visible = true;
                pnlKayit.Visible = false;
                Session.Add("kullaniciadi", txtKullaniciAdi.Text);
            }

        }
        else
        {
            lblSonuc.Text = "Bos alanları doldurmanız gerekir.";
        }



    }
}