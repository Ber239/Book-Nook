using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "thebooknook17@gmail.com";
        // any address where the email will be sending
        var toAddress = "thebooknook17@gmail.com";
        // Passing the values and make a email formate to display
        string body = "From: " + YourFName.Text + "\n";
        body += "From: " + YourLName.Text + "\n";
        body += "Email: " + YourEmail.Text + "\n";
        body += "Comments: \n" + Comments.Text + "\n";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            //smtp.Credentials = new NetworkCredential(fromAddress, toAddress);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, "", body);
    }
    protected void btnSumbitCtUs_Click(object sender, EventArgs e)
    {
        try
        {
            //here on button click what will done 
            SendMail();
            DisplayMessage.Text = "Your Comments have been received";
            DisplayMessage.Visible = true;
            YourEmail.Text = "";
            YourFName.Text = "";
            YourLName.Text = "";
            Comments.Text = "";
        }
        catch (Exception) { }
    }
}