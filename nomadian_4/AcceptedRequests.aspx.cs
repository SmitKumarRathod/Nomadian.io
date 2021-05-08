using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace nomadian_4
{
    public partial class AcceptedVisitRequests : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName.ToString().Equals("hostUser"))
            {
                Response.Redirect("ProfilePage.aspx?uName=" + e.CommandArgument.ToString());
            }

            else if (e.CommandName.ToString().Equals("delVisit"))
            {
                delVisit(e.CommandArgument.ToString());
            }
        }

        protected void delVisit(string reqId)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("DELETE FROM REQUESTMASTER WHERE RequestID='" + reqId + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Your Visit has been Deleted!');</script>");

                // Response.Redirect("AcceptedRequests.aspx");
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + " Delete visit problem ');</script>");
            }
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName.ToString().Equals("guestName"))
            {
                Response.Redirect("ProfilePage.aspx?uName=" + e.CommandArgument.ToString());
            }
            else if (e.CommandName.ToString().Equals("delHosting"))
            {
                delHosting(e.CommandArgument.ToString());
            }
        }

        protected void delHosting(string reqId)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("UPDATE REQUESTMASTER SET toUserName='nouser', reqStatus='Open' WHERE RequestID=" + reqId + ";", con);



                cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("AcceptedRequests.aspx");
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + " Delete Request problem ');</script>");
            }
        }
    }
}