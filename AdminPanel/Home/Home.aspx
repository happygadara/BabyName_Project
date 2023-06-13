<%@ Page Title="" Language="C#" MasterPageFile="~/Content/BabyName.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="AdminPanel_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">

    <section id="hero">
    <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(../../img/slide-11.jpg" /)">
          <div class="container">
            <h2>Welcome to <span>Baby Name Finder</span></h2>
            <p>For the perfect baby girl or baby boy name, check out our fun resources. We've got great info on top name trends, unique baby name themes, insight into name origins and meanings, and more. Happy naming!</p>
            <asp:HyperLink runat="server" NavigateUrl="~/AdminPanel/About/About" class="btn-get-started scrollto">About</asp:HyperLink>
          </div>
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(../../img/slide-22.jpg" /)">
          <div class="container">
            <h2>Find Perfect Name For Your Baby</h2>
            <p>Baby Baby is the world's largest resource for baby names, featuring a database of very large girl names and boy names (and gender-neutral names too), thousands of comprehensive and creative name lists, friendly forums, plus news and advice from the experts to help you find the perfect name for your baby.</p>
            <a href="search.html" class="btn-get-started scrollto">Search Name</a>
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(../../img/slide/slide-33.jpg)">
          <div class="container">
            <h2>Baby Name For Boy and Girl</h2>
            <p>Here are all the the most recently available lists of popular baby names from around the world, which include top girl names and top boy names.</p>
            <a href="search.html" class="btn-get-started scrollto">Search Name</a>
          </div>
        </div>

      </div>

      <%--<a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>--%>

    </div>
  </section>

    <main id="main">

    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services">
      <div class="container" data-aos="fade-up" style="padding-left:300px">

        <div class="row">
          <div class="col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="icofont-boy"></i></div>
              <h4 class="title"><asp:HyperLink runat="server" NavigateUrl="~/AdminPanel/Boy/Boy">Baby Boy Names</asp:HyperLink></h4>
              <p class="description">Here you can explore the full range of boy names from traditional to newly invented</p>
              <asp:HyperLink runat="server" NavigateUrl="~/AdminPanel/Boy/Boy">Boy Name List &raquo;</asp:HyperLink>
            </div>
          </div>

            <div class="col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="icofont-girl"></i></div>
              <h4 class="title"><asp:HyperLink runat="server" NavigateUrl="~/AdminPanel/Girl/Girl">Baby Girl Names</asp:HyperLink></h4>
              <p class="description">Welcome to your headquarters for baby girl names, including top girl names and unique names for girls.</p>
              <asp:HyperLink runat="server" NavigateUrl="~/AdminPanel/Girl/Girl">Girl Name List &raquo;</asp:HyperLink>
            </div>
          </div>

            </div>

      </div>
    </section>

</asp:Content>

