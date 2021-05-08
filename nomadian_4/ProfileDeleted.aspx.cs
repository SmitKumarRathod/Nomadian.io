using System;

namespace nomadian_4
{
    public partial class ProfileDeleted : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["sUSERNAME"] = null;
            Session["sFULLNAME"] = null;
            Session["sEMAIL"] = null;
            Session["sCOUNTRY"] = null;
            Session["sBIRTH_DATE"] = null;
        }

        protected void backToLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage1.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback.aspx");
        }
    }
}