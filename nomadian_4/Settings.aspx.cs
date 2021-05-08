using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace nomadian_4
{
    public partial class Settings : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ContactUsSend_Click(object sender, EventArgs e)
        {
            if (contactUsSettingTitle.Text.Trim() == "" || contactusSettingsMsg.Text.Trim() == "")
            {
                Response.Write("<script>alert('Title/Message is Blank!');</>");
            }
            else
            {
                try
                {
                    string msgTitle = contactUsSettingTitle.Text.Trim();
                    string msgBody = contactusSettingsMsg.Text.Trim();

                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO CONTACTUSMESSAGES (Title,QueryMsg,userEmail,User_full_name) values (@msgTitle, @msgBody, @userEmail, @User_full_name);", con);

                    cmd.Parameters.AddWithValue("@msgTitle", msgTitle);
                    cmd.Parameters.AddWithValue("@msgBody", msgBody);
                    cmd.Parameters.AddWithValue("@userEmail", Session["sEMAIL"].ToString().Trim());
                    cmd.Parameters.AddWithValue("@User_full_name", Session["sFULLNAME"].ToString().Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Message successfully send! Our team will reach to you in less than one business day. Thank You!');</script>");

                    contactusSettingsMsg.Text = "";
                    contactUsSettingTitle.Text = "";
                }
                catch (Exception ae)
                {
                    Response.Write("<script>alert('" + ae.Message + "')</script>");
                }
            }
        }

        protected void DeleteProfileButton_Click(object sender, EventArgs e)
        {
            try
            {
                /* SqlConnection con = new SqlConnection(strcon);

                 if (con.State == ConnectionState.Closed)
                     con.Open();

                 SqlCommand cmd1 = new SqlCommand("SELECT password FROM USERMASTER WHERE Username='" + Session["sUSERNAME"].ToString().Trim() + "';", con);
                 SqlDataReader dr = cmd1.ExecuteReader();

                 string passwordDB = "";
                 if (dr.HasRows)
                 {
                     while (dr.Read())
                     {
                         passwordDB = dr.GetValue(0).ToString();
                     }
                 }
                 */

                if (Session["sPASSWORD"].ToString() == profileDeletePassword.Text.Trim())
                {
                    string passwordDB = profileDeletePassword.Text.Trim();
                    deleteUser(passwordDB);

                }
                else
                {
                    Response.Write("<script>alert('Invalid password! for Security reasons you're being redirect to homepage.')</script>");
                    redirectToHome();
                }
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + "invalid pwd');</script>");
            }

        }

        protected void deleteUser(string pwd)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("DELETE FROM USERMASTER WHERE Username='" + Session["sUSERNAME"].ToString().Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                //    Response.Write("<script>alert('Your Account has been Deleted! We will miss you!');</script>");

                Response.Redirect("ProfileDeleted.aspx");
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + " Delete problem ');</script>");
            }
        }
        protected void redirectToHome()
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void updatePWD_Click(object sender, EventArgs e)
        {
            string currPwd = updatePWDCurrent.Text.Trim();
            string newPwd = updatePWDnew.Text.Trim();
            string confirmPwd = updatePWDconfirm.Text.Trim();

            if (currPwd == "" || newPwd == "" || confirmPwd == "")
            {
                Response.Write("<script>alert('Invalid details!');</script>");
                return;
            }
            else if (newPwd.Length < 8)
            {
                Response.Write("<script>alert('New Password should atleast contain 8 or more characters!');</script>");
            }
            else if (newPwd.CompareTo(confirmPwd) != 0)
            {
                Response.Write("<script>alert('Entered confirm password is not equal to the new password!');</script>");
            }
            else if (Session["sPASSWORD"].ToString() != currPwd)
            {
                Response.Write("<script>alert('Wrong current password!');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == ConnectionState.Closed)
                        con.Open();

                    SqlCommand cmd = new SqlCommand("UPDATE USERMASTER SET PASSWORD='" + newPwd + "' WHERE Username='" + Session["sUSERNAME"].ToString().Trim() + "';", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Session["sPASSWORD"] = newPwd;
                    Response.Write("<script>alert('Password updated successfully!');</script>");
                }
                catch (Exception ae)
                {
                    Response.Write("<script>alert('" + ae.Message + "');</script>");
                }
            }
        }
    }
}