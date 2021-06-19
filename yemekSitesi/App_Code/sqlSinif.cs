using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

public class sqlSinif
{
    public   SqlConnection   baglanti()
    {
        SqlConnection baglan = new SqlConnection("Data Source=LAPTOP-7CEDBM9T\\SQLEXPRESS; Initial Catalog=Dbo_yemektarifi;Integrated Security=SSPI");
        baglan.Open();
        return baglan;

    }
}