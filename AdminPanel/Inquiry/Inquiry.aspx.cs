using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Inquiry_Inquiry : System.Web.UI.Page
{
    #region Load Event
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
           
        }
    }
    #endregion Load Event

    #region Button : Save
    protected void btnSend_Click(object sender, EventArgs e)
    {
        #region Local Variables
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["BabyNameConnectionString"].ConnectionString);
        
        SqlString strName = SqlString.Null;
        SqlString strMobileNo = SqlString.Null;
        SqlString strEmail = SqlString.Null;
        SqlString strMessage = SqlString.Null;
        #endregion Local Variables

        try
        {
            #region Server Side Validation
            String strErrorMessage = "";

            if (txtName.Text.Trim() == "")
            {
                strErrorMessage += "<font color='Red'>- Enter Name <br /></font>";
            }

            if (txtMobileNo.Text.Trim() == "")
            {
                strErrorMessage += "<font color='Red'>- Enter Mobile No. <br /></font>";
            }

            if (txtEmail.Text.Trim() == "")
            {
                strErrorMessage += "<font color='Red'>- Enter EmailID <br /></font>";
            }

            if (txtMessage.Text.Trim() == "")
            {
                strErrorMessage += "<font color='Red'>- Enter Message <br /></font>";
            }

            if (strErrorMessage != "")
            {
                lblMessage.Text = strErrorMessage;
                return;
            }
            #endregion Server Side Validation

            #region Gather Information
            // Gather the Information

            if (txtName.Text.Trim() != "")
                strName = txtName.Text.Trim();

            if (txtMobileNo.Text.Trim() != "")
                strMobileNo = txtMobileNo.Text.Trim();

            if (txtEmail.Text.Trim() != "")
                strEmail = txtEmail.Text.Trim();

            if (txtMessage.Text.Trim() != "")
                strMessage = txtMessage.Text.Trim();


            if (objConn.State != ConnectionState.Open)
                objConn.Open();
            #endregion Gather Information

            #region Set Connection & Command Object
            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;

            objCmd.Parameters.AddWithValue("@Name", strName);
            objCmd.Parameters.AddWithValue("@MobileNo", strMobileNo);
            objCmd.Parameters.AddWithValue("@Email", strEmail);
            objCmd.Parameters.AddWithValue("@Message", strMessage);
            
            #endregion Set Connection & Command Object

                #region Insert Record
                
                objCmd.CommandText = "PR_Inquiry_Insert";



                objCmd.ExecuteNonQuery();
                txtName.Text = "";
                txtMobileNo.Text = "";
                txtEmail.Text = "";
                txtMessage.Text = "";
                txtName.Focus();
                lblMessage.Text = "<font color='Green'>Message Send Successfully</font>";
                #endregion Insert Record
            

            if (objConn.State == ConnectionState.Open)
                objConn.Close();

        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
    }
    #endregion Button : Save
}