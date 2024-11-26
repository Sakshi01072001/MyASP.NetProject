<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MyASP.NetProject.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <style>
            .btn{
                width: 100px;
            }
        </style>
        <%--<h2 id="title"><%: Title %>.</h2>
        <h3>Your contact page.</h3>
        <address>
            One Microsoft Way<br />
            Redmond, WA 98052-6399<br />
            <abbr title="Phone">P:</abbr>
            425.555.0100
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>--%>

         <div class="row">
     <div class="col-lg-6">
         <img src="images/location.jpg" class="img-fluid" alt="location"  style="width: 500px; height: 300px;">
     </div>
     <div class="col-lg-6 d-flex flex-column justify-content-center">
         <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-dark">Submit</button>
</form>
     </div>
    </main>
</asp:Content>
