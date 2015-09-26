﻿using System;
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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Select * from DaniaGorace", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            repDynamicRows.DataSource = dt;
            repDynamicRows.DataBind();
           
        }
        //  GridView3.Columns[0].Visible = false;
        con.Close();

      


    }
    public void buyProduct(object sender, EventArgs e)
    {
        //Get the reference of the clicked button.
        Button button = (sender as Button);
        //Get the command argument
       // string commandArgument = button.CommandArgument;
        //Get the Repeater Item reference
        RepeaterItem item = button.NamingContainer as RepeaterItem;
        //Get the repeater item index
        int index = item.ItemIndex;
        Response.Redirect("buyProduct.aspx");
    }







    protected void repDynamicRows_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Response.Redirect("buyProduct.aspx");
    }
}
