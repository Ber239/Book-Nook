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

public partial class WishList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string u = Membership.GetUser().UserName;
        Page.Title = "Welcome " + u;
    }

    protected void BtnAddtoCart_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GvFavorite.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (CheckBox)row.Cells[0].FindControl("CheckBox1");
                if (chkRow.Checked)
                {
                    string title = row.Cells[1].Text;
                    string user = Membership.GetUser().UserName;
                    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(connectionString);
                    string stmt = "INSERT INTO dbo.Cart(UserName, Title) VALUES(@UserName, @Title)";
                    SqlCommand cmd = new SqlCommand(stmt, connection);
                    cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 100);
                    cmd.Parameters.Add("@Title", SqlDbType.VarChar, 100);
                    cmd.Parameters["@UserName"].Value = user;
                    cmd.Parameters["@Title"].Value = title;
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    chkRow.Checked = false;
                }
            }
        }
        MessageLabel.Text = "Book added to Cart";
    }
}