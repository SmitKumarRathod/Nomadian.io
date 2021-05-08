<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="nomadian_4.ProfilePage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container d-block">
            <!--height="350" width="1100"-->   
            <img src="images/mainImageMasterDiv.jpg"  class="img-Dash" />
            <h1 class="text-over-img-Dash"> 
                Profile Page
            </h1>
                
        </div>
	    
      <!--  <div class="container card">
              <div class="card-body">
                  <div class="row">
                      <div class="col-md-4 text-center">
                        <img src="images/tentLogo_1.png" />
                        
                          <h3><asp:Label ID="boxUserName" runat="server" Text="LabelUserName"></asp:Label></h3>
                      </div>
                      <div class="col-md-8 text-center"><br />
                        <h3><i><asp:Label ID="boxTripCompleted" runat="server" Text="LabelTrip"></asp:Label></i></h3>  
                        <h3>Trips completed</h3>
                      </div>
                      <!--<div class="col-md-4 text-center"><br />
                        <h3><i>4.2</i></h3>  
                        <h3>Ratings</h3>
                      </div>-->
                  <!--</div>
              </div>
         </div>-->
        
        <br />

    <div class="container">
	<div class="row ">
             <div class="col-md-6 card border-0 " >
      <div class="card-body">
          <div class="post-topbar">
			<div class="user-picy">
				<img src="images/resources/user-pic.png" alt="">
			</div>
			  <div class="card-title text-center">
				  <h2>About</h2>
			  </div>
			  <hr />
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<b> Your Name  </b>
					</div>
					<div class="col-md-6">
						<asp:Label ID="profName" runat="server" Text="Your Name"></asp:Label>
					</div>
				</div>
                <hr />
				<div class="row">
					<div class="col-md-4">
						<b> Email Id  </b>
					</div>
					<div class="col-md-6">
						<asp:Label ID="profEmail" runat="server" Text="Your Email Id"></asp:Label>
					</div>
				</div>
                <hr />

				<div class="row">
					<div class="col-md-4">
						<b> Your Country  </b>
					</div>
					<div class="col-md-6">
						<asp:Label ID="profCountry" runat="server" Text="Your Country"></asp:Label>
					</div>
				</div>
                <hr />
				<div class="row">
					<div class="col-md-4">
						<b> Date of Birth  </b>
					</div>
					<div class="col-md-6">
						<asp:Label ID="profDOB" runat="server" Text="Your Date of Birth"></asp:Label>
					</div>
				</div>
				
			</div>
		</div>
      </div>
    </div>

		            <div class="col-md-6">
                     <div class="container card"><br />
                         <div class="card-title text-center">
                             <h4><asp:Label runat="server" ID="profStatName" ></asp:Label></h4>
                         </div>
                         <hr />
                       <div id="MainPostsDiv" runat="server">
                      
                     </div>
                     </div>
                    </div>
    </div>
	</div>
    <br />
</asp:Content>
