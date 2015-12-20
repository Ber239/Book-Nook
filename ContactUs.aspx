<%@ Page Title="Contact Us" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="mainBody">

       
            <h3>Contact US</h3>
           
                    First Name
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                        ControlToValidate="YourFName" ValidationGroup="save" /><br />
                    <asp:TextBox ID="YourFName" runat="server" ></asp:TextBox>
             
            <br />
          
                    Last Name
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                        ControlToValidate="YourLName" ValidationGroup="save" /><br />
                    <asp:TextBox ID="YourLName" runat="server" ></asp:TextBox>
             
            <br />
            
                    Email
                   <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
                       SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"
                       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                       ValidationGroup="save"  /><br />
                    <asp:TextBox ID="YourEmail" runat="server" ></asp:TextBox>
            
            <br />
       
                    Comments
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                        ControlToValidate="Comments" ValidationGroup="save" /><br />
                    <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine" ></asp:TextBox>

            <br />
                
                <asp:Button ID="btnSumbitCtUs" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="btnSumbitCtUs_Click" CausesValidation="true" ValidationGroup="save" />
        
            <p>
                <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
            </p> 
        </div>

</asp:Content>

