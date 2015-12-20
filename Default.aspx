<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">

        <div class="mainBody">
            
            <h2>Welcome to the Book Nook</h2>
           <h5>Login info</h5>
             <h5>Admin User: Amber Pass:password</h5>
            <h5> User: bob10 Pass:password</h5>
            <img src="Images/img1.jpg" id="hmpg-img" /><br /><br />
            <div class="bkmnth">
                <br /><br />
                The book of the Month is "".<br />
                The book is based on a true stoy of Computer Programmer <br /> that is planning to  taking down the financial market with one line of Code.<br />
                Rated 5/5. Price $25.
            </div>
            <div>     
                <table class="table table-condensed">
                    <thead>
                        <tr>
                            <td colspan="3" >Recent Books:</td>  
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Harry Potter</td>
                            <td>$15</td>
                            <td>Fiction</td>
                        </tr>
                        <tr>
                            <td>Twilight</td>
                            <td>$13.50</td>
                            <td>Fiction</td>
                        </tr>
                    </tbody>
                </table>
            </div>
    	</div>
        <aside class="sidebar">
            <article id="widget_1" class="widget">
           <div id="hmpg_cal">
             <asp:Calendar ID="Calendar1" runat="server" CssClass="Format">
             </asp:Calendar>
               </div>
            </article><br />
            <article id="widget_2" class="widget">Up Coming Events</article>
            <article id="widget_3" class="widget"></article>
        </aside>
    </asp:Content>