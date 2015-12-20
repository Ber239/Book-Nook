<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div id="register">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server"
            DisplayCancelButton="true"
            OnCancelButtonClick="CreateUserWizard1_CancelButtonClick"
            OnCreatedUser="CreateUserWizard1_CreatedUser"
            ContinueDestinationPageUrl="/SecuredPages/User_Profile.aspx">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center" colspan="4" class="col-md-4 control-label">Sign Up for Your New Account</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel" CssClass="col-md-4 control-label">User Name:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="UserName" CssClass="form-control input-sm"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="CreateUserWizard1" ToolTip="User Name is required." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel" CssClass="col-md-4 control-label">Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" TextMode="Password" ID="Password" CssClass="form-control input-sm"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Password is required." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" ID="ConfirmPasswordLabel" CssClass="col-md-4 control-label">Confirm Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" TextMode="Password" ID="ConfirmPassword" CssClass="form-control input-sm"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Confirm Password is required." ID="ConfirmPasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="Email" ID="EmailLabel" CssClass="col-md-4 control-label">E-mail:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="Email" CssClass="form-control input-sm"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ValidationGroup="CreateUserWizard1" ToolTip="E-mail is required." ID="EmailRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="Question" ID="QuestionLabel" CssClass="col-md-4 control-label">Security Question:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="Question" CssClass="form-control input-sm"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ValidationGroup="CreateUserWizard1" ToolTip="Security question is required." ID="QuestionRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="Answer" ID="AnswerLabel" CssClass="col-md-4 control-label">Security Answer:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="Answer" CssClass="form-control input-sm"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ValidationGroup="CreateUserWizard1" ToolTip="Security answer is required." ID="AnswerRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="The Password and Confirmation Password must match." Display="Dynamic" ValidationGroup="CreateUserWizard1" ID="PasswordCompare"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal runat="server" ID="ErrorMessage" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
       
    </div>
</asp:Content>

