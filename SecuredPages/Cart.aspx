<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup ="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
        <div class="mainBody">
            <h1>Cart</h1>
            <asp:Label runat="server" ID="LblUser" Visible="false" ></asp:Label>
            <asp:SqlDataSource ID="DsCart" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Title], [Price] FROM [Cart] WHERE ([UserName] = @UserName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="LblUser" PropertyName="Text" Name="UserName" Type="String"></asp:ControlParameter>
                </SelectParameters>
            
            </asp:SqlDataSource>
            <div id="GvCartDiv">
            <asp:GridView ID="GvCart" runat="server" DataSourceID="DsCart">
                
            </asp:GridView>
            </div>  
            <br />
        <asp:Button runat="server" ID="BtnCheckOut" Text="Check Out" OnClick="BtnCheckOut_Click" />
        <asp:Button runat="server" ID="BtnDeleteAll" Text="Delete All" OnClick="BtnDeleteAll_Click" />
         </div>
        
</asp:Content>