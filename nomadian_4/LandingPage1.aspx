<%@ Page Title="Nomadian.io" Language="C#" MasterPageFile="~/Main_Master.Master" AutoEventWireup="true" CodeBehind="LandingPage1.aspx.cs" Inherits="nomadian_4.LandingPage1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    
    <header class="masthead">
       
    <div class="container">
      <div class="row">
         <div class="header-content mx-auto text-center">
                          
            
                       <br /><br /><br />
            <div class="d-flex justify-content-center">
                <div class="d-flex align-items-center">
                    <div>
                        <h1 class="mb-5">Nomadian.io, <br /> New Social Media Platform exclusively for all the Hitch Hikers across the globe!</h1>
                        <div class="form-inline">
                            <div class="input-group form-row">
                                <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">@</span>
                                </div>
                                <asp:TextBox ID="usrnmeLogin" placeholder="Username" CssClass="form-control" runat="server" ></asp:TextBox>
                 
                                &nbsp;&nbsp; &nbsp;
                                <asp:TextBox ID="pwdLogin" placeholder="Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                                
                                &nbsp;&nbsp; &nbsp;
                                <asp:Button ID="LoginBtn" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="LoginBtn_Click" />
                       
                            </div>
                            <hr />
                            <div class="">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:LinkButton CssClass="color='White'" ID="forgetPwd" runat="server" OnClick="forgetPwd_Click">Forgot password?</asp:LinkButton>
                            </div>
                        </div>

                        <br />
                        <h4> New User? </h4>
                        <a href="Signup_.aspx" class="btn btn-light">Sign Up</a>
                     <!--   <a href="SignUp.aspx" class="btn btn-light">Join Now</a>-->
                     </div>
                  
                 
                </div>

                    </div>
                </div>
            </div>
      </div>
     
  
   
  </header>
                 

  <section class="download bg-primary text-center" id="download">
    <div class="container">
      <div class="row">
        <div class="col-md-8 mx-auto">
          <h2 class="section-heading">Discover what all the buzz is about!</h2><br /><br />
          <p>Nomadian.io, started in August 2020, is very rapidly becoming the most favourite and widly known social media platform between the Hitch hikers and people doing random travel.</p>
 
        </div>
      </div>
    </div>
  </section>

  <section class="features" id="features">
    <div class="container">
      <div class="section-heading text-center">
        <h2>Unlimited Travel, Unlimited Fun</h2><br />
        <p class="text-muted">No Limitation of Usage! No Pricing! 100% Free! Now Travel more and free!</p>
        <hr>
      </div>
      <div class="row">

        <div class="col-sm-12 my-auto">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-6">
                <div class="feature-item">
                  
                  <h3>
                      <asp:Label runat="server" ID="Usercountlbl" Text=" " ></asp:Label>
                  </h3>
                  <p class="text-muted">Active Users</p>
                </div>
              </div>
               
              <div class="col-lg-6">
                <div class="feature-item">
                 <!-- <i class="icon-camera text-primary"></i>-->
                  <h3>Easy to Use</h3>
                  <p class="text-muted">Put an image, video, animation, or anything else in the screen!</p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="feature-item">
               <!--  <i class="icon-present text-primary"></i>-->
                  <h3>Free to Use</h3>
                  <p class="text-muted">We believe in a low cost travel!</p>
                </div>
              </div>
              
              <div class="col-lg-6">
                <div class="feature-item">
                 <!-- <i class="icon-lock-open text-primary"></i>-->
                  <h3>24x7 Support</h3>
                  <p class="text-muted">Contact us Anytime! We'd love to help you!</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

 

  <section class="contact bg-primary" id="contact">
    <div class="container">
      <h2>We
        <i class="fas fa-heart"></i>
        new friends!</h2>
        <div class="row">
          <div class="col-sm-6">
            <div class="card ">
              <div class="card-body">
               <p> nomadian.io@gmail.com</p>
                <a href="#" class="btn btn-primary">Email Us!</a>
              </div>
            </div>
          </div>
            <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
       
                <p class="card-text">+91-9876543210</p>
                <a href="#" class="btn btn-primary">Call Us!</a>
                </div>
            </div>
            </div>
        </div> 

        <br />
       <!-- 
            <div>
                <asp:TextBox ID="cntctUsName" placeholder="Your Name" Width="500" Height="40" runat="server"></asp:TextBox>
            </div>
            <br />
            <div >
                <asp:TextBox ID="cntctUsEmail" placeholder="Your Email" Width="500" Height="40" runat="server"></asp:TextBox>
            </div>
        
        <br />
        <div>
            <asp:TextBox ID="cntcUsTitle" placeholder="Subject" Width="500" Height="40" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:TextBox ID="cntctUsMsg" placeholder="Your Message" TextMode="MultiLine" Width="500" Height="150" runat="server"></asp:TextBox>
        </div>
        -->
    </div>
  </section>

  
</asp:Content>
