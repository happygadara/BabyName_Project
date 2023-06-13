<%@ Page Title="" Language="C#" MasterPageFile="~/Content/BabyName.master" AutoEventWireup="true" CodeFile="Inquiry.aspx.cs" Inherits="AdminPanel_Inquiry_Inquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">

    <section id="about" class="about center">
      <div class="container" data-aos="fade-up" style="padding-top: 50px;">

        <div class="section-title">
          <h2>Inquiry</h2>
          </div>
          
          
          <div class="container center">
              <div class="row">
                  <div class="col-md-4">
                      Name:
                  </div>
                  <div class="col-md-8">
                      <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Name" required="required"></asp:TextBox>
                  </div>
              </div>
          </div><br />
        

          <div class="container center">
              <div class="row">
                  <div class="col-md-4">
                      Mobile No:
                  </div>
                  <div class="col-md-8">
                      <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control" placeholder="Enter Mobile No" required="required"></asp:TextBox>
                  </div>
              </div>
          </div><br />

					
          <div class="container center">
              <div class="row">
                  <div class="col-md-4">
                      Email ID:
                  </div>
                  <div class="col-md-8">
                      <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email ID" required="required"></asp:TextBox>
                  </div>
              </div>
          </div><br />


           <div class="container center">
              <div class="row">
                  <div class="col-md-4">
                      Message:
                  </div>
                  <div class="col-md-8">
                      <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="60" CssClass="form-control" placeholder="Enter Message" required="required"></asp:TextBox>
                  </div>
              </div>
          </div><br />         


          <div class="row">
              <div class="col-md-5" style="margin-left: 10px">
              </div>
              <div class="col-md-4">
                  <asp:Button runat="server" ID="btnSend" Text="Send" CssClass="btn btn-outline-info btn-sm" OnClick="btnSend_Click" />
              </div>
          </div>

          <div class="row">
        <div class="col-md-4"></div>
           <div class="col-md-8">
            <asp:Label ID="lblMessage" runat="server" EnableViewState="false"></asp:Label>
        </div>
    </div>

      </div>
    </section>

</asp:Content>

