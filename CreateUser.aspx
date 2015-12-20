<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server"
            BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" 
            DisplayCancelButton="true" CancelButtonText="Cancel" 
            CompleteSuccessText="Your account has been successfully created."
            OnCancelButtonClick="CreateUserWizard1_CancelButtonClick"
            OnCreatedUser="CreateUserWizard1_CreatedUser" 
            ContinueDestinationPageUrl="/SecuredPages/User_Profile.aspx" >
            <TitleTextStyle ForeColor="DarkBlue" Font-Bold="true"
                BackColor="LightGray" Height="2em" BorderColor="Black"
                BorderStyle="Solid" BorderWidth="2px" />
            <CreateUserButtonStyle BorderStyle="Solid" BorderColor="DarkBlue" 
                ForeColor="DarkBlue" Height="2em" />
            <CancelButtonStyle BorderStyle="Solid" BorderColor="DarkBlue" 
                ForeColor="DarkBlue" Height="2em"/>
        </asp:CreateUserWizard>
    </div>
</asp:Content>

