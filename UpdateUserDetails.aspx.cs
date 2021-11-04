using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UpdateUserDetails : System.Web.UI.Page
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
    void getdt()
    {
        Getcon();
        string s = "select Per_Address,Com_Address,City,District,Pincode,Telephone,Email from UserReg where User_ID = '" + Session["id"].ToString() + "'";
        //CAddress='"+txtca.Text +"',PAddress= '"+txtpa .Text +"',City='"+txtc.Text +"',Pincode='"+txtpin.Text +"',Cntno='"+txtcnt.Text +"',Wno='"+txtw.Text +"',Email='"+txtmail.Text +"'";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        txtUpdteAddress.Text = dt.Rows[0][0].ToString();
        txtUpdteAddress0.Text = dt.Rows[0][1].ToString();
        ddDistrict.SelectedValue = dt.Rows[0][2].ToString();
        txtCity.Text = dt.Rows[0][3].ToString();
        txtPin.Text = dt.Rows[0][4].ToString();
        txtMob.Text = dt.Rows[0][5].ToString();
        txtMail.Text = dt.Rows[0][6].ToString();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (!IsPostBack)
                getdt();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Getcon();
        string sql = "update UserReg set Per_Address='" + txtUpdteAddress.Text + "',Com_Address= '" + txtUpdteAddress0.Text + "',District = '" + ddDistrict.SelectedValue + "',City = '" + txtCity.Text + "',Pincode='" + txtPin.Text + "',Telephone='" + txtMob.Text + "',Email='" + txtMail.Text + "' where User_ID = '" + Session["id"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        //Response.Write(sql);
        con.Close();
    }
}