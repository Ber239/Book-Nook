<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WishList.aspx.cs" Inherits="WishList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
 
        <div class="mainBody">
            
            <h1>Wish List</h1>
            <asp:Label runat="server" ID="MessageLabel" Font-Size="Large" ></asp:Label>
            <div>
                <asp:GridView ID="GvFavorite" runat="server" DataSourceID="BookContent" HorizontalAlign="Center"
                    AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                    <Columns>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="CheckBox1" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" Visible="false"></asp:BoundField>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" Visible="false"></asp:BoundField>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-CssClass="FormatHeader"></asp:BoundField>
                        <asp:BoundField DataField="DateAdded" HeaderText="Date Added" SortExpression="DateAdded" HeaderStyle-CssClass="FormatHeader"></asp:BoundField>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999"></EditRowStyle>

                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="BookContent" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [WishList]" DeleteCommand="DELETE FROM WishList WHERE (Id = @id)">
                    <DeleteParameters>
                        <asp:Parameter Name="id"></asp:Parameter>
                    </DeleteParameters>
                </asp:SqlDataSource>   
            </div>
            
            <asp:Button ID="BtnAddtoCart" runat="server" Text="Add to Cart" OnClick="BtnAddtoCart_Click" />
            <!--Once people select items from the gridview, then we can use these controls-->
        </div>
    </asp:Content>