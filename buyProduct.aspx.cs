using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string id = Request.QueryString["id"];
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Select Nazwa, Cena from DaniaGorace where id = '" + id +"'", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        
        da.Fill(dt);
        
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0][0].ToString();
            Label3.Text = dt.Rows[0][1].ToString();
        }
        con.Close();
    }

}