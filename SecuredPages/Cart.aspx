<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup ="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
        <div class="mainBody">
            <h1>Cart</h1>
            <asp:Label runat="server" ID="LblUser" Visible="false" ></asp:Label>
            <asp:SqlDataSource ID="DsCart" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [Title], [Price ] AS Price_ FROM [Cart]">
            
            </asp:SqlDataSource>
            <div id="GvCartDiv">
                <asp:GridView ID="GvCart" runat="server" DataSourceID="DsCart" AutoGenerateColumns="False">

                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
                        <asp:BoundField DataField="Price_" HeaderText="Price" SortExpression="Price_" HeaderStyle-CssClass="FormatHeader" ></asp:BoundField>
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
            </div>  
            <br />
        <asp:Button runat="server" ID="BtnCheckOut" Text="Check Out" OnClick="BtnCheckOut_Click" />
        <asp:Button runat="server" ID="BtnDeleteAll" Text="Delete All" OnClick="BtnDeleteAll_Click" />
         </div>
        
</asp:Content>