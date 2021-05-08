using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace nomadian_4
{
    public partial class NewTravelRequest : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void submitTravelRequest_Click(object sender, EventArgs e)
        {
            addRequest();
        }

        protected void addRequest()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO REQUESTMASTER(fromUserName,CountryName,startDate,endDate,reqMessage,reqStatus) values(@fromUser,@countryName,@startdate,@enddate,@reqmsg,@reqstat);", con);

                cmd.Parameters.AddWithValue("@reqmsg", purposeVisit.Text.Trim());
                cmd.Parameters.AddWithValue("@countryName", countryDropDownListTravelRequest.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@fromUser", Session["sUSERNAME"].ToString());
                cmd.Parameters.AddWithValue("@startdate", startDate.Text.Trim());
                cmd.Parameters.AddWithValue("@enddate", endDate.Text.Trim());
                cmd.Parameters.AddWithValue("@reqstat", "Open");
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("Requests.aspx");
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + "');</script>");
            }
        }
    }
}