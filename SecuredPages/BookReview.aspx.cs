using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;


public partial class BookReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["params"] != null)
        {
            string Book = Request.QueryString["params"];
            BookTitle.Text = Book;
        }

        if(!IsPostBack)
        {
            string Book = Request.QueryString["params"];
            BookTitle.Text = Book;
        }
    }


    protected void BtnCommentSubmit_Click(object sender, EventArgs e)
    {
        string review = TxtComment.Text;
        string user = TxtUser.Text;
        string book = BookTitle.Text;
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        string stmt = "INSERT INTO dbo.Reviews(UserName, Review, Title) VALUES(@UserName, @Review, @Title)";
        SqlCommand cmd = new SqlCommand(stmt, connection);
        cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 100);
        cmd.Parameters.Add("@Review", SqlDbType.VarChar, 1000);
        cmd.Parameters.Add("@Title", SqlDbType.VarChar, 100);
        cmd.Parameters["@UserName"].Value = user;
        cmd.Parameters["@Review"].Value = review;
        cmd.Parameters["@Title"].Value = book;
        connection.Open();
        cmd.ExecuteNonQuery();
        connection.Close();

        TxtComment.Text = "";
        TxtUser.Text = "";
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }
}