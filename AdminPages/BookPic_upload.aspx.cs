using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AdminPages_BookPic_upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        

        if (UploadProductImage.HasFile)
        {
            HttpPostedFile file = UploadProductImage.PostedFile;
            byte[] data = new byte[file.ContentLength];
            file.InputStream.Read(data, 0, file.ContentLength);

            string connString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string cmdString = "UPDATE Books SET  ImageData = @ImageData Where ID=@ID";

                try
                {
                    using (SqlConnection cnn = new SqlConnection(connString))
                    {

                        using (SqlCommand cmd = new SqlCommand(cmdString, cnn))
                        {
                            cmd.Parameters.AddWithValue("@ID", TxtProductName.Text);
                            cmd.Parameters.AddWithValue("@ImageData", data);

                            cnn.Open();
                            cmd.ExecuteNonQuery();
                        }
                    }
                    GVImg.DataBind();
                    LblMessage.Text = "Product successfully added";
                foreach (Control ctrl in PnlAddImg.Controls)
                {

                    if (ctrl.GetType() == typeof(TextBox))
                    {
                        ((TextBox)(ctrl)).Text = string.Empty;
                    }
                }
            }
                catch (SqlException ex)
                {
                    LblMessage.Text = "Fail";
                }
            }
           
            }
      

    protected void BtnDone_Click(object sender, EventArgs e)
    {
        PnlAddImg.Visible = false;
    }

    protected void btnImgUp_Click(object sender, EventArgs e)
    {
        PnlAddImg.Visible = true;
    }

    protected void btnAddBook_Click(object sender, EventArgs e)
    {
        PnlAddBook.Visible = true;
    }

    protected void BtnSaveBook_Click(object sender, EventArgs e)
    {
        if (UploadProductImage1.HasFile)
        {
            HttpPostedFile file = UploadProductImage1.PostedFile;
            byte[] data = new byte[file.ContentLength];
            file.InputStream.Read(data, 0, file.ContentLength);

            string connString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string cmdString = "INSERT into Books (Title, Author, Published, Genre,Price,Summary,PageNum,ImageData) values(@Title, @Author, @Published, @Genre,@Price,@Summary,@PageNum,@ImageData)";
            //string cmdString = "INSERT into Books (Title) values(@Title)";

            try
            {
                using (SqlConnection cnn = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand(cmdString, cnn))
                    {

                        cmd.Parameters.AddWithValue("@Title", TxtTitle.Text);
                        cmd.Parameters.AddWithValue("@Author", TxtAuthor.Text);
                        cmd.Parameters.AddWithValue("@Published", TxtPublished.Text);
                        cmd.Parameters.AddWithValue("@Genre", TxtGenre.Text);
                        cmd.Parameters.AddWithValue("@Price", TxtPrice.Text);
                        cmd.Parameters.AddWithValue("@PageNum", TxtPageNum.Text);
                        cmd.Parameters.AddWithValue("@Summary", TxtSummary.Text);
                        cmd.Parameters.AddWithValue("@ImageData", data);

                        cnn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
                GVImg.DataBind();
                LblMessage1.Text = "Book successfully added Book, add another.";
                foreach (Control ctrl in PnlAddBook.Controls)
                {

                    if (ctrl.GetType() == typeof(TextBox))
                    {
                        ((TextBox)(ctrl)).Text = string.Empty;
                    }

                    /*else if (ctrl.GetType() == typeof(Label))
                    {
                        ((Label)(ctrl)).Text = string.Empty;
                    }*/
                }
            }
           catch (SqlException ex)
            {
                LblMessage.Text = "Fail";
            }
        }
    }

    protected void BtnDoneAddBook_Click(object sender, EventArgs e)
    {
        PnlAddBook.Visible = false;
    }

}

