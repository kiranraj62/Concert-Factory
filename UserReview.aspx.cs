using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserReview : System.Web.UI.Page
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
        Getcon();
        sql = "insert into UserReviews values('" + Session["id"].ToString() + "','" + txtrew.Text + "')";
        cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
       // Response.Write(sql);
        con.Close();
    }
}