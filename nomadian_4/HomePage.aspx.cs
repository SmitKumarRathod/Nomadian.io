using System;
using System.Configuration;
using System.Data.SqlClient;


namespace nomadian_4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                boxUserName.Text = Session["sUSERNAME"].ToString();

            }
            catch (Exception aex)
            {
                Console.Write("<script>alert(" + aex.Message + ");</script>");
            }

            addPostsonHome();
        }

        protected void addPostsonHome()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM POSTMASTER ORDER BY PostId DESC;", con);

                SqlDataReader dr = cmd.ExecuteReader();

                string childDiv = string.Empty;

                // string userName = Session["sUSERNAME"].ToString();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string postTitle = dr.GetValue(1).ToString();
                        string postMsg = dr.GetValue(2).ToString();
                        string userName = dr.GetValue(3).ToString();

                        childDiv = childDiv + "<div class=\"card-body\"><div class=\"card gedf-car\"><div class=\"card-header\"><div class=\"d-flex justify-content-between align-items-center\"><div class=\"d-flex justify-content-between align-items-center\"><div class=\"ml-2\"><div class=\"h5 m-0\"><a href=\"ProfilePage.aspx?uName=" + userName + "\">" + userName + "</a></div></div></div></div></div><div class=\"card-body\"><a class=\"card-link\" href=\"#\"><h5 class=\"card-title\">" + postTitle + "</h5></a> <p class=\"card-text\">" + postMsg + "</p></div></div></div>";
                    }
                }

                mainHoePostDiv.InnerHtml = childDiv;
            }
            catch (Exception ae)
            {

            }
        }

        protected void SharePostButton_Click(object sender, EventArgs e)
        {
            if (PostTitle.Text.Trim() == "" || PostStatusContent.Text.Trim() == "")
            {
                Response.Write("<script>alert('Field/s is/are empty!');</script>");
            }
            else
            {
                try
                {
                    string msgTitle = PostTitle.Text;
                    string msgData = PostStatusContent.Text;
                    DateTime dateTime = DateTime.Now;

                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == System.Data.ConnectionState.Closed)
                        con.Open();

                    SqlCommand cmd = new SqlCommand("INSERT INTO POSTMASTER(PostTitle,PostData,UserName,TimeStamp) values(@postTitle,@postData,@Username,@timestamp);", con);
                    cmd.Parameters.AddWithValue("@postTitle", PostTitle.Text.Trim());
                    cmd.Parameters.AddWithValue("@postData", PostStatusContent.Text.Trim());
                    cmd.Parameters.AddWithValue("@Username", Session["sUSERNAME"].ToString());
                    cmd.Parameters.AddWithValue("@timestamp", dateTime.ToString());

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("HomePage.aspx");
                }
                catch (Exception ae)
                {
                    Response.Write("<script>alert('" + ae.Message + "');</script>");
                }
            }
        }

        protected void CancelPostButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}