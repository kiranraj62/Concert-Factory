using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BandRegistration : System.Web.UI.Page
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
        sql = "select isnull(max(Band_ID),2000)+1 from BandReg";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Getid();
        Getcon();

        sql = "insert into BandReg values(" + int.Parse(id) + ",'" + txtBndNme.Text + "','" + txtbndMail.Text + "','" + txtBandLicense.Text + "','" + txtTel.Text + "','" + txtAddr1.Text + "','" + txtAddr2.Text + "','" + txtCity.Text + "','" + txtState.Text + "','" + txtPcode.Text + "','" + txtCountry.Text + "','" + txtMNGR.Text + "','" + txtmngrPHN.Text + "','" + ddMusicTYP.SelectedValue + "','" + ddBandType.SelectedValue + "','" + ddMembers.SelectedValue + "','" + txtRate.Text + "','" + txtDescprtion.Text + "','" + txtPath.Text + "','Pending')";
          cmd=new SqlCommand(sql,con);
          cmd.ExecuteNonQuery();

          sql = "insert into Login values('"+txtbndMail.Text+"','"+txtCPwd.Text+"','Band'," + int.Parse(id) + ")";
          cmd = new SqlCommand(sql, con);
          cmd.ExecuteNonQuery();

        //Response.Write(sql);
            con.Close();
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fnm = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/Photos/" + fnm));
            string fpath = "Photos/" + fnm;
            txtPath.Text = fpath;
            Image1.ImageUrl = fpath;
        }
    }
}