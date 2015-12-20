using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Profile.LastUpdatedDate.Equals(DateTime.MinValue))
            {
                ProvideInfo.Visible = true;
                ShowAccountInfo.Visible = false;
                DobCalendar.VisibleDate = DateTime.Today.AddYears(-20);
                DobCalendar.SelectedDate = DateTime.Today.AddYears(-20);
            }
            else
            {
                LblFirstName.Text = Profile.FirstName;
                LblLastName.Text = Profile.LastName;
                LblDob.Text = Profile.DateOfBirth.ToShortDateString();
                ShowAccountInfo.Visible = true;
                ProvideInfo.Visible = false;

                if (Profile.ProfilePic != null)
                {
                    string base64String = Convert.ToBase64String(Profile.ProfilePic, 0, Profile.ProfilePic.Length);
                    ProfileImage.ImageUrl = "data:" + Profile.ProfilePicType + ";base64," + base64String;
                }
            }

        }
    }

    protected void LinkEditProfilePic_Click(object sender, EventArgs e)
    {
        PanelFileUpload.Visible = true;
    }




    protected void BtnSave_Click(object sender, EventArgs e)
    {
        Profile.FirstName = TxtFirstName.Text;
        Profile.LastName = TxtLastName.Text;
        Profile.Favorite_Genre = TxtFavGen.Text;
        Profile.DateOfBirth = DobCalendar.SelectedDate;
        Profile.Save();

        LblFirstName.Text = Profile.FirstName;
        LblLastName.Text = Profile.LastName;
        LblFavGen.Text = Profile.Favorite_Genre;
        LblDob.Text = Profile.DateOfBirth.ToShortDateString();
        ShowAccountInfo.Visible = true;
        ProvideInfo.Visible = false;
    }

    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        ProvideInfo.Visible = true;
        ShowAccountInfo.Visible = false;
        TxtFirstName.Text = Profile.FirstName;
        TxtLastName.Text = Profile.LastName;
        DobCalendar.VisibleDate = Profile.DateOfBirth;
        DobCalendar.SelectedDate = Profile.DateOfBirth;
        TxtFavGen.Text = Profile.Favorite_Genre;

    }

    protected void BtnUpload_Click(object sender, EventArgs e)
    {
        if (ProfilePicUpload.HasFile)
        {
            HttpPostedFile file = ProfilePicUpload.PostedFile;
            byte[] data = new byte[file.ContentLength];
            file.InputStream.Read(data, 0, file.ContentLength);
            Profile.ProfilePic = data;
            Profile.ProfilePicType = file.ContentType;
            Profile.Save();
            if (Profile.ProfilePic != null)
            {
                string base64String = Convert.ToBase64String(Profile.ProfilePic, 0, Profile.ProfilePic.Length);
                ProfileImage.ImageUrl = "data:" + Profile.ProfilePicType + ";base64," + base64String;
            }
        }
        PanelFileUpload.Visible = false;
    }

    protected void BtnUpload_cancel_Click(object sender, EventArgs e)
    {
        PanelFileUpload.Visible = false;
    }
    protected void LinkChangePassword_Click1(object sender, EventArgs e)
    {
        PanelChangePass.Visible = true;
    }

    protected void ChangePassword1_CancelButtonClick(object sender, EventArgs e)
    {
        PanelChangePass.Visible = false;
    }


    protected void ChangePassword1_ContinueButtonClick(object sender, EventArgs e)
    {
        PanelChangePass.Visible = false;
    }

    protected void ChangePassword1_ContinueButtonClick1(object sender, EventArgs e)
    {
        PanelChangePass.Visible = false;
    }
}