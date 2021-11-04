using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LOGIN : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd;
    string sql;
    string id,stat,typ;
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
        sql=" select * from Login where Username='"+txtMail.Text+"' and Password='"+txtPwd.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(sql,con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count > 0 )
        {
            Session["id"]=dt.Rows[0].ItemArray[3].ToString();
            typ=dt.Rows[0].ItemArray[2 ].ToString();
            Response.Write(typ);
            if(typ.Equals("User"))
            {
                string str1 = "select status from UserReg where User_ID='" + Session["id"].ToString() + "'";
                SqlCommand cmd1=new SqlCommand(str1,con);
                SqlDataAdapter da1=new SqlDataAdapter(cmd1);
                DataTable dt1= new DataTable();
                da1.Fill(dt1);
                string stat=dt1.Rows[0].ItemArray[0].ToString();
                if(stat.Equals("Pending"))
                    RegisterClientScriptBlock("", "<script> alert('your approval is pending')</script>");
                else
                    Response.Redirect("UserHome.aspx");
            }
            else if(typ.Equals("Band"))
            {
                string str2 = "select status from BandReg where Band_ID='" + Session["id"].ToString() + "'";
                SqlCommand cmd2=new SqlCommand(str2,con);
                SqlDataAdapter da2=new SqlDataAdapter(cmd2);
                DataTable dt2= new DataTable();
                da2.Fill(dt2);
                string stat=dt2.Rows[0].ItemArray[0].ToString();
                if(stat.Equals("Pending"))
                     RegisterClientScriptBlock("", "<script> alert('your approval is pending')</script>");
                else
                    Response.Redirect("BandHome.aspx");
            }
            else if(typ.Equals("Admin"))
            {
                Response.Redirect("AdminHome.aspx");
            }
        }
        else 
        {
            RegisterClientScriptBlock("", "<script> alert('invalid user')</script>");
        }
        con.Close();
    }
}