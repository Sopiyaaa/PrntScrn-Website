<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="privacy.aspx.cs" Inherits="idpicture_page.privacy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Privacy</title>
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico" />
    <link href="external%20files/Privacy.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <a href="ILS.aspx">
                <img class="logo" src="Images/prntscrn-logo.png" />
            </a>

            <nav>
                <div class="nav-links" id="navLinks">
                    <i class="fa fa-times" onclick="hide()"></i>
                    <ul>
                        <li><a href="ILS.aspx">Home</a></li>
                        <li><a href="#footer">About</a></li>
                    </ul>
                </div>
                <i class="fa fa-bars" onclick="show()"></i>
            </nav>

            <script>
                const navLinks = document.getElementById("navLinks");

                function show() {
                    navLinks.style.right = "0";
                }
                function hide() {
                    navLinks.style.right = "-200px";
                }
            </script>
        </header>

        <section>
            <h1>Privacy Policy</h1>

            <div class="container">
                <h3>PrntScrn</h3>
                <p>PrntScrn recognises the importance of implementing a privacy policy that protects your interests whilst on our site.  PrntScrn will treat your personal information with the highest standards of safety, security and confidentiality.</p>
                <p>Please take time to read the Privacy Policy below before using our website. By using our website you have indicated that you have read, understood and agreed to the privacy policy outlined below.</p>
            </div>

            <div class="row">
                <div class="course">
                    <h3>What information do we collect?</h3>
                    <p>We collect information from you when you register on the site, place an order, receive a promotional code or communicate with us by e-mail.</p>
                    <ul>
                        <li>When ordering or registering we may ask you for your name, email, mailing address, phone number or other information. You may also visit our site anonymously.</li>
                    </ul>
                </div>

                <div class="course">
                    <h3>Use of your information</h3>
                    <p>We use the information that we collect from to provide services to you. In addition to this we may use the information for one or more of the following purposes;</p>
                    <ul>
                        <li>To provide you with information that you request from us relating to our products or services.</li>
                        <li>To provide you with information relating to other products that may be of interest to you. Such additional information will only be provided where you have consented to receive such information.</li>
                    </ul>
                </div>

                <div class="course">
                    <h3>Do we disclose the information we collect to outside parties?</h3>
                    <p>We do not sell, trade, or otherwise transfer your personally identifiable information to third parties unless we provide you with early notice. PrntScrn is not included in the phrase "outside parties." It also excludes website hosting partners and other third parties who help us operate our website, perform our business, or serve you as long as those parties agree to keep this information private. We retain the right to release personally identifiable information when we believe it is necessary to comply with the law, enforce our site policies, or defend our or others' rights, property, or safety.</p>
                </div>
            </div>
        </section>

        <footer>
            <div class="foot">
                <div class="pic">
                    <a href="ILS.aspx" class="lnk">
                        <img class="print" src="Images/prntscrn-logo-black.png" />
                    </a>
                </div>

                <div class="footer">
                    <div class="contain">
                        <div class="col">
                            <h2>Company</h2>
                            <ul>
                                <!-- <li><a href="#">The company</a></li>-->
                                <li><a href="WCU.aspx">Why choose us</a></li>
                            </ul>
                        </div>
                        <div class="col">
                            <h2>Customer Care</h2>
                            <ul>
                                <li><a href="#">Privacy</a></li>
                                <li><a href="ToS.aspx">Terms of use</a></li>
                                <li><a href="Legal.aspx">Legal Information</a></li>
                            </ul>
                        </div>
                        <div class="col">
                            <h2>Support</h2>
                            <ul>
                                <li><a href="contact.aspx">Contact us</a></li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
