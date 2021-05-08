<%@ Page Title="Settings" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="nomadian_4.Settings" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="container d-block">
             <!--height="350" width="1100"-->   
                <img src="images/mainImageMasterDiv.jpg"  class="img-Dash" />
                <h1 class="text-over-img-Dash"> 
                    Settings
                </h1>
                
            </div>
        <br /><br /><hr />
            <div class="container text-center">
           
                
                <div class="row">
                    <div class="col-md-2">

                    </div>
                    <div class="col-md-8">

                    
                        <div id="accordion">
                          <div class="card">
                            <div class="card-header" id="headingCollapseContactUsId">
                              <h5 class="mb-0">
                                <li class="btn btn-link collapsed" href="#collapseContactUs" role="button" data-toggle="collapse" data-target="#collapseContactUs" aria-expanded="false" aria-controls="collapseTwo">
                                  Contact Us
                                </li>
                              </h5>
                            </div>
                            <div id="collapseContactUs" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                              <div class="card-body">
                                
                                  <div class="form-row"> 
                                    <div class="form-group col-lg-12">
                                      <label for="ContactUsSettingTitle">Title</label>
                                         <asp:TextBox ID="contactUsSettingTitle" CssClass="form-control text-center"  runat="server"></asp:TextBox>
                                    </div>
                                 <!--   <div class="form-group col-lg-6">
                                      <label for="ContactUsSettingEmail">E-mail</label>
                                         <asp:TextBox ID="contactUsSettingEmail" CssClass="form-control" textmode="Email" runat="server"></asp:TextBox>
                                    </div> -->
                                  </div>
                                  <div class="form-group">
                                    <label for="ContactUsSettingEmailContent">Tell us what's going on!</label>
                                       <asp:TextBox ID="contactusSettingsMsg" CssClass="form-control" TextMode="MultiLine" Width="685" Height="150" placeholder="What are you thinking?"  runat="server"></asp:TextBox>
                                  <!-- <textarea class="form-control" id="ContactUsSettingEmailContent" rows="3" placeholder="What are you thinking?"></textarea> -->
                                  </div>

                                    <div class="form-groupmr text-center">
                                        <asp:Button ID="ContactUsSend" runat="server" Text="Submit" class="btn btn-success" OnClick="ContactUsSend_Click"></asp:Button>
                                    </div>
                                
                              </div>
                            </div>
                          </div><br />


                          <div class="card">
                            <div class="card-header" id="headingCollapseUpdateProfile">
                              <h5 class="mb-0">
                                <li class="btn btn-link collapsed" href="#collapseUpdateProfile" role="button" data-toggle="collapse" data-target="#collapseUpdateProfile" aria-expanded="false" aria-controls="collapseTwo">
                                  Change Password
                                </li>
                              </h5>
                            </div>
                            <div id="collapseUpdateProfile" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                              <div class="card-body text-center">
                                <asp:Label runat="server" Text="Enter Your Current Password"></asp:Label>
                                <asp:TextBox ID="updatePWDCurrent" CssClass="form-control text-center" TextMode="Password" runat="server"></asp:TextBox>
                                
                                <hr />
                                
                                <asp:Label runat="server" Text="Enter Your New Password"></asp:Label>
                                <asp:TextBox runat="server" ID="updatePWDnew" CssClass="form-control text-center" TextMode="Password"></asp:TextBox>    
                                <br />
                                  <asp:TextBox runat="server" ID="updatePWDconfirm" CssClass="form-control text-center" TextMode="Password" placeholder="Confirm New password"></asp:TextBox>
    
                                <hr />

                                <asp:Button runat="server" ID="updatePWD" CssClass="btn btn-warning" Text="Update Password" OnClick="updatePWD_Click"/>
                              </div>
                            </div>
                          </div><br />


                          <div class="card">
                            <div class="card-header" id="headingTwo">
                              <h5 class="mb-0">
                                <li class="btn btn-link collapsed" href="#collapseTwo" role="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                  Delete Profile
                                </li>
                              </h5>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                              <div class="card-body text-center">
                               <h4>Do you really want to delete your profile? It will erase all your data!</h4>
                                  <div class=" text-center">
                                  
                                      <asp:Label ID="Label1" runat="server" Text="Enter Your Password"></asp:Label>
                                      <asp:TextBox ID="profileDeletePassword" CssClass="form-control text-center" textmode="password" runat="server"></asp:TextBox>
                                </div><hr />
                                    <div class="form-groupmr text-center">
                                        <asp:Button ID="DeleteProfileButton" runat="server" Text="Delete Profile" class="btn btn-danger" OnClick="DeleteProfileButton_Click" ></asp:Button>
                                    </div>
                              </div>
                            </div>
                          </div>
                        </div>
                    </div>
                    <div class="col-md-2">

                    </div>
                </div>
             </div>
         <br />
           
   
</asp:Content>
