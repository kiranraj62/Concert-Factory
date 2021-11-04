using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddMedia : System.Web.UI.Page
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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (FileUpload1.HasFile)
        {
            string fnm = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/pics/" + fnm));
            string fpath = "pics/" + fnm;
            txtPath.Text = fpath;
            Image1.ImageUrl = fpath;
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Getcon();

        sql = "insert into BandMedia values('"+Session["id"].ToString()+"','" + txtPath.Text + "')";
        cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        Response.Write(sql);
        con.Close();
    }
}