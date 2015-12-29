using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;

public partial class FullStore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string u = Membership.GetUser().UserName;
        Page.Title = "Welcome " + u;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        Response.Redirect("BookReview.aspx?params=" + row.Cells[3].Text);
    }

    protected void BtnAddToCart_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (CheckBox)row.Cells[0].FindControl("CheckBox1");
                if (chkRow.Checked)
                {
                    string title = row.Cells[3].Text;
                    string user = Membership.GetUser().UserName;
                    string price = row.Cells[7].Text;
                    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(connectionString);
                    string stmt = "INSERT INTO dbo.Cart(UserName, Title, Price) VALUES(@UserName, @Title, @Price)";
                    SqlCommand cmd = new SqlCommand(stmt, connection);
                    cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 100);
                    cmd.Parameters.Add("@Title", SqlDbType.VarChar, 100);
                    cmd.Parameters.Add("@Price", SqlDbType.NChar, 10);
                    cmd.Parameters["@UserName"].Value = user;
                    cmd.Parameters["@Title"].Value = title;
                    cmd.Parameters["@Price"].Value = price;
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    chkRow.Checked = false;
                }
            }
        }
        MessageLabel.Text = "Books added to cart";
    }

    protected void BtnAddtoWish_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (CheckBox)row.Cells[0].FindControl("CheckBox1");
                if (chkRow.Checked)
                {
                    string title = row.Cells[3].Text;
                    string user = Membership.GetUser().UserName;
                    string price = row.Cells[7].Text;
                    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(connectionString);
                    string stmt = "INSERT INTO dbo.WishList(UserName, Title, Price) VALUES(@UserName, @Title, @Price)";
                    SqlCommand cmd = new SqlCommand(stmt, connection);
                    cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 100);
                    cmd.Parameters.Add("@Title", SqlDbType.VarChar, 100);
                    cmd.Parameters.Add("@Price", SqlDbType.NChar, 10);
                    cmd.Parameters["@UserName"].Value = user;
                    cmd.Parameters["@Title"].Value = title;
                    cmd.Parameters["@Price"].Value = price;
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    chkRow.Checked = false;
                }
            }
        }
        MessageLabel.Text = "Books added to wishlist";
    }

    protected void BtnAddtoFav_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (CheckBox)row.Cells[0].FindControl("CheckBox1");
                if (chkRow.Checked)
                {
                    string title = row.Cells[3].Text;
                    string user = Membership.GetUser().UserName;
                    string price = row.Cells[7].Text;
                    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(connectionString);
                    string stmt = "INSERT INTO dbo.Favorites(UserName, Title, Price) VALUES(@UserName, @Title, @Price)";
                    SqlCommand cmd = new SqlCommand(stmt, connection);
                    cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 100);
                    cmd.Parameters.Add("@Title", SqlDbType.VarChar, 100);
                    cmd.Parameters.Add("@Price", SqlDbType.NChar, 10);
                    cmd.Parameters["@UserName"].Value = user;
                    cmd.Parameters["@Title"].Value = title;
                    cmd.Parameters["@Price"].Value = price;
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    chkRow.Checked = false;
                }
            }
        }

        MessageLabel.Text = "Books added to favorites";
    }
}