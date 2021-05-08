using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace nomadian_4
{
    public partial class LandingPage1 : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);

            // if closed then opening the connection 
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            //Sql command
            SqlCommand cmd = new SqlCommand("select * from USERMASTER ;", con);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int count = dt.Rows.Count;
            con.Close();

            Usercountlbl.Text = count.ToString() + "+";
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('login btn working');</script>");

            try
            {
                //generating connection string
                SqlConnection con = new SqlConnection(strcon);

                // if closed then opening the connection 
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //Sql command
                SqlCommand cmd = new SqlCommand("select * from USERMASTER where username='" + usrnmeLogin.Text.Trim() + "' AND password='" + pwdLogin.Text.Trim() + "';", con);

                //Excute command and store data in dr datareader
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows) // if data is there that means legit user
                {
                    while (dr.Read()) // Setting session Variables 
                    {
                        Response.Write("<script>alert('Successful Login!');</script>");
                        Session["sUSERNAME"] = dr.GetValue(0).ToString();
                        Session["sFULLNAME"] = dr.GetValue(1).ToString();
                        Session["sEMAIL"] = dr.GetValue(2).ToString();
                        Session["sCOUNTRY"] = dr.GetValue(3).ToString();
                        Session["sBIRTH_DATE"] = dr.GetValue(4).ToString();
                        Session["sPASSWORD"] = dr.GetValue(5).ToString();
                    }

                    // Redirecting to Homepage.aspx
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials! If you are New User try Sign up first!');</script>");
                }

                con.Close();
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + "');</script>");
            }
        }

        protected void forgetPwd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}