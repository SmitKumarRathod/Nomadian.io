using System;

namespace nomadian_4
{
    public partial class Profile : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                Session["sUSERNAME"] = null;
                Session["sFULLNAME"] = null;
                Session["sEMAIL"] = null;
                Session["sCOUNTRY"] = null;
                Session["sBIRTH_DATE"] = null;
                Session["sPASSWORD"] = null;
                Response.Redirect("LandingPage1.aspx");
            }
            catch (Exception ae)
            {
                Response.Redirect("LandingPage1.aspx");
            }
        }

        protected void linkHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void linkProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfilePage.aspx");
        }

        protected void linkRequest_Click(object sender, EventArgs e)
        {
            Response.Redirect("Requests.aspx");
        }


        protected void OnClose()
        {
            try
            {
                Session["sUSERNAME"] = null;
                Session["sFULLNAME"] = null;
                Session["sEMAIL"] = null;
                Session["sCOUNTRY"] = null;
                Session["sBIRTH_DATE"] = null;
                Session["sPASSWORD"] = null;
                Response.Redirect("LandingPage1.aspx");
            }
            catch (Exception ae)
            {
                Response.Redirect("LandingPage1.aspx");
            }
        }

        protected void Page_Close()
        {
            try
            {
                Session["sUSERNAME"] = null;
                Session["sFULLNAME"] = null;
                Session["sEMAIL"] = null;
                Session["sCOUNTRY"] = null;
                Session["sBIRTH_DATE"] = null;
                Session["sPASSWORD"] = null;
                Response.Redirect("LandingPage1.aspx");
            }
            catch (Exception ae)
            {
                Response.Redirect("LandingPage1.aspx");
            }
        }

        protected void linkSettings_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Settings.aspx");
        }


    }
}