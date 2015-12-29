<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup ="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="mainBody">
        <h1>Cart</h1>
        <asp:Label runat="server" ID="LblUser" Visible="false"></asp:Label>
        <asp:SqlDataSource ID="DsCart" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Title], [Price] AS Price FROM [Cart]" DeleteCommand="DELETE FROM WishList WHERE (Id = @id)" ></asp:SqlDataSource>
        <asp:GridView ID="GvCart" runat="server" DataSourceID="DsCart" CssClass="table table-striped table-bordered table-condensed" AutoGenerateColumns="False" HorizontalAlign="center" CellPadding="4" ForeColor="#333333" GridLines="None" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-CssClass="FormatHeader"></asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>
        </asp:GridView>
        <br />
        <asp:Button runat="server" ID="BtnCheckOut" Text="Check Out" OnClick="BtnCheckOut_Click" />
        <asp:Button runat="server" ID="BtnDeleteAll" Text="Delete All" OnClick="BtnDeleteAll_Click" />
    </div>
</asp:Content>