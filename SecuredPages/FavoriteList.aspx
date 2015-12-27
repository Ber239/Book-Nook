<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FavoriteList.aspx.cs" Inherits="FavoriteList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
     <div class="mainBody">
            
            <h1>Favorites List</h1>
          <asp:Label runat="server" ID="MessageLabel" Font-Size="Large" ></asp:Label>
            <div>
                <asp:GridView ID="GvFavorite" runat="server" DataSourceID="BookContent" HorizontalAlign="Center"
                    AutoGenerateColumns="False"  DataKeyNames="Id" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="CheckBox1" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" Visible="false"></asp:BoundField>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" Visible="false"></asp:BoundField>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
                        <asp:CommandField ShowDeleteButton="True" />
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
                <asp:SqlDataSource ID="BookContent" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Favorites]" DeleteCommand="DELETE FROM Favorites Where Id=@Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id"></asp:Parameter>
                    </DeleteParameters>
                </asp:SqlDataSource>   
            </div>
                    <br />
                    <hr />
            
            <asp:Button ID="BtnAddtoCart" runat="server" Text="Add to Cart" OnClick="BtnAddtoCart_Click" />
        </div>
</asp:Content>

