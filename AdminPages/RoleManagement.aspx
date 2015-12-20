<%@ Page Title=" Role Manager" Language="C#" AutoEventWireup="true" CodeFile="RoleManagement.aspx.cs" Inherits="AdminPages_RoleManagement" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">


    <div>

        <asp:GridView ID="GvUsers" runat="server"
            DataSourceID="DsUsers" AutoGenerateColumns="false"
            DataKeyNames="UserId,UserName"
            HorizontalAlign="Center">
            <SelectedRowStyle BackColor="LightGray" />
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" Visible="false"></asp:BoundField>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName"></asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57"></EditRowStyle>
                     <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>
                     <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>
                     <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>
                     <RowStyle BackColor="#E3EAEB"></RowStyle>
                     <SelectedRowStyle BackColor="#E3EAEB" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>
                     <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>
                     <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>
                     <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>
                     <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
            </asp:GridView>
        <asp:SqlDataSource ID="DsUsers" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString2 %>'
            SelectCommand="SELECT Users.UserId, Users.UserName, Memberships.Email, Roles.RoleName
				FROM Users
				JOIN Memberships ON Users.UserId = Memberships.UserId
				JOIN UsersInRoles ON Memberships.UserId = UsersInRoles.UserId
				JOIN Roles ON UsersInRoles.RoleId = Roles.RoleId">
        </asp:SqlDataSource>
        <hr>
           <label>Role Name:</label> 
        <asp:TextBox ID="TxtRoleName" runat="server">
        </asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                        ControlToValidate="TxtRoleName" ValidationGroup="role" ForeColor="Red" />
        <br /><br />
        <asp:Button ID="BtnAddRole" runat="server" Text="Add New Role" 
            OnClick="BtnAddRole_Click" CausesValidation="true"  ValidationGroup="role" />
        <br /><br />
        <asp:Label ID="LblResults" runat="server"></asp:Label>
        <br /><br />
        <asp:DropDownList ID="DdlRoles" runat="server"></asp:DropDownList>
        <asp:RequiredFieldValidator ID="ReqDdlRoles" runat="server"
             ErrorMessage="RequiredFieldValidator"
             ControlToValidate="DdlRoles"
             InitialValue="Select Role"
             ValidationGroup="AddToRole">
        </asp:RequiredFieldValidator>
    <br /><br />
    <label>Enter username: </label>
     <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="BtnAddUserToRole" runat="server" 
            Text="Add User To Role" OnClick="BtnAddUserToRole_Click" 
            ValidationGroup="AddToRole" />
        <br /><br />
        <asp:Label ID="LblAddUserResults" runat="server"></asp:Label>

    </div>
</asp:Content>
