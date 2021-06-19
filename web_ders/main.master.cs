using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.MasterPage
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        DuyurulariGetir();

        object kullanici = Session["KullaniciAdi"];
        if (kullanici != null)
        {
            pnlGiris.Visible = false;
            pnlKullanici.Visible = true;
          lblKullaniciAdi.Text = kullanici.ToString();
        }
        else
        {
            pnlKullanici.Visible = false;
            pnlGiris.Visible = true;
            
        }
    }

       
      
    private void DuyurulariGetir() { 
     
        cnn.Open();

        string sorgu = "Select *from Duyurular order by Tarih desc";
        SqlCommand cmd = new SqlCommand(sorgu, cnn);

        SqlDataReader dr = cmd.ExecuteReader();
        lstDuyuru.DataSource = dr;
        lstDuyuru.DataBind();
        cnn.Close();
    }

  
    protected void btnGiris_Click(object sender, EventArgs e)
    {
        string sorgu = "Select * from kullanicilar where KullaniciAdi=@kullaniciadi AND Sidre=@sifre";
        SqlCommand cmd = new SqlCommand(sorgu, cnn);
        cmd.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
        cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);
        cnn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session.Timeout = 300;
            Session.Add("kullaniciadi",dr["KullaniciAdi"].ToString());
            Response.Redirect(Request.RawUrl);
        }
        else
        {
            lblSonuc.Text = "Kullanici girisi saglanamadı";
        }

        cnn.Close();

    }

    protected void btnCıkıs_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect(Request.RawUrl);
    }
}