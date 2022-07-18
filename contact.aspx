<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="idpicture_page.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="external%20files/Contact.css" rel="stylesheet" />
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

        <section class="ser">
            <div class="row">
                <div class="course-col">
                    <img src="Images/location.png" />
                    <h3>Address</h3>
                    <p>Branch 1: 10411 Balele, Tanauan City, Batangas</p>
                    <p>Branch 2: SummerBreeze Ph2, Sta. Maria, Sto. Tomas City, Batangas</p>
                </div>

                <div class="course-col">
                    <img src="Images/phone-call.png" />
                    <h3>Phone</h3>
                    <p>0905-317-4755</p>
                </div>

                <div class="course-col">
                    <img src="Images/email.png" />
                    <h3>Email</h3>
                    <p><a href="mailto:info@weifieldcontracting.com">prntscrn@gmail.com</a</p>
                </div>
            </div>
        </section>

        <footer id="footer">
            <div class="foot">
                <div class="pic">
                    <a href="ILS.aspx" class="lnk">
                        <img class="print" src="Images/prntscrn-logo-black.png" />
                    </a>
                </div>

                <div class="footer">
                    <div class="contain">
                        <div class="col">
                            <h1>Company</h1>
                            <ul>
                                <!--  <li><a href="#">The company</a></li>-->
                                <li><a href="WCU.aspx">Why choose us</a></li>
                            </ul>
                        </div>
                        <div class="col">
                            <h1>Customer Care</h1>
                            <ul>
                                <li><a href="privacy.aspx">Privacy</a></li>
                                <li><a href="ToS.aspx">Terms of use</a></li>
                                <li><a href="Legal.aspx">Legal Information</a></li>
                            </ul>
                        </div>
                        <div class="col">
                            <h1>Support</h1>
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
