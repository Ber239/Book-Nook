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

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*string u = Membership.GetUser().UserName;
        SessionParameter id = new SessionParameter();
        id.Name = u;*/
        string user = Membership.GetUser().UserName;
        LblUser.Text = user;
    }

    protected void BtnCheckOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecuredPages/CheckOut.aspx");
    }

    protected void BtnDeleteAll_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        string user = Membership.GetUser().UserName;
        string stmt = "DELETE FROM Cart WHERE UserName = @user";
       
        SqlCommand cmd = new SqlCommand(stmt, connection);
        cmd.Parameters.AddWithValue("@user", user);
        connection.Open();
        cmd.ExecuteNonQuery();
        connection.Close();
        Response.Redirect("~/SecuredPages/Cart.aspx");
    }
}