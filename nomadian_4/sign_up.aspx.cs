using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace nomadian_4
{
    public partial class sign_up : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            if (CheckMemberExists())
            {
                Response.Write("<script>alert('User with same Username or Email ID exists! Choose different Username or Email ID!');</script>");
            }
            else
            {
                SignUpNewMember();
            }

        }

        bool CheckMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM USERMASTER where UserName ='" + sgUserName.Text.Trim() + " AND email'" + sgEmail.Text.Trim() + "';", con);

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
                Response.Write("<script>alert('" + ae.Message + "');</>");

                return true;
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
                cmd.Parameters.AddWithValue("@UserName", sgUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@name", sgName.Text.Trim());
                cmd.Parameters.AddWithValue("@email", sgEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@country", sgCountry.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@birth_date", sgDOB.Text.Trim());
                cmd.Parameters.AddWithValue("@password", sgPwd.Text.Trim());

                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Sign Up Successful. Now login using your Username & Password!');</script>");
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + "');</scropt>");
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage1.aspx");
        }
    }
}
