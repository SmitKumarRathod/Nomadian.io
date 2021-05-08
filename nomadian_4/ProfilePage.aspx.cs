using System;
using System.Configuration;
using System.Data.SqlClient;

namespace nomadian_4
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        public string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["uName"] != null)
                {

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                        con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM USERMASTER WHERE UserName ='" + Request.QueryString["uName"].ToString() + "';", con);

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            boxUserName.Text = dr.GetValue(0).ToString();
                            profName.Text = dr.GetValue(1).ToString();
                            profEmail.Text = dr.GetValue(2).ToString();
                            profCountry.Text = dr.GetValue(3).ToString();
                            profDOB.Text = dr.GetValue(4).ToString();
                            profDOB.Text = profDOB.Text.Substring(0, 10);
                            profStatName.Text = profName.Text + "'s Status";
                        }
                    }
                }
                else
                {
                    boxUserName.Text = Session["sUSERNAME"].ToString();
                    profName.Text = Session["sFULLNAME"].ToString();
                    profEmail.Text = Session["sEMAIL"].ToString();
                    profCountry.Text = Session["sCountry"].ToString();
                    profDOB.Text = Session["sBIRTH_DATE"].ToString();
                    profDOB.Text = profDOB.Text.Substring(0, 10);
                    profStatName.Text = "Your Stauts";
                }
            }
            catch (Exception ae)
            {
                Response.Write("<script>alert('" + ae.Message + "')</script>");
            }


            addPosts();
        }

        protected void addPosts()
        {
            try
            {
                if (Request.QueryString["uName"] != null)
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                        con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM POSTMASTER WHERE UserName ='" + Request.QueryString["uName"].ToString() + "' ORDER BY PostId DESC;", con);

                    SqlDataReader dr = cmd.ExecuteReader();

                    string childDiv = string.Empty;

                    string userName = Request.QueryString["uName"].ToString();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            string postTitle = dr.GetValue(1).ToString();
                            string postMsg = dr.GetValue(2).ToString();

                            childDiv = childDiv + "<div class=\"card-body\"><div class=\"card gedf-car\"><div class=\"card-header\"><div class=\"d-flex justify-content-between align-items-center\"><div class=\"d-flex justify-content-between align-items-center\"><div class=\"ml-2\"><div class=\"h5 m-0\">" + userName + "</div></div></div></div></div><div class=\"card-body\"><a class=\"card-link\" href=\"#\"><h5 class=\"card-title\">" + postTitle + "</h5></a> <p class=\"card-text\">" + postMsg + "</p></div></div></div>";
                        }
                    }
                    else
                    {
                        childDiv = "<div> <h3> You don't have any posts!</h3></div>";
                    }

                    MainPostsDiv.InnerHtml = childDiv;
                }
                else
                {

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                        con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM POSTMASTER WHERE UserName ='" + Session["sUSERNAME"].ToString() + "' ORDER BY PostId DESC;", con);

                    SqlDataReader dr = cmd.ExecuteReader();

                    string childDiv = string.Empty;

                    string userName = Session["sUSERNAME"].ToString();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            string postTitle = dr.GetValue(1).ToString();
                            string postMsg = dr.GetValue(2).ToString();

                            childDiv = childDiv + "<div class=\"card-body\"><div class=\"card gedf-car\"><div class=\"card-header\"><div class=\"d-flex justify-content-between align-items-center\"><div class=\"d-flex justify-content-between align-items-center\"><div class=\"ml-2\"><div class=\"h5 m-0\">" + userName + "</div></div></div></div></div><div class=\"card-body\"><a class=\"card-link\" href=\"#\"><h5 class=\"card-title\">" + postTitle + "</h5></a> <p class=\"card-text\">" + postMsg + "</p></div></div></div>";
                        }
                    }
                    else
                    {
                        childDiv = "<div> <h3> You don't have any posts!</h3></div>";
                    }

                    MainPostsDiv.InnerHtml = childDiv;
                }
            }
            catch (Exception ae)
            {

            }
        }
    }

}

/** < div class="card-body">
          <div class="card gedf-card">
             <div class="card-header">
                 <div class="d-flex justify-content-between align-items-center">
                     <div class="d-flex justify-content-between align-items-center">

                         <div class="ml-2">
                             <div class="h5 m-0">User Name</div>
                   
                         </div>
                     </div>
         
                 </div>

             </div>
             <div class="card-body">
    
                 <a class="card-link" href="#">
                     <h5 class="card-title">Totam non adipisci hic! Possimus ducimus amet, dolores illo ipsum quos
                         cum.</h5>
                 </a>

                 <p class="card-text">
                     Lorem ipsum dolor sit amet consectetur adipisicing elit.Ipsam sunt fugit reprehenderit consectetur exercitationem odio,
                     quam nobis? Officiis, similique, harum voluptate, facilis voluptas pariatur dolorum tempora sapiente
                     eius maxime quaerat.
                    
                 </p>
             </div>

         </div>
             <br />
         </div>**/
