<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FullStore.aspx.cs" Inherits="FullStore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="mainBody">
        <h1>Full Store</h1>
        <asp:Label runat="server" ID="MessageLabel" Font-Size="Large"></asp:Label>
        <br />
        <asp:SqlDataSource ID="DsBooks" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Title], [Author], [Published], [Genre], [Price], [Summary], [PageNum], [ID] FROM [Books]"></asp:SqlDataSource>
        <asp:GridView OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
            ID="GridView1" runat="server" DataSourceID="DsBooks" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-condensed" AllowSorting="true" PageSize="15" HorizontalAlign="center" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" DataKeyNames="ID">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox runat="server" ID="CheckBox1" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowSelectButton="True" HeaderText="Reviews" SelectText="Reviews" ControlStyle-Font-Underline="true" ></asp:CommandField>
                <asp:TemplateField HeaderText="Image" HeaderStyle-CssClass="FormatHeader" >
                    <ItemTemplate>
                        <asp:Image ID="ProductImage" runat="server" Height="150px" ImageUrl='<%# "ImageHandler.ashx?ID=" + Eval("Id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
                <asp:BoundField DataField="Published" HeaderText="Published" SortExpression="Published" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
                <asp:BoundField DataField="PageNum" HeaderText="Pages" SortExpression="PageNum" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
                <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
            </Columns>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <br />
        <asp:Button runat="server" ID="BtnAddToCart" Text="Add To Cart" OnClick="BtnAddToCart_Click" />
        <asp:Button runat="server" ID="BtnAddtoWish" Text="Add To Wishlist" OnClick="BtnAddtoWish_Click" />
        <asp:Button runat="server" ID="BtnAddtoFav" Text="Add To Favorites" OnClick="BtnAddtoFav_Click" />
    </div>
</asp:Content>