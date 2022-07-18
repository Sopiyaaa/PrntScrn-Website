<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WCU.aspx.cs" Inherits="idpicture_page.WCU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Why Choose Us?</title>
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico" />
    <link href="external%20files/tos.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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

        <section style="padding-left: 50px; padding-right: 50px;">
            <div class="box">
                <div class="clearfix">
                    <img src="Images/hand.png" style="height: 180px;"/>
                    <h4>Affordability</h4>
                    <p>What is the reason for our affordable prices? We believe in new ideas. We are constantly investing in new machinery and technologies, allowing us to print in big quantities while maintaining competitive pricing.</p>
                </div>
                <br /> <br />
            </div>
            <div class="box">
                <div class="clearfix">
                    <img src="Images/quality.png" style="height: 180px;"/>
                    <h4>Quality</h4>
                    <p>We guarantee an extremely high-quality service: high-definition printing, the best finishes when cutting and assembling products, and the very best materials. </p>
                </div>
                <br/> <br />
            </div>
            <div class="box">
                <div class="clearfix">
                    <img src="Images/fast.png" style="height: 180px;"/>
                    <h4>Speed</h4>
                    <p>We print in 24 hours and ship your orders with the most reliable couriers, and can even offer 24-hour delivery. You can choose the exact delivery date when ordering. </p>
                </div>
            </div>
        </section>

        <footer>
            <div class="foot">
                <div class="pic">
                    <a href="ILS.aspx" class="lnk">
                        <img class="print" src="Images/prntscrn-logo-black.png"/>
                    </a>
                </div>

                <div class="footer">
                    <div class="contain">
                        <div class="col">
                            <h2>Company</h2>
                            <ul>
                                <!-- <li><a href="#">The company</a></li>-->
                                <li><a href="#">Why choose us</a></li>
                            </ul>
                        </div>
                        <div class="col">
                            <h2>Customer Care</h2>
                            <ul>
                                <li><a href="privacy.aspx">Privacy</a></li>
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
