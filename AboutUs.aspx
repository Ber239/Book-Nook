<%@ Page Title="About Us " Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="mainBody">
            <img id="img-about" src="Images/nook.jpg" alt="a bench overlooking a window, surrounded by book sheleves" />
            <h1>About Us</h1>
            The Book Nook was founded in October 2015 to extend our brick-and-mortar store front in Chicago, IL.<br />
            This is a place for our customers to enjoy all that we have to offer without having to stop by our physical location!<br />
            You can find all of our books listed on our website, and can even read and add reviews from others.<br />
            So stop by and pick out a good book to read, you won't regret it!
            <h3>Location</h3>
            5500 N St Louis Ave<br />
            Chicago, IL 60625<br />
            (123) 456-7890
        <div id="map"></div>
    </div>
    <script>
        <%--
var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 8
  });
}

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjCWAWdDoIwDfcjSc5wAAWnbIFwAA8xY0&callback=initMap"
        async defer></script>

        --%>
</asp:Content>

