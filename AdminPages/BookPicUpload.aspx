<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookPicUpload.aspx.cs" Inherits="AdminPages_BookPic_upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
      <div class="mainBody">
    <asp:Button ID="btnImgUp" runat="server" Text="Upload Image" OnClick="btnImgUp_Click" /><asp:Button ID="btnAddBook" runat="server" Text="Add Book"  OnClick="btnAddBook_Click"/>
    
          <asp:Panel ID="PnlAddImg" runat="server" Visible="false">
              <div align="center">
                  <br />
                  <h2>Add Image </h2>
                  <br />
                  Product Id:
                  <asp:TextBox ID="TxtProductName" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                      ControlToValidate="TxtProductName" ValidationGroup="addimage"  ForeColor="Red"/>
                  <br />
                  <asp:FileUpload ID="UploadProductImage" runat="server" />
                  <br />
                  <br />
                  <asp:Button ID="BtnSave" runat="server" Text="Save Image" OnClick="BtnSave_Click" CausesValidation="true" ValidationGroup="addimage" />
                  <br />
                  <br />
                  <asp:Label ID="LblMessage" runat="server"></asp:Label>
              </div>
              <asp:Button ID="BtnDone" runat="server" Text="Done" OnClick="BtnDone_Click" />
              <br />
              <br />
          </asp:Panel>
          <asp:Panel ID="PnlAddBook" runat="server" Visible="false">
              <div align="center">
                  <br />
                  Title:
                  <asp:TextBox ID="TxtTitle" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                      ControlToValidate="TxtTitle" ValidationGroup="addbook" ForeColor="Red" />
                  <br />
                  <br />
                  Author:
                  <asp:TextBox ID="TxtAuthor" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                      ControlToValidate="TxtAuthor" ValidationGroup="addbook"  ForeColor="Red"/>
                  <br />
                  <br />
                  Published:<asp:TextBox ID="TxtPublished" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                      ControlToValidate="TxtPublished" ValidationGroup="addbook" ForeColor="Red" />
                  <br />
                  <br />
                  Genre:
                  <asp:TextBox ID="TxtGenre" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                      ControlToValidate="TxtGenre" ValidationGroup="addbook" ForeColor="Red" />
                  <br />
                  <br />
                  Price:
                  <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
                      ControlToValidate="TxtPrice" ValidationGroup="addbook" ForeColor="Red" />
                  <br />
                  <br />
                  PageNum:
                  <asp:TextBox ID="TxtPageNum" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"
                      ControlToValidate="TxtPageNum" ValidationGroup="addbook"  ForeColor="Red"/>
                  <br />
                  <br />
                  Summary:
                  <asp:TextBox ID="TxtSummary" runat="server" TextMode="MultiLine"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*"
                      ControlToValidate="TxtSummary" ValidationGroup="addbook"  ForeColor="Red" />
                  <br />
                  <br />
                  <asp:FileUpload ID="UploadProductImage1" runat="server" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*"
                      ControlToValidate="UploadProductImage1" ValidationGroup="addbook" ForeColor="Red" />
                  <br />
                  <br />
                  <asp:Button ID="BtnSaveBook" runat="server" Text="Save Book" OnClick="BtnSaveBook_Click" value="savenewbook" ValidationGroup="addbook" CausesValidation="true" />
                  <br />
                  <br />
                  <asp:Label ID="LblMessage1" runat="server"></asp:Label>
              </div>

              <asp:Button ID="BtnDoneAddBook" runat="server" Text="Done" OnClick="BtnDoneAddBook_Click" />
              <br />
              <br />
          </asp:Panel>

    <asp:SqlDataSource ID="SqlCont" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>

    <asp:GridView ID="GVImg" DataSourceID="SqlCont" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
      <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="true" InsertVisible="false"
                SortExpression="ID" ></asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" ></asp:BoundField>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="ProductImage" Height="200px" runat="server" ImageUrl='<%# "ImageHandler.ashx?ID=" + Eval("ID") %>' />
            </ItemTemplate>
                <ItemStyle Wrap="False"></ItemStyle>
            </asp:TemplateField>
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
    <br /><br />
    </div>
</asp:Content>

