using System;
using System.Configuration;
using System.Data.SqlClient;

namespace nomadian_4
{
    public partial class feedback : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void feedbackSend_Click(object sender, EventArgs e)
        {
            if (fbtxt.Text.Trim() == "")
            {
                Response.Write("<script>alert('Your Feedback is empty! Can't send empty feedback!');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == System.Data.ConnectionState.Closed)
                        con.Open();

                    SqlCommand cmd = new SqlCommand("INSERT INTO FEEDBACKMASTER(feedbackMsg) values (@msg);", con);

                    cmd.Parameters.AddWithValue("@msg", fbtxt.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Thank you for feedback! Your feedback has been successfully send. You may now close the tab. Thank you!');</script>");

                    fbtxt.Text = "";
                }
                catch (Exception ae)
                {
                    Response.Write("<script>alert('" + ae.Message + "')</script>");
                }
            }



        }

        protected void backToLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage1.aspx");
        }
    }
}