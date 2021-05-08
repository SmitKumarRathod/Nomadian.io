<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/Main_Master.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="nomadian_4.feedback" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br /><br /><br /><br />
        <div class="row">
            <div class="col-2">

            </div>
            <div class="col-8">
                <div class="card text-center">
                    <div class="card-header">
                        <h3>Feedback</h3>
                    </div>
                    <div class="card-body">
                       <!-- <div class="row">
                            <asp:TextBox Placeholder="Name(Optional)" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>-->
                        <br />
                        <div>
                            <asp:TextBox runat="server" ID="fbtxt" Placeholder="Your Feedback" TextMode="MultiLine" Height="150" CssClass="form-control"></asp:TextBox>
                        </div>
                        <hr />
                        <div>
                            <asp:Button runat="server" ID="feedbackSend" Text="Submit" CssClass="btn btn-primary" OnClick="feedbackSend_Click"/>
                        </div>
                        <br />
                        <asp:LinkButton runat="server" CssClass="text-danger"  Id="backToLogin" OnClick="backToLogin_Click"><< Back to login</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="col-2">

            </div>
        </div>
    </div>
    <br /><br /><br /><br />
</asp:Content>
