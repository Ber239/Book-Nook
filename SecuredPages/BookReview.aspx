<%@ Page Title="Book Review" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookReview.aspx.cs" Inherits="BookReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">

            <div class="mainBody">

            <div>
                <asp:SqlDataSource ID="DvReviews" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [Title], [UserName], [Review], [Rating] FROM [Reviews] WHERE ([Title] = @Title)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="BookTitle" PropertyName="Text" Name="Title" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="BookTitle" runat="server" Text=""></asp:Label>
                <asp:GridView ID="GsReviews" runat="server" DataSourceID="DvReviews" HorizontalAlign="Center"
                    AutoGenerateColumns="false" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                        <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review"></asp:BoundField>
                        <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating"></asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True"></FooterStyle>

                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Center" ForeColor="White" BackColor="#666666"></PagerStyle>

                    <RowStyle BackColor="#E3EAEB"></RowStyle>

                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                </asp:GridView>
            </div>
            <br /><br />
            <div id="reviews">
                <div id="submitReview">
                    <label>Submit a Review!</label>
                    <br />
                    <label>Username: </label>
                    <asp:TextBox ID="TxtUser" runat="server" CssClass="Format" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                        ControlToValidate="TxtUser" ValidationGroup="rev"  ForeColor="Red"/>
                    <br />
                    <asp:TextBox ID="TxtComment" runat="server" Width="600px" Height="150px" TextMode="MultiLine" CssClass="Format" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                        ControlToValidate="TxtComment" ValidationGroup="rev" ForeColor="Red" />
                    <br />
                    <asp:Button ID="BtnCommentSubmit" runat="server" Text="Submit" OnClick="BtnCommentSubmit_Click"  ValidationGroup="rev" CausesValidation="true"/>
                </div>
            </div>
        </div>
</asp:Content>