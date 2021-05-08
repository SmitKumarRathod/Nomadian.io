using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace nomadian_4
{
    public partial class SignUp : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {


        }


        // Login Form

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            //Response.Redirect("HomePage.aspx");


            //Response.Write("<script>alert('Log in Successful!')</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from USERMASTER where username='" + lgUserName.Text.Trim() + "' AND password='" + lgPwd.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        Response.Write("<script>alert('Successful login');</script>");
                        Session["sUSERNAME"] = dr.GetValue(0).ToString();
                        Session["sFULLNAME"] = dr.GetValue(1).ToString();
                        Session["sEMAIL"] = dr.GetValue(2).ToString();
                        Session["sCOUNTRY"] = dr.GetValue(3).ToString();
                        Session["sBIRTH_DATE"] = dr.GetValue(4).ToString();
                    }

                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials! If you are a New User try Signin up first!');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }





        //Sign Up Form

        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            // Response.Redirect("HomePage.aspx");
            if (checkMemberExistSU())
            {
                Response.Write("<script>alert('User With Email Id already exist, Try another Email Id!');</script>");
            }
            else
            {
                signUpNewMember();
            }

        }


        bool checkMemberExistSU()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                // con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM USERMASTER where UserName ='" + sgUserName.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                    return true;
                else
                    return false;

            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + " -- CheckMemberError');</script>");
                return false;
            }
        }

        void signUpNewMember()
        {
            // Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO USERMASTER(UserName,name,email,country,birth_date,password) values (@UserName,@name,@email,@country,@birth_date,@password);", con);

                cmd.Parameters.AddWithValue("@UserName", sgUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@name", sgName.Text.Trim());
                cmd.Parameters.AddWithValue("@email", sgEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@country", sgCountry.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@birth_date", sgDOB.Text.Trim());
                cmd.Parameters.AddWithValue("@password", sgPwd.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sign Up Successful. Now Login using your User Name & Password!');</script>");
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + "--- SignUp Error'" + ae.StackTrace + ");</script>");
            }
        }
    }
}