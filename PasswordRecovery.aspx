<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div>
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server"
            SuccessText="Your password has been sent to the email address on file." 
            UserNameFailureText="User name not on file."
            UserNameTitleText="Password Recovery" >
            <TitleTextStyle Font-Size="Large" />
            <LabelStyle HorizontalAlign="Left" Width="5em"/>
            <SubmitButtonStyle Width="5em"  />
            <MailDefinition From="thebooknook17@gmail.com"
	            Subject="Password Reset" 
	            BodyFileName="/PasswordRecoveryTemplate.txt" >
            </MailDefinition>
        </asp:PasswordRecovery>
    </div>
</asp:Content>

