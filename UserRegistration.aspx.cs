using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserRegistration : System.Web.UI.Page
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
        sql = "select isnull(max(User_ID),5000)+1 from UserReg";
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
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnSignUP_Click(object sender, EventArgs e)
    {
        Getid();
        Getcon();

        sql = "insert into UserReg values(" + int.Parse(id) + ",'" + txtFname.Text + "','" + txtMname.Text + "','" + txtLname.Text + "','" + txtPAddress.Text + "','" + txtCAddress.Text + "','" + txtCity.Text + "','" + ddDistrict.SelectedValue + "','" + txtPin.Text + "','" + RBGender.SelectedValue + "','" + txtMob.Text + "','" + txtTel.Text + "','" + txtMail.Text + "','" + txtPath.Text + "','Pending')";
        cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();

        sql = "insert into Login values('" + txtMail.Text + "','" + txtCPass.Text + "','User'," + int.Parse(id) + ")";
        cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();

       // Response.Write(sql);
        con.Close();
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            string fnm=FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/Photos/"+fnm));
            string fpath="Photos/"+fnm;
            txtPath.Text=fpath;
            Image1.ImageUrl=fpath;
        }
        
    }
}