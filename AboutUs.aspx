﻿<%@ Page Title="About Us " Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="Server">
    <script
        src="http://maps.googleapis.com/maps/api/js">
    </script>
    <script>
        var myCenter = new google.maps.LatLng(41.981189, -87.718893);

        function initialize() {
            var mapProp = {
                center: myCenter,
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

            var marker = new google.maps.Marker({
                position: myCenter,
            });

            marker.setMap(map);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
    <div class="mainBody">
        <h1>About Us</h1>
        The Book Nook was founded in October 2015 to extend our brick-and-mortar store front in Chicago, IL.<br />
        This is a place for our customers to enjoy all that we have to offer without having to stop by our physical location!<br />
        You can find all of our books listed on our website, and can even read and add reviews from others.<br />
        So stop by and pick out a good book to read, you won't regret it!
        
            <h3>Location</h3>
        5500 N St Louis Ave<br />
        Chicago, IL 60625<br />
        (123) 456-7890<br />
        <br />
        <div id="googleMap" style="width: 300px; height: 300px;"></div>
    </div>
</asp:Content>

