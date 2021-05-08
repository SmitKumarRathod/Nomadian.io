using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace nomadian_4
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lgback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landingpage1.aspx");
        }

        protected void getEmailpwdbtn_Click(object sender, EventArgs e)
        {
            if (CheckMEmberExist())
            {
                SendPasswordOnEmail();
            }
            else
            {
                Response.Write("<script>alert('Invalid Username!');</script>");
            }

        }

        protected bool CheckMEmberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM USERMASTER where UserName ='" + fpUsername.Text.Trim() + "';", con);
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
                Response.Write("<script>alert('" + ae.Message + "-" + ae.StackTrace + "');</script> ");
                return false;
            }
        }

        protected void SendPasswordOnEmail()
        {
            try
            {
                string toaddr = "";
                string fromaddr = "emailpasswordforgot@gmail.com";
                string password = "";

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT email, password FROM USERMASTER WHERE username='" + fpUsername.Text.Trim() + "';", con);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        toaddr = dr.GetValue(0).ToString();
                        password = dr.GetValue(1).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials! If you are New User try Sign up first!');</script>");
                }

                MailMessage message = new MailMessage(fromaddr, toaddr);

                string username = fpUsername.Text.Trim();

                string mailbody = "Hello, " + username + " password of your Nomadian.io account is " + password + ". We strongly suggest you to delete this mail as soon as possible for security reasons. We also strongly encourage you to update your password. Thank You!";
                message.Subject = "Password retrieval - Nomadian.io";
                message.Body = mailbody;
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;

                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                NetworkCredential basicCredential1 = new NetworkCredential("emailpasswordforgot@gmail.com", "emailpasswordforgot");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = basicCredential1;

                try
                {
                    client.Send(message);
                    Response.Write("<script>alert('Password sent on regiested Email. Login with your credentials now!');</script>");
                }
                catch (Exception ae)
                {
                    throw ae;
                }
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + " -- " + ae.StackTrace + "');</script>");
            }
        }
    }
}