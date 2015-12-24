<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="mainBody">
        <div id="login">
            <asp:Login ID="LoginBox" runat="server"
            DestinationPageUrl="/SecuredPages/UserProfile.aspx"
	        CreateUserText="Register for the first time"
	        CreateUserUrl="/CreateUser.aspx" 
	        InstructionText="Please enter your username and password."
	        FailureText="Your login attempt was not successful. Please try again" 
            TitleText="Log In" 
            LoginButtonText="Log In" 
            PasswordRecoveryUrl="/PasswordRecovery.aspx" 
            PasswordRecoveryText="Forgot your password?" >
            <TitleTextStyle BackColor="DarkBlue" Font-Bold="true" ForeColor="White" />
            <InstructionTextStyle Font-Italic="true" />
            <FailureTextStyle ForeColor="Red" />
            </asp:Login>
        </div>
    </div>    
</asp:Content>