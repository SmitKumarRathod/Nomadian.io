<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="nomadian_4.WebForm2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container d-block">
        <!--height="350" width="1100"-->   
        <img src="images/mainImageMasterDiv.jpg"  class="img-Dash" />
        <h1 class="text-over-img-Dash"> 
            Dashboard
        </h1>
                
    </div>
    <!--/*
    <div class="container card">
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

                  </div>
              </div>
            </div>
    */-->
    <br />
    <br />
    <br />
     <div class="container card">
      <div class="card-body">
          <div class="post-topbar">
			<div class="row align-content-md-center">
				<div class="col-md-6">
					 <strong><i>Create a New Travel Request - </i></strong> 
                    <a href="NewTravelRequest.aspx"  class="btn btn-danger">
                        Create a Travel Request
                    </a>
                </div><br />
         
				<div class="col-md-6">
					<strong><i>  Tell People how are you doin! - </i></strong><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#postModal">Post a Status</button> 
				</div>
			</div><!--post-st end-->
		</div>
      </div>
    </div><br />
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                 <div class="container card"><br />
                     <div class="card-title text-center">
                         <h4>Other member's posts!</h4>
                     </div>
                     <hr />
                   <div id="mainHoePostDiv" runat="server">

                   </div>
                </div>
            </div>
        </div>
    </div>
    <br />
                    <div class="ModalDiv">

                       <div class="modal fade" id="postModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                              <div class="modal-header text-center">
                                <h4 class="modal-title w-100 font-weight-bold">Post a Status</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body mx-3">
                               <div class="card-body">
                                 <div class="card gedf-card">
                                    <div class="card-header">
                                        <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="posts-tab" data-toggle="tab" href="#posts" role="tab" aria-controls="posts" aria-selected="true">Make
                                                    a post</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="card-body">
                                        <div class="tab-content" id="myTabContent">
                                            <div class="modal-body mx-3">
                                            <div class="md-form mb-5">
                                            
                                              <asp:TextBox ID="PostTitle" CssClass="form-control validate" placeholder="Post Title" runat="server"></asp:TextBox> 
                                            <!--  <input type="email" id="postTitle" class="form-control validate" placeholder="Post title">-->
                                            </div>
                                            <div class="tab-pane fade show active" id="posts" role="tabpanel" aria-labelledby="posts-tab">
                                                <div class="form-group">
                                                    <label class="sr-only" for="postStatusContent">post</label>
                                                    <asp:TextBox ID="PostStatusContent" CssClass="form-control" TextMode="MultiLine" Width="300" Height="150" placeholder="What are you thinking?"  runat="server"></asp:TextBox>
                                                  <!--  <textarea class="form-control" id="postStatusContent" rows="3" placeholder="What are you thinking?"></textarea> -->
                                                </div>

                                            </div>

                                        </div>
                                        <div class="btn-toolbar justify-content-between">
                                            <div class="btn-group">
                                                 <asp:LinkButton class="btn btn-primary" ID="SharePostButton" runat="server" OnClick="SharePostButton_Click">Share</asp:LinkButton> 
                                                 <asp:LinkButton class="btn btn-light" ID="CancelPostButton" runat="server" OnClick="CancelPostButton_Click" >Cancel</asp:LinkButton>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                </div>

                              </div>

                            </div>
                          </div>
                        </div>

                        
                    </div>
    </div>
       

                           
   </asp:Content>
