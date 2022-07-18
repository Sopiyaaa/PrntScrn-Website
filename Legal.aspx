<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Legal.aspx.cs" Inherits="idpicture_page.Legal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Legal Information</title>
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico" />
    <link href="external%20files/legal.css" rel="stylesheet" />
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

        <section>
            <h1>Legal Information</h1>
            <p>This website and the information are incorporated and protected by Philippine’s copyright law on intellectual property and by international conventions. Our site, content or element, can’t be reproduced, or republished, or modified, or retransmitted without prior written authorization from the right holders. This does not concern family or private use. The content may not be altered in any way, nor may they be copied, displayed in public, distributed, or used in any other manner for a public or commercial purpose. It is forbidden to utilize the Materials on any other website or networked computer system.</p>
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
                                <!-- <li><a href="#">The company</a></li>-->
                                <li><a href="WCU.aspx">Why choose us</a></li>
                            </ul>
                        </div>
                        <div class="col">
                            <h1>Customer Care</h1>
                            <ul>
                                <li><a href="privacy.aspx">Privacy</a></li>
                                <li><a href="ToS.aspx">Terms of use</a></li>
                                <li><a href="#">Legal Information</a></li>
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
