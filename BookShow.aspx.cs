using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BookShow : System.Web.UI.Page
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
    void Getid()
    {
        Getcon();
        sql = "select isnull(max(Booking_ID),3000)+1 from Booking_Details";
        cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        id = dt.Rows[0][0].ToString();
        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Getid();
        Getcon();

        sql = "insert into Booking_Details values(" + int.Parse(id) + ",'" + ddEvnttyp.SelectedValue + "','" + txtbndMail.Text + "','" + txtBandLicense.Text + "','" + txtTel.Text + "','" + txtAddr1.Text + "','" + txtAddr2.Text + "','" + txtCity.Text + "','" + txtState.Text + "','" + txtPcode.Text + "','" + txtCountry.Text + "','" + txtMNGR.Text + "','" + txtmngrPHN.Text + "','" + ddMusicTYP.SelectedValue + "','" + ddBandType.SelectedValue + "','" + ddMembers.SelectedValue + "','" + txtRate.Text + "','" + txtDescprtion.Text + "','" + txtPath.Text + "','Pending')";
        cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();

    }
}