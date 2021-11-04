using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UpdateBandDetails : System.Web.UI.Page
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
        string s = "select Per_Address,Com_Address,City,Postal_Code,Telephone,Band_Mail_ID from BandReg where Band_ID = '" + Session["id"].ToString() + "'";
        //CAddress='"+txtca.Text +"',PAddress= '"+txtpa .Text +"',City='"+txtc.Text +"',Pincode='"+txtpin.Text +"',Cntno='"+txtcnt.Text +"',Wno='"+txtw.Text +"',Email='"+txtmail.Text +"'";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        txtPaddress.Text = dt.Rows[0][0].ToString();
        txtCaddrss.Text = dt.Rows[0][1].ToString();
        txtCity.Text = dt.Rows[0][2].ToString();
        txtPin.Text = dt.Rows[0][3].ToString();
        txtPhn.Text = dt.Rows[0][4].ToString();
        txtMail.Text = dt.Rows[0][5].ToString();
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        {
        if (!IsPostBack)
            getdt();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Getcon();
        string sql = "update BandReg set Per_Address='" + txtCaddrss.Text + "',Com_Address= '" + txtPaddress.Text + "',City = '" + txtCity.Text + "',Postal_Code='" + txtPin.Text + "',Telephone='" + txtPhn.Text + "',Band_Mail_ID='" + txtMail.Text + "' where Band_ID = '" + Session["id"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        Response.Write(sql);
        con.Close();
    }
}