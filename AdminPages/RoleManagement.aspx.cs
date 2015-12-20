using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPages_RoleManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DdlRoles.DataSource = Roles.GetAllRoles();
            DdlRoles.DataBind();
            DdlRoles.Items.Insert(0, new ListItem("Select Role"));
        }
    }

    protected void BtnAddRole_Click(object sender, EventArgs e)
    {
        if (Roles.RoleExists(TxtRoleName.Text))
        {
            LblResults.Text = "Role already exists.";
        }
        else
        {
            Roles.CreateRole(TxtRoleName.Text);
            LblResults.Text = "Role created.";
        }
    }

    protected void BtnAddUserToRole_Click(object sender, EventArgs e)
    {
        try
        {
            Roles.AddUserToRole(TxtUserName.Text, DdlRoles.SelectedValue);
            LblAddUserResults.Text = "Role successfully added to user.";
        }
        catch (System.Configuration.Provider.ProviderException e1)
        {
            LblAddUserResults.Text = e1.Message;
        }
    }
}