using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace nomadian_4
{
    public partial class Signup_ : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lgback_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage1.aspx");
        }

        protected void sgButton_Click(object sender, EventArgs e)
        {
            if (CheckMemberExists() && sgusername.Text.Trim().Equals("nouser", StringComparison.InvariantCultureIgnoreCase))
            {
                Response.Write("<script>alert('User Already Exist with same Username or Email! Try using another one!')</script>");
            }
            else if (sgpwd.Text.Trim().Length < 8)
            {
                Response.Write("<script>alert('Password length must be atleast 8 characters!')</script>");
            }
            else
            {
                SignUpNewMember();
            }
        }

        protected bool CheckMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM USERMASTER where UserName ='" + sgusername.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                con.Close();

                if (dt.Rows.Count >= 1)
                    return true;
                else
                    return false;
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + "');</script>");
                return false;
            }
        }

        protected void SignUpNewMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO USERMASTER(UserName,name,email,country,birth_date,password) values (@UserName,@name,@email,@country,@birth_date,@password);", con);

                cmd.Parameters.AddWithValue("@UserName", sgusername.Text.Trim());
                cmd.Parameters.AddWithValue("@name", sgfullname.Text.Trim());
                cmd.Parameters.AddWithValue("@email", sgemail.Text.Trim());
                cmd.Parameters.AddWithValue("@country", sgCountryDlist.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@birth_date", sgDOB.Text.Trim());
                cmd.Parameters.AddWithValue("@password", sgpwd.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();



                Response.Write("<script>alert('Sign Up Successful. Now Login using your User Name & Password!')</script>");

                sgusername.Text = "";
                sgfullname.Text = "";
                sgemail.Text = "";
                sgcountry.Text = "";
                sgDOB.Text = "";
                sgpwd.Text = "";

            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + "--- SignUp Error'" + ae.StackTrace + ");</script>");
            }
        }
    }
}