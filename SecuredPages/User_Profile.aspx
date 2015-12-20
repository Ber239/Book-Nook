<%@ Page Title="Profile" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_Profile.aspx.cs" Inherits="User_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="mainBody">

    <div>
        <asp:LoginStatus ID="LsMyAccount" runat="server" /><br /><br />
        Hello, <asp:LoginName ID="LnMyAccount" runat="server" />
        <asp:LoginView ID="LvMyAccount" runat="server">
            <RoleGroups>
                <asp:RoleGroup Roles="user">
                    <ContentTemplate>
                        <p>If you can see this, you are a member of the user role.</p>
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="admin">
                    <ContentTemplate>
			            <p>Congratulations, you are an administrator.</p>
                        <p>Admin Info:</p>
                        <a href="../AdminPages/RoleManagement.aspx">Manage Roles</a><br />
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
        <br />
        <asp:Image ID="ProfileImage" runat="server" 
                ImageUrl="~/Images/Default.png" Height="200px" Width="200px" />
        <br />
        <asp:LinkButton ID="LinkEditProfilePic" runat="server"
            OnClick="LinkEditProfilePic_Click">Edit Profile Picture</asp:LinkButton>
         <asp:LinkButton ID="LinkChangePassword" runat="server"
            OnClick="LinkChangePassword_Click1">Change Password</asp:LinkButton>
        <br /><br />
        
        <asp:Panel ID="PanelFileUpload" runat="server" Visible="false" HorizontalAlign="center">
                <div  align="center">
             <asp:FileUpload ID="ProfilePicUpload" runat="server"/>
                    </div>
            <br />
            <asp:Button ID="BtnUpload" runat="server" Text="Upload"  OnClick="BtnUpload_Click"/>
            <asp:Button ID="BtnUpload_cancel" runat="server" Text="Cancel"  OnClick="BtnUpload_cancel_Click"/>
        <br /><br />
        </asp:Panel>
        <asp:Panel ID="PanelChangePass" runat="server" Visible="false" HorizontalAlign="center">
          <div id="PassContl" align="center">
              <asp:ChangePassword ID="ChangePassword" runat="server" 
                  OnCancelButtonClick="ChangePassword1_CancelButtonClick" OnContinueButtonClick="ChangePassword1_ContinueButtonClick" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="183px" Width="412px">

                  <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" ForeColor="#284775" />
                  <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" ForeColor="#284775" />
                  <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" ForeColor="#284775" />
                  <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                  <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
                  <TextBoxStyle Font-Size="0.9em" />
                  <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="1em" ForeColor="White" />

              </asp:ChangePassword>
              
              </div>
        <br /><br />
        </asp:Panel>
       
        <asp:Panel ID="ProvideInfo" runat="server">
            First Name:
            <asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox>
            <br /><br />
            Last Name:
            <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>
            <br /><br />
           Favorite Genre:
            <asp:TextBox ID="TxtFavGen" runat="server"></asp:TextBox>
            <br /><br />
            Select your birthdate:
            <br /><br />
            <div id="usprof_cal" >
            <asp:Calendar ID="DobCalendar" runat="server" ></asp:Calendar>
            </div>
            <br /><br />
            <asp:Button ID="BtnSave" runat="server" Text="Save" 
                OnClick="BtnSave_Click"/>
        </asp:Panel>
        <asp:Panel ID="ShowAccountInfo" runat="server">
            First Name:
            <asp:Label runat="server" ID="LblFirstName"></asp:Label>
            
            Last Name:
            <asp:Label runat="server" ID="LblLastName"></asp:Label>
            <br /><br />
            Date of Birth:
            <asp:Label runat="server" ID="LblDob"></asp:Label>
            <br /><br />
              Favorite Genre:
            <asp:Label runat="server" ID="LblFavGen"></asp:Label>
            <br /><br />

            <asp:Button ID="BtnEdit" runat="server" Text="Edit" 
                OnClick="BtnEdit_Click" />
        </asp:Panel>
    </div>


    	</div>
</asp:Content>

