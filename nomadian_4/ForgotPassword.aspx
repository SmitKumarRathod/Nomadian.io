<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="nomadian_4.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot password</title>
     <link href="css/bootstrap.min.css" rel="stylesheet" />

    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style>
        body {
            background-image: url('images/SgBg1.jpg');
            background-repeat:no-repeat;
            background-attachment:fixed;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <div class="container">
                <br /><br /><br /><br /><br /><br />
                <div class="row text-center">
                    <div class="col-4"></div>
                    <div class="col-4">
                    <div class="card">
                            <div class="card-header">
                               <h2>Forgot password</h2>
                            </div>
                            <div class="card-body align-items-center">
                                <div class="form-row">
                                    <asp:Label ID="Label1" runat="server" Text="Username:-"></asp:Label> &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="fpUsername" CssClass="form-check" runat="server"></asp:TextBox>
                                </div>
                                
                                <hr />
                                <div class="form-row">
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="getEmailpwdbtn" runat="server" CssClass="btn btn-primary" Text="Get Mail on your Registered Email Id" OnClick="getEmailpwdbtn_Click"/>
                                </div>
                               
   
                                <hr />
                                <div class="form-row">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="sgButton" CssClass="btn btn-success" Text="Sign Up" runat="server" Visible="False" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="lgback" runat="server" OnClick="lgback_Click" ><< Back to Login</asp:LinkButton>
                                </div>
                            </div>
                    </div>
                    </div>
                    <div class="col-4"></div>
                </div>
           </div>
        </div>
    </form>
</body>
</html>
