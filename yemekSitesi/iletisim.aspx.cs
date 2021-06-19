using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class iletisim : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Insert into Tbl_Mesajlar(MesajGönderen,MesajBaslik,MesajMail,Mesajicerik) VALUES(@t1,@t2,@t3,@t4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@t1", TxtAdSoyad.Text);
        komut.Parameters.AddWithValue("@t2", TxtKonu.Text);
        komut.Parameters.AddWithValue("@t3", TxtMail.Text);
        komut.Parameters.AddWithValue("@t4", TxtMesaj.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("mesaj gönderilmistir");

    }
}