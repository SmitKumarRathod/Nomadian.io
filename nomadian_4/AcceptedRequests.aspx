<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="AcceptedRequests.aspx.cs" Inherits="nomadian_4.AcceptedVisitRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>        
    .butNone{
            background:none;
            border:none;
        }

        .butNone:focus{
            border:none;
            outline:none
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-block">   
        <img src="images/mainImageMasterDiv.jpg"  class="img-Dash" />
        <h1 class="text-over-img-Dash"> 
            Accepted Requests
        </h1>
    </div>
    <br />
    <br /><br />
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                 <div class="container card">
                     <br />
                     <div class="card-title text-center">
                         <h4>Your Host's list</h4>
                     </div>
                     <hr />
                    <div class="card-body">
                        <asp:DataList ID="DataList1" style="width:100%" runat="server" DataSourceID="SqlDataSource1" DataKeyField="RequestId" OnItemCommand="DataList1_ItemCommand">
                            <ItemTemplate>
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <div class="card gedf-card">
                                            <div class="card-header">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="d-flex justify-content-between align-items-center">
                                   
                                                        <div class="ml-2">
                                                            <div class="h5 m-0">
                                                                <asp:Button ID="button" CssClass="butNone" runat="server" Text='<%# Eval("toUserName") %>' CommandArgument='<%# Eval("toUserName") %>' CommandName="hostUser" ></asp:Button>
                                                            </div>
                                  
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="card-body">
                   
                                                <a class="card-link" href="#">
                                                    <h5 class="card-title">
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("countryName") %>' ></asp:Label>
                                                    </h5>
                                                </a>

                                                <p class="card-text">
                                                    Your Message:- <asp:Label ID="Label3" runat="server" Text='<%# Eval("reqMessage") %>' ></asp:Label>
                                                    <p>Starting Date:- <asp:Label ID="Label4" runat="server" Text='<%# Eval("startDate", "{0:D}") %>' ></asp:Label></p>
                                                    <p>Ending Date:- <asp:Label ID="Label5" runat="server" Text='<%# Eval("endDate", "{0:D}") %>' ></asp:Label></p>
                                                </p>
                                                    <br />
                                                    <div class="container row text-center">
                                                        <div class="col-md-3">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <asp:Button ID="CancelRequest" runat="server" class="btn btn-danger" Text="Cancel Visit" CommandArgument='<%# Eval("RequestID") %>' CommandName ="delVisit"/>
                                                        </div>
                                                        <div class="col-md-3">
                                                        </div>
                                                    </div>
                                                    
                                                  
                                                                                                
                                            </div>

                                            
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
 
                     
            </div>
                     </div>
                </div>
            <div class="col-md-6">
                 <div class="container card"><br />
                     <div class="card-title text-center">
                         <h4>Your Guest's list</h4>
                     <hr />
                    <div class="card-body">

                        <asp:DataList ID="DataList2" runat="server" style="width:100%" DataKeyField="RequestId" DataSourceID="SqlDataSource2" OnItemCommand="DataList2_ItemCommand">
                            <ItemTemplate>
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <div class="card gedf-card">
                                            <div class="card-header">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="ml-2">
                                                            <div class="h5 m-0">
                                                                <asp:Button ID="button2" CssClass="butNone" runat="server" Text='<%# Eval("fromUserName") %>' CommandArgument='<%# Eval("fromUserName") %>' CommandName="guestName" ></asp:Button>
                                                            </div>
                                  
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="card-body">
                   

                                                <p class="card-text">
                                                <asp:Label ID="label11" runat="server" Text='<%# Eval("fromUserName") %>'></asp:Label>'s Message:- <asp:Label ID="Label8" runat="server" Text='<%# Eval("reqMessage") %>' ></asp:Label>
                                                <p>Starting Date:- <asp:Label ID="Label9" runat="server" Text='<%# Eval("startDate", "{0:D}") %>' ></asp:Label></p>
                                                <p>Ending Date:- <asp:Label ID="Label10" runat="server" Text='<%# Eval("endDate", "{0:D}") %>' ></asp:Label></p>
                                                   
                                                </p>
                                            </div>
                                                <div class="container row text-center">
                                                    <div class="col-md-3"></div>
                                                    <div class="col-md-6">
                                                        <asp:Button ID="Button1" runat="server" Text="Cancel Hosting" class="btn btn-danger" CommandArgument='<%# Eval("RequestID") %>' CommandName ="delHosting" ></asp:Button>
                                                    </div>
                                                    <div class="col-md-3"></div>
                                                </div>
                                                <br />
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <br />

                            </ItemTemplate>

                        </asp:DataList>

                  
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Nomad_DBConnectionString %>" SelectCommand="SELECT * FROM [REQUESTMASTER] WHERE (([fromUserName] = @fromUserName) AND ([reqStatus] = @reqStatus)) ORDER BY [startDate]">
        <SelectParameters>
            <asp:SessionParameter Name="fromUserName" SessionField="sUSERNAME" Type="String" />
            <asp:Parameter DefaultValue="Close" Name="reqStatus" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Nomad_DBConnectionString %>" SelectCommand="SELECT * FROM [REQUESTMASTER] WHERE (([toUserName] = @toUserName) AND ([reqStatus] = @reqStatus)) ORDER BY [startDate]">
        <SelectParameters>
            <asp:SessionParameter Name="toUserName" SessionField="sUSERNAME" Type="String" />
            <asp:Parameter DefaultValue="Close" Name="reqStatus" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
