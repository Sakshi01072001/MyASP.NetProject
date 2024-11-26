<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyASP.NetProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <style>
            .btn{
                width: 250px;
            }
        </style>
        <div class="container mt-5">
    <div class="row">
        <div class="col-md-5 d-flex flex-column justify-content-center">
            <h1 class="display-4 font-weight-bold">Everyday stationary and General things
            </h1>
            <p class="lead">NOW ONLY $7 - LIMITED TIME ONLY</p>
            <a href="stationary.aspx" class="btn btn-dark btn-lg">SHOP NOW</a>
        </div>
        <div class="col-md-4">
            <div class="d-flex">
                <img src="images/item1.jpg" class="img-fluid" alt="Image 1" style="padding-right: 10px;"  />
                <img src="images/item2.jpg" class="img-fluid" alt="Image 2" />
            </div>
        </div>
    </div>
    <div class="row text-center mt-5">
        <div class="col-md-3">
            <img src="images/freeshipping.png" class="mb-2" alt="Free Shipping Icon" width="50px" />
            <h5>Free Shipping</h5>
            <p>On orders above INR 999</p>
        </div>
        <div class="col-md-3">
            <img src="images/moneyback.png" class="mb-2" alt="Money Guarantee Icon" width="50px" />
            <h5>Money Guarantee</h5>
            <p>Within 30 days for an exchange.</p>
        </div>
        <div class="col-md-3">
            <img src="images/onlinesupport.png" class="mb-2" alt="Online Support Icon" width="50px" />
            <h5>Online Support</h5>
            <p>24 hours a day, 7 days a week</p>
        </div>
        <div class="col-md-3">
            <img src="images/gift.png" class="mb-2" alt="Free Returns Icon"  width="50px"/>
            <h5>Free Gift</h5>
            <p>Get excited gifts</p>
        </div>
    </div>
</div>

        <section>
            <div class="container mt-5">
    <div class="row">
        <div class="col-lg-6">
            <img src="images/maincard.jpg" class="img-fluid" alt="Necklace Closeup">
        </div>
        <div class="col-lg-6 d-flex flex-column justify-content-center">
            <h1>Office Stationary</h1>
            <p class="text-muted">Now Only $7 – Limited Time Only</p>
            <a href="office.aspx" class="btn btn-dark btn-lg">Shop Now</a>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-lg-4" >
            <img src="images/notebooks.jpg" class="img-fluid" alt="Notebook">
        </div>
        <div class="col-lg-4">
            <img src="images/notepads.jpg" class="img-fluid" alt="Notepads">
        </div>
        <div class="col-lg-4">
            <img src="images/pens.jpg" class="img-fluid" alt="Pens">
        </div>
    </div>
</div>
        </section>
    </main>

</asp:Content>
