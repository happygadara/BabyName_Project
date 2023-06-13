<%@ Page Title="" Language="C#" MasterPageFile="~/Content/BabyName.master" AutoEventWireup="true" CodeFile="BoyList.aspx.cs" Inherits="AdminPanel_Boy_BoyList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">

    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="section-title" style="padding-top: 100px;">
                <h2>Boy Name List</h2>

            </div>

            <div class="row">
        <div class="col-md-12">
            <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label>
        </div>
    </div>
            
            <div>
                <asp:GridView ID="gvBoy" runat="server" OnRowCommand="gvBoy_RowCommand">
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
            
            

        </div>
    </section>

</asp:Content>

