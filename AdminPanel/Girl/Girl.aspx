<%@ Page Title="" Language="C#" MasterPageFile="~/Content/BabyName.master" AutoEventWireup="true" CodeFile="Girl.aspx.cs" Inherits="AdminPanel_Girl_Girl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">

    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="padding-top: 100px;">
          <h2>Search Girl Name</h2>
          
        </div>

        <div class="row" style="text-align:center">
        <div class="col-md-12">
            <div>
                <asp:HyperLink runat="server" ID="hlAddGirl" Text="Add New Girl Name" CssClass="btn btn-sm btn-dark" NavigateUrl="~/AdminPanel/Girl/Add"></asp:HyperLink>
            </div>
            <br />
        </div>
            </div>
        

         
          <div class="row center">
        <div class="col-md-12">
            <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label>
        </div>
    </div><br />


           <div>
                <asp:GridView ID="gvGirl" runat="server" OnRowCommand="gvGirl_RowCommand" >
                    <Columns>

                        <asp:BoundField DataField="GirlName" HeaderText="Name" />
                        <asp:BoundField DataField="NameMeaning" HeaderText="Meaning" />

                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button runat="server" ID="btnDelete" Text="Delete" CssClass="btn btn-danger btn-sm" OnClientClick="return confirm('Are you sure you want to delete?')" CommandName="DeleteRecord" CommandArgument='<%# Eval("GirlNameID").ToString() %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" CssClass="btn btn-primary btn-sm" NavigateUrl='<%# "~/AdminPanel/Girl/Edit/" + EncryptDecrypt.Base64Encode(Eval("GirlNameID").ToString().Trim()) %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </div>

      </div>

        <br /><br />
            <div style="text-align:center">
                <asp:TextBox ID="txtGirlName" runat="server" CssClass="form-control-sm"></asp:TextBox>
                <asp:Button ID="btnSearch"  runat="server" Text="Search" OnClick="btnSearch_Click1" CssClass="btn btn-sm btn-dark"/>
            </div>
<%--            </div>--%>
        <%--<br />
        <br />--%>

        
        <br />
        <br />
        <asp:GridView ID="gvSearch" CssClass="container" runat="server" AutoGenerateColumns="False">
        <Columns>
           
            <asp:BoundField DataField="GirlName" HeaderText="Name" />
            <asp:BoundField DataField="NameMeaning" HeaderText="Meaning" />

        </Columns>
    </asp:GridView>

    </section>

</asp:Content>

