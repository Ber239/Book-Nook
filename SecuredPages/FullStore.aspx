<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FullStore.aspx.cs" Inherits="FullStore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
<div class="mainBody">
            
            <h1> Full Store</h1>
            <asp:Label runat="server" ID="MessageLabel" Font-Size="Large" ></asp:Label>
    <asp:SqlDataSource ID="DsBooks" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [Title], [Author], [Published], [Genre], [Price], [Summary], [PageNum], [ID] FROM [Books]">
            </asp:SqlDataSource> 
    <asp:GridView OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        ID="GridView1" runat="server" DataSourceID="DsBooks" AutoGenerateColumns="false" AllowSorting="true" PageSize="15" HorizontalAlign="center" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" DataKeyNames="ID" CellPadding="14" ForeColor="#333333" GridLines="None">

        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox runat="server" ID="CheckBox1" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowSelectButton="True" HeaderText="Reviews" SelectText="Reviews" ></asp:CommandField>
                <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                             <asp:Image ID="ProductImage" runat="server" Height="150px" ImageUrl='<%# "ImageHandler.ashx?ID=" + Eval("Id") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
            <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="false" SortExpression=" Title"></asp:BoundField>
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author"></asp:BoundField>
            <asp:BoundField DataField="Published" HeaderText="Published" SortExpression="Published"></asp:BoundField>
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre"></asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
            <asp:BoundField DataField="PageNum" HeaderText="PageNum" SortExpression="PageNum"></asp:BoundField>
            <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary"></asp:BoundField>
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
    <br />
    <asp:Button runat="server" ID="BtnAddToCart" Text="Add To Cart" OnClick="BtnAddToCart_Click"/>
    <asp:Button runat="server" ID="BtnAddtoWish" Text="Add To Wishlist" OnClick="BtnAddtoWish_Click"/>
     <asp:Button runat="server" ID="BtnAddtoFav" Text="Add To Favorites" OnClick="BtnAddtoFav_Click"/>
    
    
        </div>
</asp:Content>