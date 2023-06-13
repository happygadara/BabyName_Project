<%@ Page Title="" Language="C#" MasterPageFile="~/Content/BabyName.master" AutoEventWireup="true" CodeFile="Boy.aspx.cs" Inherits="AdminPanel_Boy_Boy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">

    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="padding-top: 100px;">
          <h2>Search Boy Name</h2>
          
        </div>

        <div class="row" style="text-align:center">
        <div class="col-md-12">
            <div>
                <asp:HyperLink runat="server" ID="hlAddBoy" Text="Add New Boy Name" CssClass="btn btn-sm btn-dark" NavigateUrl="~/AdminPanel/Boy/Add"></asp:HyperLink>
            </div>
            <br />
        </div>
            </div>
        

         
       </div>
          
          <div class="row center">
        <div class="col-md-12">
            <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label>
        </div>
    </div>
          <br />

          <div>
                <asp:GridView ID="gvBoy" runat="server" OnRowCommand="gvBoy_RowCommand" CssClass="table table-hover table-info">
                    <Columns>

                        <asp:BoundField DataField="BoyName" HeaderText="Name" />
                        <asp:BoundField DataField="NameMeaning" HeaderText="Meaning" />

                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button runat="server" ID="btnDelete" Text="Delete" CssClass="btn btn-danger btn-sm" OnClientClick="return confirm('Are you sure you want to delete?')" CommandName="DeleteRecord" CommandArgument='<%# Eval("BoyNameID").ToString() %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" CssClass="btn btn-primary btn-sm" NavigateUrl='<%# "~/AdminPanel/Boy/Edit/" + EncryptDecrypt.Base64Encode(Eval("BoyNameID").ToString().Trim()) %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </div>

        <%--<div>
            <asp:Label ID="lblBoyName" CssClass="container" runat="server" Text="BoyName"></asp:Label>
            </div>--%>
            <br /><br />
            <div style="text-align:center">
                <asp:TextBox ID="txtBoyName" runat="server" CssClass="form-control-sm"></asp:TextBox>
                <asp:Button ID="btnSearch"  runat="server" Text="Search" OnClick="btnSearch_Click1" CssClass="btn btn-sm btn-dark"/>
            </div>
<%--            </div>--%>
        <%--<br />
        <br />--%>

        
        <br />
        <br />
        <asp:GridView ID="gvSearch" CssClass="container" runat="server" AutoGenerateColumns="False">
        <Columns>
           
            <asp:BoundField DataField="BoyName" HeaderText="Name" />
            <asp:BoundField DataField="NameMeaning" HeaderText="Meaning" />

        </Columns>
    </asp:GridView>

    </section>

</asp:Content>

