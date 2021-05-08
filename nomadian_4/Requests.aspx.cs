using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace nomadian_4
{
    public partial class Requests : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName.ToString().Equals("cancelReq"))
            {
                deleteRequest(e.CommandArgument.ToString());
            }
            else if (e.CommandName.ToString().Equals("accpName"))
            {
                Response.Redirect("ProfilePage.aspx?uName=" + e.CommandArgument.ToString());
            }
        }

        protected void deleteRequest(string reqId)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("DELETE FROM REQUESTMASTER WHERE RequestID='" + reqId + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                //    Response.Write("<script>alert('Your Account has been Deleted! We will miss you!');</script>");

                Response.Redirect("Requests.aspx");
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + " Delete Request problem ');</script>");
            }
        }



        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName.ToString().Equals("acceptReq"))
            {
                AcceptRequest(e.CommandArgument.ToString());
            }
            else if (e.CommandName.ToString().Equals("otherName"))
            {
                Response.Redirect("ProfilePage.aspx?uName=" + e.CommandArgument.ToString());
            }
        }

        protected void AcceptRequest(string reqId)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("UPDATE REQUESTMASTER SET toUserName = '" + Session["sUSERNAME"].ToString() + "', reqStatus ='Close'  WHERE RequestID=" + reqId + ";", con);

                /*cmd.Parameters.AddWithValue("@tousername", Session["sUSERNAME"].ToString());
                cmd.Parameters.AddWithValue("@reqstat", "Close");*/
                cmd.ExecuteNonQuery();
                con.Close();
                //    Response.Write("<script>alert('Your Account has been Deleted! We will miss you!');</script>");

                Response.Redirect("HomePage.aspx");
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + " Delete Request problem ');</script>");
            }
        }

        protected void accVisit_Click(object sender, EventArgs e)
        {
            Response.Redirect("AcceptedRequests.aspx");
        }
    }
}