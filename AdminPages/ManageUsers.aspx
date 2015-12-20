<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="AdminPages_ManageUsers" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    
    <div>
       <asp:GridView ID="GvUsers" runat="server"
            DataSourceID="DsUsers" AutoGenerateColumns="False"
            DataKeyNames="UserID,UserName" 
            OnSelectedIndexChanged="GvUsers_SelectedIndexChanged" HorizontalAlign="Center" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
       
            <AlternatingRowStyle BackColor="White" />

            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" Visible="false" SortExpression="UserId"></asp:BoundField>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName"></asp:BoundField>
                <asp:CommandField ShowSelectButton="true" SelectText="Select" ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="DsUsers" runat="server"
            ConnectionString='<%$ ConnectionStrings:ConnectionString2 %>'
            SelectCommand="SELECT Users.UserId, Users.UserName, Memberships.Email, Roles.RoleName
				FROM Users
				JOIN Memberships ON Users.UserId = Memberships.UserId
				JOIN UsersInRoles ON Memberships.UserId = UsersInRoles.UserId
				JOIN Roles ON UsersInRoles.RoleId = Roles.RoleId"
            DeleteCommand="DELETE FROM Memberships INNER JOIN Users ON Memberships.UserId = Users.UserId WHERE [UserId] = @UserId"  >
        </asp:SqlDataSource>
        <br /><br />
        <asp:DetailsView ID="DvUserInfo" runat="server" Height="50px" 
            Width="125px" DataSourceID="DsUserInfo" AutoGenerateRows="False"
            AutoGenerateEditButton="True" DataKeyNames="UserId" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" Visible="false" SortExpression="UserId"></asp:BoundField>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" ReadOnly="true" SortExpression="CreateDate"></asp:BoundField>
                <asp:BoundField DataField="LastLoginDate" HeaderText="LastLoginDate" ReadOnly="true" SortExpression="LastLoginDate"></asp:BoundField>
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment"></asp:BoundField>
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="DsUserInfo" runat="server"
            ConnectionString='<%$ ConnectionStrings:ConnectionString2 %>'
            SelectCommand="SELECT * 
                            FROM Users
                            JOIN Memberships ON Memberships.UserId=Users.UserId
                            WHERE Users.UserId=@UserId"
            UpdateCommand="UPDATE Users SET UserName=@UserName WHERE UserId=@UserId;
                           UPDATE Memberships SET Email=@Email, Comment=@Comment WHERE UserId=@UserId;"
            OnUpdating="DsUserInfo_Updating"
            OnUpdated="DsUserInfo_Updated">
            <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GvUsers" PropertyName="SelectedValue" Name="UserId"></asp:ControlParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName"></asp:Parameter>
                <asp:Parameter Name="UserId"></asp:Parameter>
                <asp:Parameter Name="Email"></asp:Parameter>
                <asp:Parameter Name="Comment"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <div id="select_roles">
        <asp:Label ID="LblRoles" runat="server" Visible="false" Text="Select User Role: " ></asp:Label>
        <asp:RadioButtonList ID="RblRoles" runat="server" Visible="false"
            OnSelectedIndexChanged="RblRoles_SelectedIndexChanged" 
            AutoPostBack="true"  Align="center">
            <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
            <asp:ListItem Text="User" Value="User"></asp:ListItem>
            <asp:ListItem Text="Mod" Value="Mod"></asp:ListItem>
            
        </asp:RadioButtonList>
        <br /><br />
        <asp:Label ID="LblError" runat="server" Text="" Font-Bold="true"
            ForeColor="Red" Visible="false" ></asp:Label>
        </div>
   </div>
    
</asp:Content>
