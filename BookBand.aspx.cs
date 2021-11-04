using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BookBand : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd;
    string sql;
    string id;
    void Getcon()
    {
        con.ConnectionString = @"Data Source=.;Initial Catalog=FoxGloveDb;Integrated Security=True";
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            id = Request.QueryString["br_id"];
            getDet();
        }
    }
    void getDet()
    {
        Getcon();
        sql = "select Band_Name,Type_of_Music,Band_type,RATE,Logo from BandReg  where Band_ID = '" + id + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        txtBandName.Text = dt.Rows[0].ItemArray[0].ToString();
        txtMusicTyp.Text = dt.Rows[0].ItemArray[1].ToString();
        txtBandType.Text = dt.Rows[0].ItemArray[2].ToString();
        txtRate.Text = dt.Rows[0].ItemArray[3].ToString();
        Image1.ImageUrl = dt.Rows[0].ItemArray[4].ToString();

        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookShow.aspx");
    }
}