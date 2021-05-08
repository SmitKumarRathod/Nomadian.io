<%@ Page Title="Profile Deleted" Language="C#" MasterPageFile="~/Main_Master.Master" AutoEventWireup="true" CodeBehind="ProfileDeleted.aspx.cs" Inherits="nomadian_4.ProfileDeleted" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br /><br /><br /><br /><br />
        <div class="card text-center">
            <div class="card-header">
                <h3>Your profile has been permanently deleted!</h3>
            </div>
            <div class="card-body">
                <h5>
                    We will miss you!
                </h5>
                <h5>
                    Please submit your feedback <asp:Linkbutton runat="server" OnClick="Unnamed1_Click">here</asp:Linkbutton>!
                </h5>
                <br />
                <div>
                    <asp:Button runat="server" ID="backToLogin" Cssclass="btn btn-info" Text="Back to Login" OnClick="backToLogin_Click"/>
                </div>
            </div>
        </div>
    </div>
    <br /><br /><br /><br /><br />
</asp:Content>
