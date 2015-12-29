<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup ="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="mainBody">
        <h1>Cart</h1>
        <asp:Label runat="server" ID="LblUser" Visible="false"></asp:Label>
        <asp:SqlDataSource ID="DsCart" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Title], [Price ] AS Price_ FROM [Cart]" DeleteCommand="DELETE FROM WishList WHERE (Id = @id)" ></asp:SqlDataSource>
        <asp:GridView ID="GvCart" runat="server" DataSourceID="DsCart" AutoGenerateColumns="False" HorizontalAlign="center" CellPadding="4" ForeColor="#333333" GridLines="None" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-CssClass="FormatHeader"></asp:BoundField>
                <asp:BoundField DataField="Price_" HeaderText="Price" SortExpression="Price_" HeaderStyle-CssClass="FormatHeader"></asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999"></EditRowStyle>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>
            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>
            <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>
            <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>
            <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>
            <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
        </asp:GridView>
        <br />
        <asp:Button runat="server" ID="BtnCheckOut" Text="Check Out" OnClick="BtnCheckOut_Click" />
        <asp:Button runat="server" ID="BtnDeleteAll" Text="Delete All" OnClick="BtnDeleteAll_Click" />
    </div>
</asp:Content>