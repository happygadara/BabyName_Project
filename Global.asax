<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(System.Web.Routing.RouteTable.Routes);
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
    public static void RegisterRoutes(System.Web.Routing.RouteCollection routes)
    {
        routes.Ignore("{resource}.axd/{*pathInfo}");


        routes.MapPageRoute("AdminPanelLogin",
                             "AdminPanel/Login",
                             "~/AdminPanel/Login.aspx");

        routes.MapPageRoute("AdminPanelHome",
                             "AdminPanel/Home/Home",
                             "~/AdminPanel/Home/Home.aspx");

        routes.MapPageRoute("AdminPanelRegistration",
                             "AdminPanel/Registration",
                             "~/AdminPanel/Registration.aspx");

        routes.MapPageRoute("AdminPanelBoy",
                             "AdminPanel/Boy/Boy",
                             "~/AdminPanel/Boy/Boy.aspx");

        routes.MapPageRoute("AdminPanelGirl",
                             "AdminPanel/Girl/Girl",
                             "~/AdminPanel/Girl/Girl.aspx");

        routes.MapPageRoute("AdminPanelContact",
                             "AdminPanel/Contact/Contact",
                             "~/AdminPanel/Contact/Contact.aspx");

        routes.MapPageRoute("AdminPanelAbout",
                             "AdminPanel/About/About",
                             "~/AdminPanel/About/About.aspx");

        routes.MapPageRoute("AdminPanelInquiry",
                             "AdminPanel/Inquiry/Inquiry",
                             "~/AdminPanel/Inquiry/Inquiry.aspx");

        
        routes.MapPageRoute("AdminPanelBoyList",
                            "AdminPanel/Boy/BoyList",
                            "~/AdminPanel/Boy/BoyList.aspx");

        routes.MapPageRoute("AdminPanelGirlList",
                            "AdminPanel/Girl/GirlList",
                            "~/AdminPanel/Girl/GirlList.aspx");

        routes.MapPageRoute("AdminPanelBoyAdd",
                            "AdminPanel/Boy/{OperationName}",
                            "~/AdminPanel/Boy/BoyAddEdit.aspx");
        routes.MapPageRoute("AdminPanelBoyEdit",
                             "AdminPanel/Boy/{OperationName}/{BoyNameID}",
                             "~/AdminPanel/Boy/BoyAddEdit.aspx");

        routes.MapPageRoute("AdminPanelGirlAdd",
                            "AdminPanel/Girl/{OperationName}",
                            "~/AdminPanel/Girl/GirlAddEdit.aspx");
        routes.MapPageRoute("AdminPanelGirlEdit",
                             "AdminPanel/Girl/{OperationName}/{GirlNameID}",
                             "~/AdminPanel/Girl/GirlAddEdit.aspx");

        
                
    }
       
</script>
