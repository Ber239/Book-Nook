<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminStore.aspx.cs" Inherits="AdminStore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
        <div class="mainBody">
            
        <h1>Admin Full Store</h1>
        
            <asp:Button ID="AddPic" runat="server" Text="Upload images/Books"  PostBackUrl="~/AdminPages/BookPic_upload.aspx" />
            <asp:SqlDataSource ID="DsBooks" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [Title], [Author], [Published], [Genre], [Price], [ID], [Summary], [PageNum], [ImageData] FROM [Books]"
                UpdateCommand="UPDATE [Books] SET [Title] = @Title, [Author] = @Author, [Published] = @Published, [Genre] = @Genre, [Price] = @Price, [Summary] = @Summary, [PageNum] = @PageNum, [ImageData] = @ImageData WHERE [ID] = @ID" 
                DeleteCommand="DELETE FROM [Books] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [Books] ([Title], [Author], [Published], [Genre], [Price], [Summary], [PageNum], [ImageData]) VALUES (@Title, @Author, @Published, @Genre, @Price, @Summary, @PageNum, @ImageData)">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Author" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Published" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Genre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Price" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Summary" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PageNum" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ImageData" Type="Object"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Author" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Published" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Genre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Price" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Summary" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PageNum" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ImageData" Type="Object"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource> 
            <asp:GridView ID="GridView1" runat="server" DataSourceID="DsBooks" AutoGenerateColumns="False" AllowSorting="True" PageSize="15" HorizontalAlign="Center"
                BorderWidth="3px" BorderStyle="Solid" DataKeyNames="ID" AllowPaging="True">
                <Columns>
                      <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                             <asp:Image ID="ProductImage" runat="server" ImageUrl='<%# "ImageHandler.ashx?ID=" + Eval("Id") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author"></asp:BoundField>
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author"></asp:BoundField>
                    <asp:BoundField DataField="Published" HeaderText="Published" SortExpression="Published"></asp:BoundField>
                    <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre"></asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="PageNum" HeaderText="PageNum" SortExpression="PageNum"></asp:BoundField>
                    <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary">
                        <ItemStyle Height="50px" Width="800px"></ItemStyle>
                    </asp:BoundField>
                    <asp:CommandField ShowEditButton="true" ShowDeleteButton="True" />

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
</asp:Content>

