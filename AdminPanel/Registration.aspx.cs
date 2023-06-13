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

public partial class AdminPanel_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Register | MultiUserAddressBook";
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        #region Local Variables
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["BabyNameConnectionString"].ConnectionString);
        SqlString strUserName = SqlString.Null;
        SqlString strPassword = SqlString.Null;
        SqlString strDisplayName = SqlString.Null;
        SqlString strMobileNo = SqlString.Null;
        SqlString strEmail = SqlString.Null;
        #endregion Local Variables

        try
        {
            #region Server Side Validation
            String strErrorMessage = "";

            if (txtUserNameRegister.Text.Trim() == "")
            {
                strErrorMessage += "- Enter User Name <br />";
            }
            if (txtPasswordRegister.Text.Trim() == "")
            {
                strErrorMessage += "- Enter Password <br />";
            }
            if (txtDisplayNameRegister.Text.Trim() == "")
            {
                strErrorMessage += "- Enter Display Name <br />";
            }

            if (strErrorMessage != "")
            {
                lblMessageRegister.Text = "Kindly solve following Error(s) <br />" + strErrorMessage;
                return;
            }
            #endregion Server Side Validation

            #region Gather Information
            // Gather the Information

            if (txtUserNameRegister.Text.Trim() != "")
                strUserName = txtUserNameRegister.Text.Trim();

            if (txtPasswordRegister.Text.Trim() != "")
                strPassword = txtPasswordRegister.Text.Trim();

            if (txtDisplayNameRegister.Text.Trim() != "")
                strDisplayName = txtDisplayNameRegister.Text.Trim();

            if (txtMobileNoRegister.Text.Trim() != "")
                strMobileNo = txtMobileNoRegister.Text.Trim();

            if (txtEmailRegister.Text.Trim() != "")
                strEmail = txtEmailRegister.Text.Trim();


            if (objConn.State != ConnectionState.Open)
                objConn.Open();
            #endregion Gather Information

            #region Set Connection & Command Object
            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;

            objCmd.CommandText = "PR_User_Insert";

            objCmd.Parameters.AddWithValue("@UserName", strUserName);
            objCmd.Parameters.AddWithValue("@Password", strPassword);
            objCmd.Parameters.AddWithValue("@DisplayName", strDisplayName);
            objCmd.Parameters.AddWithValue("@MobileNo", strMobileNo);
            objCmd.Parameters.AddWithValue("@Email", strEmail);

            objCmd.ExecuteNonQuery();
            txtUserNameRegister.Text = "";
            txtPasswordRegister.Text = "";
            txtDisplayNameRegister.Text = "";
            txtMobileNoRegister.Text = "";
            txtEmailRegister.Text = "";
            txtUserNameRegister.Focus();
            lblMessageRegister.Text = "Data Inserted Successfully";

            if (objConn.State == ConnectionState.Open)
                objConn.Close();

            #endregion Set Connection & Command Object
        }
        catch (Exception ex)
        {
            lblMessageRegister.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
    }
}