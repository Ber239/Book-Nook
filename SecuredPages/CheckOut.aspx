﻿<%@ Page Title="Check Out" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

    
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="mainBody">

        <!--
            <div id="personalInfo">
                <h3>Personal Information</h3>
                <label>First Name</label>
                <asp:TextBox ID="TxtFName" runat="server" CssClass="Format" ></asp:TextBox>
                <br />
                <label>Last Name</label>
                <asp:TextBox ID="TxtLName" runat="server" CssClass="Format" ></asp:TextBox>
                <br />
                <label>Address</label>
                <asp:TextBox ID="TxtAddress" runat="server" CssClass="Format" ></asp:TextBox>
                <br />
                <label>City</label>
                <asp:TextBox ID="TxtCity" runat="server" CssClass="Format" ></asp:TextBox>
                <br />
                <label>State</label>
                <asp:DropDownList ID="DdlState" runat="server" CssClass="Format" >
                    <asp:ListItem Value="AL">Alabama</asp:ListItem>
                    <asp:ListItem Value="AK">Alaska</asp:ListItem>
                    <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                    <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                    <asp:ListItem Value="CA">California</asp:ListItem>
                    <asp:ListItem Value="CO">Colorado</asp:ListItem>
                    <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                    <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                    <asp:ListItem Value="DE">Delaware</asp:ListItem>
                    <asp:ListItem Value="FL">Florida</asp:ListItem>
                    <asp:ListItem Value="GA">Georgia</asp:ListItem>
                    <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                    <asp:ListItem Value="ID">Idaho</asp:ListItem>
                    <asp:ListItem Value="IL">Illinois</asp:ListItem>
                    <asp:ListItem Value="IN">Indiana</asp:ListItem>
                    <asp:ListItem Value="IA">Iowa</asp:ListItem>
                    <asp:ListItem Value="KS">Kansas</asp:ListItem>
                    <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                    <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                    <asp:ListItem Value="ME">Maine</asp:ListItem>
                    <asp:ListItem Value="MD">Maryland</asp:ListItem>
                    <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                    <asp:ListItem Value="MI">Michigan</asp:ListItem>
                    <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                    <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                    <asp:ListItem Value="MO">Missouri</asp:ListItem>
                    <asp:ListItem Value="MT">Montana</asp:ListItem>
                    <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                    <asp:ListItem Value="NV">Nevada</asp:ListItem>
                    <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                    <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                    <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                    <asp:ListItem Value="NY">New York</asp:ListItem>
                    <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                    <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                    <asp:ListItem Value="OH">Ohio</asp:ListItem>
                    <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                    <asp:ListItem Value="OR">Oregon</asp:ListItem>
                    <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                    <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                    <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                    <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                    <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                    <asp:ListItem Value="TX">Texas</asp:ListItem>
                    <asp:ListItem Value="UT">Utah</asp:ListItem>
                    <asp:ListItem Value="VT">Vermont</asp:ListItem>
                    <asp:ListItem Value="VA">Virginia</asp:ListItem>
                    <asp:ListItem Value="WA">Washington</asp:ListItem>
                    <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                    <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                    <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                </asp:DropDownList>
                <br />
                <label>Zip Code</label>
                <asp:TextBox ID="TxtZip" runat="server" CssClass="Format" ></asp:TextBox>
                <br />
                <label>Phone Number</label>
                <asp:TextBox ID="TxtPhone" runat="server" CssClass="Format" ></asp:TextBox>
            </div>
            <div id="paymentInfo">
                <h3>Payment Information</h3>
                <label>Card Type</label>
                <asp:DropDownList ID="DdlCardType" runat="server">
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>Mastercard</asp:ListItem>
                </asp:DropDownList>
                <br />
                <label>Card Number</label>
                <asp:TextBox ID="TxtCardNum" runat="server" CssClass="Format" ></asp:TextBox>
                <br />
                <label>Security Code</label>
                <asp:TextBox ID="TxtCode" runat="server" CssClass="Format" ></asp:TextBox>
                <br />
                <h3>Total</h3>
                <asp:Label ID="Total" runat="server" CssClass="Format" Text="$10.99"></asp:Label>
                <br />
                <asp:Button ID="BtnSubmitOrder" runat="server" Text="Submit Order" />
            </div>
            -->
        <div class="form-horizontal">
            <fieldset>

                <!-- Form Name -->
                <legend>Personal Information</legend>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="firstName">First Name</label>
                    <div class="col-md-4">
                        <input id="firstName" name="firstName" placeholder="" class="form-control input-md" type="text" />

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="lastName">Last Name</label>
                    <div class="col-md-4">
                        <input id="lastName" name="lastName" placeholder="" class="form-control input-md" type="text" />

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="address">Address</label>
                    <div class="col-md-4">
                        <input id="address" name="address" placeholder="" class="form-control input-md" type="text" />

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="city">City</label>
                    <div class="col-md-4">
                        <input id="city" name="city" placeholder="" class="form-control input-md" type="text" />

                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="state">State</label>
                    <div class="col-md-4">
                        <select id="state" name="state" class="form-control">
                            <option value="1">New York</option>
                            <option value="2">Illinois</option>
                            <option value="3">Virginia</option>
                        </select>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="zipCode">Zip Code</label>
                    <div class="col-md-4">
                        <input id="zipCode" name="zipCode" placeholder="" class="form-control input-md" type="text" />

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="phoneNumber">Phone Number</label>
                    <div class="col-md-4">
                        <input id="phoneNumber" name="phoneNumber" placeholder="" class="form-control input-md" type="text" />

                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Payment Info</legend>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="cardNumber">Card Number</label>
                    <div class="col-md-4">
                        <input id="cardNumber" name="cardNumber" placeholder="" class="form-control input-md" type="text" />

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="securityCode">Security Code</label>
                    <div class="col-md-4">
                        <input id="securityCode" name="securityCode" placeholder="" class="form-control input-md" type="text" />

                    </div>
                </div>

                <!-- Button (Double) -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="submitOrder"></label>
                    <div class="col-md-4">
                        <button id="submitOrder" name="submitOrder" class="btn btn-primary">Submit</button>
                        <button id="cancelOrder" name="cancelOrder" class="btn btn-info">Cancel</button>
                    </div>
                </div>

            </fieldset>

        </div>
    </div>
</asp:Content>