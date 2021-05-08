<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup_.aspx.cs" Inherits="nomadian_4.Signup_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

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
                <br /><br />
                <div class="row text-center">
                    <div class="col-3"></div>
                    <div class="col-6">
                    <div class="card">
                            <div class="card-header">
                               <h2>Sign Up</h2>
                            </div>
                            <div class="card-body align-items-center">
                                <div class="form-row row">
                                    
                                    <asp:Label ID="Label1" CssClass="col-md-4" runat="server" Text="Username:-"></asp:Label> 
                                    <asp:TextBox ID="sgusername" CssClass="col-md-7 form-check" required="true" runat="server"></asp:TextBox>
                                </div>
                                <hr />
                                <div class="form-row row">
                                    <asp:Label ID="Label2" CssClass="col-md-4" runat="server" Text="Fullname:-"></asp:Label>
                                    <asp:TextBox ID="sgfullname" CssClass="col-md-7 form-check" runat="server"></asp:TextBox>
                                </div>
                                <hr />
                                <div class="form-row row">
                                    <asp:Label ID="Label3" CssClass="col-md-4" runat="server" Text="Email:-"></asp:Label>
                                    <asp:TextBox ID="sgemail" TextMode="Email" CssClass="col-md-7 form-check" runat="server"></asp:TextBox>
                                </div>
                                <hr />
                                <div class="form-row row">
                                    <asp:Label ID="Label4" CssClass="col-md-4" runat="server" Text="Date of Birth:-"></asp:Label>
                                    <asp:TextBox ID="sgDOB" TextMode="Date" CssClass="col-md-7 form-check" runat="server"></asp:TextBox>
                                </div>
                                <hr />
                                <div class="form-row row">
                                    <asp:Label ID="Label5" CssClass="col-md-4" runat="server" Text="Country:-"></asp:Label>
                                    <!--<asp:TextBox ID="sgcountry" CssClass="form-check" runat="server"></asp:TextBox>-->
                                    <asp:DropDownList ID="sgCountryDlist" width="350" CssClass=" col-md-7 form-check btn border-secondary rounded dropdown-toggle" runat="server">
                                        <asp:ListItem Value="Afghanistan">Afghanistan</asp:ListItem>

                                                                        <asp:ListItem Value="Albania">Albania</asp:ListItem>

                                                                        <asp:ListItem Value="Algeria">Algeria</asp:ListItem>

                                                                        <asp:ListItem Value="American Samoa">American Samoa</asp:ListItem>

                                                                        <asp:ListItem Value="Andorra">Andorra</asp:ListItem>

                                                                        <asp:ListItem Value="Angola">Angola</asp:ListItem>

                                                                        <asp:ListItem Value="Anguilla">Anguilla</asp:ListItem>

                                                                        <asp:ListItem Value="Antarctica">Antarctica</asp:ListItem>

                                                                        <asp:ListItem Value="Antigua And Barbuda">Antigua And Barbuda</asp:ListItem>

                                                                        <asp:ListItem Value="Argentina">Argentina</asp:ListItem>

                                                                        <asp:ListItem Value="Armenia">Armenia</asp:ListItem>

                                                                        <asp:ListItem Value="Aruba">Aruba</asp:ListItem>

                                                                        <asp:ListItem Value="Australia">Australia</asp:ListItem>

                                                                        <asp:ListItem Value="Austria">Austria</asp:ListItem>

                                                                        <asp:ListItem Value="Azerbaijan">Azerbaijan</asp:ListItem>

                                                                        <asp:ListItem Value="Bahamas">Bahamas</asp:ListItem>

                                                                        <asp:ListItem Value="Bahrain">Bahrain</asp:ListItem>

                                                                        <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>

                                                                        <asp:ListItem Value="Barbados">Barbados</asp:ListItem>

                                                                        <asp:ListItem Value="Belarus">Belarus</asp:ListItem>

                                                                        <asp:ListItem Value="Belgium">Belgium</asp:ListItem>

                                                                        <asp:ListItem Value="Belize">Belize</asp:ListItem>

                                                                        <asp:ListItem Value="Benin">Benin</asp:ListItem>

                                                                        <asp:ListItem Value="Bermuda">Bermuda</asp:ListItem>

                                                                        <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>

                                                                        <asp:ListItem Value="Bolivia">Bolivia</asp:ListItem>

                                                                        <asp:ListItem Value="Bosnia And Herzegowina">Bosnia And Herzegowina</asp:ListItem>

                                                                        <asp:ListItem Value="Botswana">Botswana</asp:ListItem>

                                                                        <asp:ListItem Value="Bouvet Island">Bouvet Island</asp:ListItem>

                                                                        <asp:ListItem Value="Brazil">Brazil</asp:ListItem>

                                                                        <asp:ListItem Value="British Indian Ocean Territory">British Indian Ocean Territory</asp:ListItem>

                                                                        <asp:ListItem Value="Brunei Darussalam">Brunei Darussalam</asp:ListItem>

                                                                        <asp:ListItem Value="Bulgaria">Bulgaria</asp:ListItem>

                                                                        <asp:ListItem Value="Burkina Faso">Burkina Faso</asp:ListItem>

                                                                        <asp:ListItem Value="Burundi">Burundi</asp:ListItem>

                                                                        <asp:ListItem Value="Cambodia">Cambodia</asp:ListItem>

                                                                        <asp:ListItem Value="Cameroon">Cameroon</asp:ListItem>

                                                                        <asp:ListItem Value="Canada">Canada</asp:ListItem>

                                                                        <asp:ListItem Value="Cape Verde">Cape Verde</asp:ListItem>

                                                                        <asp:ListItem Value="Cayman Islands">Cayman Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Central African Republic">Central African Republic</asp:ListItem>

                                                                        <asp:ListItem Value="Chad">Chad</asp:ListItem>

                                                                        <asp:ListItem Value="Chile">Chile</asp:ListItem>

                                                                        <asp:ListItem Value="China">China</asp:ListItem>

                                                                        <asp:ListItem Value="Christmas Island">Christmas Island</asp:ListItem>

                                                                        <asp:ListItem Value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Colombia">Colombia</asp:ListItem>

                                                                        <asp:ListItem Value="Comoros">Comoros</asp:ListItem>

                                                                        <asp:ListItem Value="Congo">Congo</asp:ListItem>

                                                                        <asp:ListItem Value="Cook Islands">Cook Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem>

                                                                        <asp:ListItem Value="Cote D'Ivoire">Cote D'Ivoire</asp:ListItem>

                                                                        <asp:ListItem Value="Croatia (Local Name: Hrvatska)">Croatia (Local Name: Hrvatska)</asp:ListItem>

                                                                        <asp:ListItem Value="Cuba">Cuba</asp:ListItem>

                                                                        <asp:ListItem Value="Cyprus">Cyprus</asp:ListItem>

                                                                        <asp:ListItem Value="Czech Republic">Czech Republic</asp:ListItem>

                                                                        <asp:ListItem Value="Denmark">Denmark</asp:ListItem>

                                                                        <asp:ListItem Value="Djibouti">Djibouti</asp:ListItem>

                                                                        <asp:ListItem Value="Dominica">Dominica</asp:ListItem>

                                                                        <asp:ListItem Value="Dominican Republic">Dominican Republic</asp:ListItem>

                                                                        <asp:ListItem Value="East Timor">East Timor</asp:ListItem>

                                                                        <asp:ListItem Value="Ecuador">Ecuador</asp:ListItem>

                                                                        <asp:ListItem Value="Egypt">Egypt</asp:ListItem>

                                                                        <asp:ListItem Value="El Salvador">El Salvador</asp:ListItem>

                                                                        <asp:ListItem Value="Equatorial Guinea">Equatorial Guinea</asp:ListItem>

                                                                        <asp:ListItem Value="Eritrea">Eritrea</asp:ListItem>

                                                                        <asp:ListItem Value="Estonia">Estonia</asp:ListItem>

                                                                        <asp:ListItem Value="Ethiopia">Ethiopia</asp:ListItem>

                                                                        <asp:ListItem Value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</asp:ListItem>

                                                                        <asp:ListItem Value="Faroe Islands">Faroe Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Fiji">Fiji</asp:ListItem>

                                                                        <asp:ListItem Value="Finland">Finland</asp:ListItem>

                                                                        <asp:ListItem Value="France">France</asp:ListItem>

                                                                        <asp:ListItem Value="French Guiana">French Guiana</asp:ListItem>

                                                                        <asp:ListItem Value="French Polynesia">French Polynesia</asp:ListItem>

                                                                        <asp:ListItem Value="French Southern Territories">French Southern Territories</asp:ListItem>

                                                                        <asp:ListItem Value="Gabon">Gabon</asp:ListItem>

                                                                        <asp:ListItem Value="Gambia">Gambia</asp:ListItem>

                                                                        <asp:ListItem Value="Georgia">Georgia</asp:ListItem>

                                                                        <asp:ListItem Value="Germany">Germany</asp:ListItem>

                                                                        <asp:ListItem Value="Ghana">Ghana</asp:ListItem>

                                                                        <asp:ListItem Value="Gibraltar">Gibraltar</asp:ListItem>

                                                                        <asp:ListItem Value="Greece">Greece</asp:ListItem>

                                                                        <asp:ListItem Value="Greenland">Greenland</asp:ListItem>

                                                                        <asp:ListItem Value="Grenada">Grenada</asp:ListItem>

                                                                        <asp:ListItem Value="Guadeloupe">Guadeloupe</asp:ListItem>

                                                                        <asp:ListItem Value="Guam">Guam</asp:ListItem>

                                                                        <asp:ListItem Value="Guatemala">Guatemala</asp:ListItem>

                                                                        <asp:ListItem Value="Guinea">Guinea</asp:ListItem>

                                                                        <asp:ListItem Value="Guinea-Bissau">Guinea-Bissau</asp:ListItem>

                                                                        <asp:ListItem Value="Guyana">Guyana</asp:ListItem>

                                                                        <asp:ListItem Value="Haiti">Haiti</asp:ListItem>

                                                                        <asp:ListItem Value="Heard And Mc Donald Islands">Heard And Mc Donald Islands</asp:ListItem>

                                                                        <asp:ListItem Value=">Holy See (Vatican City State)">Holy See (Vatican City State)</asp:ListItem>

                                                                        <asp:ListItem Value="Honduras">Honduras</asp:ListItem>

                                                                        <asp:ListItem Value="Hong Kong">Hong Kong</asp:ListItem>

                                                                        <asp:ListItem Value="Hungary">Hungary</asp:ListItem>

                                                                        <asp:ListItem Value="Icel And">Icel And</asp:ListItem>

                                                                        <asp:ListItem Value="India" Selected="True">India</asp:ListItem>

                                                                        <asp:ListItem Value="Indonesia">Indonesia</asp:ListItem>

                                                                        <asp:ListItem Value="Iran">Iran (Islamic Republic Of)</asp:ListItem>

                                                                        <asp:ListItem Value="Iraq">Iraq</asp:ListItem>

                                                                        <asp:ListItem Value="Ireland">Ireland</asp:ListItem>

                                                                        <asp:ListItem Value="Israel">Israel</asp:ListItem>

                                                                        <asp:ListItem Value="Italy">Italy</asp:ListItem>

                                                                        <asp:ListItem Value="Jamaica">Jamaica</asp:ListItem>

                                                                        <asp:ListItem Value="Japan">Japan</asp:ListItem>

                                                                        <asp:ListItem Value="Jordan">Jordan</asp:ListItem>

                                                                        <asp:ListItem Value="Kazakhstan">Kazakhstan</asp:ListItem>

                                                                        <asp:ListItem Value="Kenya">Kenya</asp:ListItem>

                                                                        <asp:ListItem Value="Kiribati">Kiribati</asp:ListItem>

                                                                        <asp:ListItem Value="North Korea">North Korea, Dem People'S Republic</asp:ListItem>

                                                                        <asp:ListItem Value="South Korea">South Korea, Republic Of</asp:ListItem>

                                                                        <asp:ListItem Value="Kuwait">Kuwait</asp:ListItem>

                                                                        <asp:ListItem Value="Kyrgyzstan">Kyrgyzstan</asp:ListItem>

                                                                        <asp:ListItem Value="Lao">Lao People'S Dem Republic</asp:ListItem>

                                                                        <asp:ListItem Value="Latvia">Latvia</asp:ListItem>

                                                                        <asp:ListItem Value="Lebanon">Lebanon</asp:ListItem>

                                                                        <asp:ListItem Value="Lesotho">Lesotho</asp:ListItem>

                                                                        <asp:ListItem Value="Liberia">Liberia</asp:ListItem>

                                                                        <asp:ListItem Value="Libyan">Libyan Arab Jamahiriya</asp:ListItem>

                                                                        <asp:ListItem Value="Liechtenstein">Liechtenstein</asp:ListItem>

                                                                        <asp:ListItem Value="Lithuania">Lithuania</asp:ListItem>

                                                                        <asp:ListItem Value="Luxembourg">Luxembourg</asp:ListItem>

                                                                        <asp:ListItem Value="Macau">Macau</asp:ListItem>

                                                                        <asp:ListItem Value="Macedonia">Macedonia</asp:ListItem>

                                                                        <asp:ListItem Value="Madagascar">Madagascar</asp:ListItem>

                                                                        <asp:ListItem Value="Malawi">Malawi</asp:ListItem>

                                                                        <asp:ListItem Value="Malaysia">Malaysia</asp:ListItem>

                                                                        <asp:ListItem Value="Maldives">Maldives</asp:ListItem>

                                                                        <asp:ListItem Value="Mali">Mali</asp:ListItem>

                                                                        <asp:ListItem Value="Malta">Malta</asp:ListItem>

                                                                        <asp:ListItem Value="Marshall Islands">Marshall Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Martinique">Martinique</asp:ListItem>

                                                                        <asp:ListItem Value="Mauritania">Mauritania</asp:ListItem>

                                                                        <asp:ListItem Value="Mauritius">Mauritius</asp:ListItem>

                                                                        <asp:ListItem Value="Mayotte">Mayotte</asp:ListItem>

                                                                        <asp:ListItem Value="Mexico">Mexico</asp:ListItem>

                                                                        <asp:ListItem Value="Micronesia">Micronesia, Federated States</asp:ListItem>

                                                                        <asp:ListItem Value="Moldova">Moldova, Republic Of</asp:ListItem>

                                                                        <asp:ListItem Value="Monaco">Monaco</asp:ListItem>

                                                                        <asp:ListItem Value="MN">Mongolia</asp:ListItem>

                                                                        <asp:ListItem Value="Montserrat">Montserrat</asp:ListItem>

                                                                        <asp:ListItem Value="Morocco">Morocco</asp:ListItem>

                                                                        <asp:ListItem Value="Mozambique">Mozambique</asp:ListItem>

                                                                        <asp:ListItem Value="Myanmar">Myanmar</asp:ListItem>

                                                                        <asp:ListItem Value="Namibia">Namibia</asp:ListItem>

                                                                        <asp:ListItem Value="Nauru">Nauru</asp:ListItem>

                                                                        <asp:ListItem Value="Nepal">Nepal</asp:ListItem>

                                                                        <asp:ListItem Value="Netherlands">Netherlands</asp:ListItem>

                                                                        <asp:ListItem Value="Netherlands Ant Illes">Netherlands Ant Illes</asp:ListItem>

                                                                        <asp:ListItem Value="New Caledonia">New Caledonia</asp:ListItem>

                                                                        <asp:ListItem Value="New Zealand" >New Zealand</asp:ListItem>

                                                                        <asp:ListItem Value="Nicaragua">Nicaragua</asp:ListItem>

                                                                        <asp:ListItem Value="Niger">Niger</asp:ListItem>

                                                                        <asp:ListItem Value="Nigeria">Nigeria</asp:ListItem>

                                                                        <asp:ListItem Value="Niue">Niue</asp:ListItem>

                                                                        <asp:ListItem Value="Norfolk Island">Norfolk Island</asp:ListItem>

                                                                        <asp:ListItem Value="Northern Mariana Islands">Northern Mariana Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Norway">Norway</asp:ListItem>

                                                                        <asp:ListItem Value="Oman">Oman</asp:ListItem>

                                                                        <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>

                                                                        <asp:ListItem Value="Palau">Palau</asp:ListItem>

                                                                        <asp:ListItem Value="Panama">Panama</asp:ListItem>

                                                                        <asp:ListItem Value="Papua New Guinea">Papua New Guinea</asp:ListItem>

                                                                        <asp:ListItem Value="Paraguay">Paraguay</asp:ListItem>

                                                                        <asp:ListItem Value="Peru">Peru</asp:ListItem>

                                                                        <asp:ListItem Value="Philippines">Philippines</asp:ListItem>

                                                                        <asp:ListItem Value="Pitcairn">Pitcairn</asp:ListItem>

                                                                        <asp:ListItem Value="Poland">Poland</asp:ListItem>

                                                                        <asp:ListItem Value="Portugal">Portugal</asp:ListItem>

                                                                        <asp:ListItem Value="Puerto Rico">Puerto Rico</asp:ListItem>

                                                                        <asp:ListItem Value="Qatar">Qatar</asp:ListItem>

                                                                        <asp:ListItem Value="Reunion">Reunion</asp:ListItem>

                                                                        <asp:ListItem Value="Romania">Romania</asp:ListItem>

                                                                        <asp:ListItem Value="Russian Federation">Russian Federation</asp:ListItem>

                                                                        <asp:ListItem Value="Rwanda">Rwanda</asp:ListItem>

                                                                        <asp:ListItem Value="Saint Kitts And Nevis">Saint Kitts And Nevis</asp:ListItem>

                                                                        <asp:ListItem Value="Saint Lucia">Saint Lucia</asp:ListItem>

                                                                        <asp:ListItem Value="Saint Vincent">Saint Vincent, The Grenadines</asp:ListItem>

                                                                        <asp:ListItem Value="Samoa">Samoa</asp:ListItem>

                                                                        <asp:ListItem Value="San Marino">San Marino</asp:ListItem>

                                                                        <asp:ListItem Value="Sao Tome And Principe">Sao Tome And Principe</asp:ListItem>

                                                                        <asp:ListItem Value="Saudi Arabia">Saudi Arabia</asp:ListItem>

                                                                        <asp:ListItem Value="Senegal">Senegal</asp:ListItem>

                                                                        <asp:ListItem Value="Seychelles">Seychelles</asp:ListItem>

                                                                        <asp:ListItem Value="Sierra Leone">Sierra Leone</asp:ListItem>

                                                                        <asp:ListItem Value="Singapore">Singapore</asp:ListItem>

                                                                        <asp:ListItem Value="Slovakia">Slovakia (Slovak Republic)</asp:ListItem>

                                                                        <asp:ListItem Value="Slovenia">Slovenia</asp:ListItem>

                                                                        <asp:ListItem Value="Solomon Islands">Solomon Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Somalia">Somalia</asp:ListItem>

                                                                        <asp:ListItem Value="South Africa">South Africa</asp:ListItem>

                                                                        <asp:ListItem Value="South Georgia">South Georgia , S Sandwich Is.</asp:ListItem>

                                                                        <asp:ListItem Value="Spain">Spain</asp:ListItem>

                                                                        <asp:ListItem Value="Sri Lanka">Sri Lanka</asp:ListItem>

                                                                        <asp:ListItem Value="St. Helena">St. Helena</asp:ListItem>

                                                                        <asp:ListItem Value="St. Pierre And Miquelon">St. Pierre And Miquelon</asp:ListItem>

                                                                        <asp:ListItem Value="Sudan">Sudan</asp:ListItem>

                                                                        <asp:ListItem Value="Suriname">Suriname</asp:ListItem>

                                                                        <asp:ListItem Value="Svalbard, Jan Mayen Islands">Svalbard, Jan Mayen Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Swaziland">Swaziland</asp:ListItem>

                                                                        <asp:ListItem Value="Sweden">Sweden</asp:ListItem>

                                                                        <asp:ListItem Value="Switzerland">Switzerland</asp:ListItem>

                                                                        <asp:ListItem Value="Syrian Arab Republic">Syrian Arab Republic</asp:ListItem>

                                                                        <asp:ListItem Value="Taiwan">Taiwan</asp:ListItem>

                                                                        <asp:ListItem Value="Tajikistan">Tajikistan</asp:ListItem>

                                                                        <asp:ListItem Value="Tanzania">Tanzania, United Republic Of</asp:ListItem>

                                                                        <asp:ListItem Value="Thailand">Thailand</asp:ListItem>

                                                                        <asp:ListItem Value="Togo">Togo</asp:ListItem>

                                                                        <asp:ListItem Value="Tokelau">Tokelau</asp:ListItem>

                                                                        <asp:ListItem Value="Tonga">Tonga</asp:ListItem>

                                                                        <asp:ListItem Value="Trinidad And Tobago">Trinidad And Tobago</asp:ListItem>

                                                                        <asp:ListItem Value="Tunisia">Tunisia</asp:ListItem>

                                                                        <asp:ListItem Value="Turkey">Turkey</asp:ListItem>

                                                                        <asp:ListItem Value="Turkmenistan">Turkmenistan</asp:ListItem>

                                                                        <asp:ListItem Value="Turks And Caicos Islands">Turks And Caicos Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Tuvalu">Tuvalu</asp:ListItem>

                                                                        <asp:ListItem Value="Uganda">Uganda</asp:ListItem>

                                                                        <asp:ListItem Value="Ukraine">Ukraine</asp:ListItem>

                                                                        <asp:ListItem Value="United Arab Emirates">United Arab Emirates</asp:ListItem>

                                                                        <asp:ListItem Value="United Kingdom">United Kingdom</asp:ListItem>

                                                                        <asp:ListItem Value="United States">United States</asp:ListItem>

                                                                        <asp:ListItem Value="United States Minor Is.">United States Minor Is.</asp:ListItem>

                                                                        <asp:ListItem Value="Uruguay">Uruguay</asp:ListItem>

                                                                        <asp:ListItem Value="Uzbekistan">Uzbekistan</asp:ListItem>

                                                                        <asp:ListItem Value="Vanuatu">Vanuatu</asp:ListItem>

                                                                        <asp:ListItem Value="Venezuela">Venezuela</asp:ListItem>

                                                                        <asp:ListItem Value="VietNam">VietNam</asp:ListItem>

                                                                        <asp:ListItem Value="British Virgin Islands">British Virgin Islands</asp:ListItem>

                                                                        <asp:ListItem Value="U.S. Virgin Islands">U.S. Virgin Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Wallis And Futuna Islands">Wallis And Futuna Islands</asp:ListItem>

                                                                        <asp:ListItem Value="Western Sahara">Western Sahara</asp:ListItem>

                                                                        <asp:ListItem Value="Yemen">Yemen</asp:ListItem>

                                                                        <asp:ListItem Value="Yugoslavia">Yugoslavia</asp:ListItem>

                                                                        <asp:ListItem Value="Zaire">Zaire</asp:ListItem>

                                                                        <asp:ListItem Value="Zambia">Zambia</asp:ListItem>

                                                                        <asp:ListItem Value="Zimbabwe">Zimbabwe</asp:ListItem>

                                             </asp:DropDownList>
                  
                                
                                </div>
                                <hr />
                                <div class="form-row row">
                                    <asp:Label ID="Label6" CssClass="col-md-4" runat="server" Text="Password:-"></asp:Label>
                                    <asp:TextBox ID="sgpwd" CssClass="col-md-7 form-check" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                                <hr />
                                <div class="form-row row" style="display:grid; place-items:center;  grid-template-columns:1fr 1fr;">
                                    <asp:Button ID="sgButton" CssClass="btn btn-success" Text="Sign Up" runat="server" OnClick="sgButton_Click"/>
                                    <asp:LinkButton ID="lgback"   runat="server" OnClick="lgback_Click"><< Back to Login</asp:LinkButton>
                                </div>
                            </div>
                    </div>
                    </div>
                    <div class="col-3"></div>
                </div>
           </div>
        </div>
        <br />
    </form>
            <footer class="text-center bg-light">
                <div class="container">
                  <p>&copy; Nomadian.io 2020. All Rights Reserved.</p>
                  <ul class="list-inline">
                    <li class="list-inline-item">
                      <a href="#">Privacy</a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#">Terms</a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#">FAQ</a>
                    </li>
                  </ul>
                    <br />
                </div>
            </footer>
</body>
</html>
