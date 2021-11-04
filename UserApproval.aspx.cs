﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserApproval : System.Web.UI.Page
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
            bindgrid();
        }

    }
    void bindgrid()
    {
        Getcon();
        sql = "select * from UserReg where Status='Pending'";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Getcon();
        id = e.CommandArgument.ToString();
        if (e.CommandName.Equals("ACCEPT"))
        {
            sql = "update UserReg set Status='APPROVED' where User_ID='" + id + "'";
        }
        else if (e.CommandName.Equals("REJECT"))
        {
            sql = "update UserReg set Status='REJECTED'where User_ID='" + id + "'";
        }
        Response.Write(sql);
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        bindgrid();
    }
}