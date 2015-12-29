﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FavoriteList.aspx.cs" Inherits="FavoriteList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="mainBody">

        <h1>Favorites List</h1>
        <asp:Label runat="server" ID="MessageLabel" Font-Size="Large"></asp:Label>
        <div>
            <asp:GridView ID="GvFavorite" runat="server" DataSourceID="BookContent" HorizontalAlign="Center"
                AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-condensed" DataKeyNames="Id" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox runat="server" ID="CheckBox1" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" Visible="false"></asp:BoundField>
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" Visible="false"></asp:BoundField>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-CssClass="FormatHeader"></asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="BookContent" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Favorites]" DeleteCommand="DELETE FROM Favorites Where Id=@Id">
            </asp:SqlDataSource>
        </div>
        <br /><hr />
        <asp:Button ID="BtnAddtoCart" runat="server" Text="Add to Cart" OnClick="BtnAddtoCart_Click" />
    </div>
</asp:Content>

