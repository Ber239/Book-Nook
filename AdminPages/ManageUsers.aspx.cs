using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPages_ManageUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GvUsers_SelectedIndexChanged(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser(GvUsers.SelectedDataKey.Values[1].ToString());
        string[] roles = Roles.GetRolesForUser(user.UserName);
        string role = roles[0];
        RblRoles.SelectedIndex = -1;
        if (RblRoles.Items[0].Value.Equals(role))
        {
            RblRoles.SelectedIndex = 0;
        }
        else
        {
            RblRoles.SelectedIndex = 1;
        }
        LblRoles.Visible = true;
        RblRoles.Visible = true;
        LblError.Text = "";
    }

    protected void DsUserInfo_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Connection.Open();
        e.Command.Transaction = e.Command.Connection.BeginTransaction();
    }

    protected void DsUserInfo_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception != null)
        {
            e.Command.Transaction.Rollback();
            LblError.Text = "An error occurred during updating. User Name and Email cannot be null and must be unique.";
            LblError.Visible = true;
            e.ExceptionHandled = true;
        }
        else
        {
            e.Command.Transaction.Commit();
            GvUsers.DataBind();
            LblError.Text = "Record successfully updated.";
            LblError.Visible = true;
        }
    }

    protected void RblRoles_SelectedIndexChanged(object sender, EventArgs e)
    {
        string newRole = RblRoles.SelectedValue;
        string userName = GvUsers.SelectedDataKey.Values[1].ToString();
        Roles.AddUserToRole(userName, newRole);

        if (RblRoles.SelectedIndex == 0)
        {
            Roles.RemoveUserFromRole(userName, RblRoles.Items[1].Value);
        }
        else
        {
            Roles.RemoveUserFromRole(userName, RblRoles.Items[0].Value);
        }
        GvUsers.DataBind();
        DvUserInfo.DataBind();
        LblError.Text = "Role successfully updated.";
        LblError.Visible = true;

    }
}