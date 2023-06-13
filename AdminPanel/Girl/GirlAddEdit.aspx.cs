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

public partial class AdminPanel_Girl_GirlAddEdit : System.Web.UI.Page
{
    #region Load Event
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Page.Title = "NameAddEdit | BabyName";

            if (Page.RouteData.Values["GirlNameID"] != null)
            {
                FillControls(Convert.ToInt32(EncryptDecrypt.Base64Decode(Page.RouteData.Values["GirlNameID"].ToString())));
            }
            else
            {

            }
        }
    }
    #endregion Load Event

    #region Button : Save
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        #region Local Variables
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["BabyNameConnectionString"].ConnectionString);
        SqlString strGirlName = SqlString.Null;
        SqlString strNameMeaning = SqlString.Null;
        #endregion Local Variables

        try
        {
            #region Server Side Validation
            String strErrorMessage = "";

            if (txtGirlName.Text.Trim() == "")
            {
                strErrorMessage += "<font color='Red'>- Enter Girl Name <br /></font>";
            }

            if (strErrorMessage != "")
            {
                lblMessage.Text = strErrorMessage;
                return;
            }
            #endregion Server Side Validation

            #region Gather Information
            // Gather the Information

            if (txtGirlName.Text.Trim() != "")
                strGirlName = txtGirlName.Text.Trim();

            if (txtNameMeaning.Text.Trim() != "")
                strNameMeaning = txtNameMeaning.Text.Trim();


            if (objConn.State != ConnectionState.Open)
                objConn.Open();
            #endregion Gather Information

            #region Set Connection & Command Object
            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;

            objCmd.Parameters.AddWithValue("@GirlName", strGirlName);
            objCmd.Parameters.AddWithValue("@NameMeaning", strNameMeaning);
            if (Session["UserID"] != null)
                objCmd.Parameters.AddWithValue("@UserID", Session["UserID"]);
            #endregion Set Connection & Command Object

            if (Page.RouteData.Values["GirlNameID"] != null)
            {
                #region Update Record
                // edit mode
                objCmd.Parameters.AddWithValue("@GirlNameID", EncryptDecrypt.Base64Decode(Page.RouteData.Values["GirlNameID"].ToString().Trim()));
                objCmd.CommandText = "PR_GirlName_UpdateByPK";
                objCmd.ExecuteNonQuery();
                Response.Redirect("~/AdminPanel/Girl/Girl", true);
                #endregion Update Record
            }
            else
            {
                #region Insert Record
                // add mode
                objCmd.CommandText = "PR_GirlName_Insert";



                objCmd.ExecuteNonQuery();
                txtGirlName.Text = "";
                txtNameMeaning.Text = "";
                txtGirlName.Focus();
                lblMessage.Text = "<font color='Green'>Data Inserted Successfully</font>";
                #endregion Insert Record
            }

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

        #region Button : Save
        {
            Response.Redirect("~/AdminPanel/Girl/Girl", true);
        }
        #endregion Button : Save
    }
    #endregion Button : Save

    #region FillControls
    private void FillControls(SqlInt32 GirlNameID)
    {
        #region Local Variables
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["BabyNameConnectionString"].ConnectionString);
        #endregion Local Variables

        try
        {
            #region Set Connection & Command Object
            if (objConn.State != ConnectionState.Open)
                objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_GirlName_SelectByPKUserID";
            objCmd.Parameters.AddWithValue("@GirlNameID", GirlNameID);
            if (Session["UserID"] != null)
                objCmd.Parameters.AddWithValue("@UserID", Session["UserID"]);


            #endregion Set Connection & Command Object

            #region Read the Value and Set the Controls
            SqlDataReader objSDR = objCmd.ExecuteReader();

            if (objSDR.HasRows)
            {
                while (objSDR.Read())
                {
                    if (!objSDR["GirlName"].Equals(DBNull.Value))
                    {
                        txtGirlName.Text = objSDR["GirlName"].ToString().Trim();
                    }
                    if (!objSDR["NameMeaning"].Equals(DBNull.Value))
                    {
                        txtNameMeaning.Text = objSDR["NameMeaning"].ToString().Trim();
                    }
                    break;
                }
            }
            else
            {
                lblMessage.Text = "No Data available for the GirlNameID = " + GirlNameID.ToString();
            }
            #endregion Read the Value and Set the Controls
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
    #endregion FillControls

    #region Button : Cancel
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminPanel/Girl/Girl", true);
    }
    #endregion Button : Cancel
}