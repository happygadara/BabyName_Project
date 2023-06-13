<%@ Page Title="" Language="C#" MasterPageFile="~/Content/BabyName.master" AutoEventWireup="true" CodeFile="BoyAddEdit.aspx.cs" Inherits="AdminPanel_Boy_BoyAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">

     <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="padding-top: 100px;">
          <h2>Add Boy Name</h2>
        </div>
          </div>

         <div class="container center">
    <div class="row">
        <div class="col-md-4">
            Boy Name:
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtBoyName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div></div><br />

         <div class="container center">
    <div class="row">
        <div class="col-md-4">
            Name Meaning:
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtNameMeaning" runat="server" CssClass="form-control"></asp:TextBox>
            
        </div>
    </div></div><br />

           <div class="row">
        <div class="col-md-5"></div>
        <div class="col-md-7">
            <asp:Button ID="btnAdd" runat="server" Text="Save" CssClass="btn btn-outline-info btn-sm" OnClick="btnAdd_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-light btn-sm" OnClick="btnCancel_Click"/>
        </div>
    </div>

       <div class="row">
        <div class="col-md-4"></div>
           <div class="col-md-8">
            <asp:Label ID="lblMessage" runat="server" EnableViewState="false"></asp:Label>
        </div>
    </div>
         </section>

</asp:Content>

