<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="idpicture_page.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PrntScrn</title>
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="external%20files/ils.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="external%20files/fonts.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!--Header starts-->
        <header>


            <a href="#home" class="lnk">
                <img class="prntscrn" src="Images/prntscrn-logo.png" />
            </a>

            <nav>
                <div class="nav-links" id="navLinks">
                    <i class="fa fa-times" onclick="hide()"></i>
                    <ul>
                        <li id="home_link"><a href="#home">Home</a></li>
                        <li id="about_link"><a href="#footer">About</a> </li>
                        <li id="register_link"><a href="Registration.aspx">Register</a> </li>
                        <li id="login_link"><a href="LogIn_page.aspx">Log In</a> </li>
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
        <!--Header ends-->

        <!--Home Starts-->
        <section class="home" id="home">
            <div class="content">
                <!--<p>Hassle-free</p>
                <p class="pa">printing choice</p>-->
                <div class="des">
                <h1>Hassle free <br /> printing choice</h1>
                <p class="p1">Regardless of the size, shape, number, timeline, or budget, we can produce high-quality print goods for practically any project that comes through our doors.</p>
                </div>
                <div>
                    <img class="printer" src="Images/printer and bg.png" />
                </div>
            </div>
        </section>
        <!--Home Ends-->

        <!--Services Starts-->
        <!--<section class="services" id="about">
            <h1 class="heading">Our Services</h1>

            <div class="container">
                <div class="box">
                    <a href="id_page.aspx">
                        <img src="Images/id-logo.png" />
                    </a>
                    <p class="p3"><a href="id_page.aspx">ID Picture</a></p>
                </div>

                <div class="box">
                    <a href="print_page.aspx">
                        <img src="Images/print-logo.png" />
                    </a>
                    <p class="p2"><a href="print_page.aspx">Print</a></p>
                </div>

                <div class="box">
                    <a href="postcard_page.aspx">
                        <img src="Images/postcard-logo.png" />
                    </a>
                    <p><a href="postcard_page.aspx">Postcards</a></p>
                </div>
            </div>

            <div class="container">
                <div class="box">
                    <a href="flyer_page.aspx">
                        <img src="Images/flyers-logo.png" />
                    </a>
                    <p><a href="flyer_page.aspx">Flyers</a></p>
                </div>

                <div class="box">
                    <a href="invitation_page.aspx">
                        <img src="Images/invitation-logo.png" />
                    </a>
                    <p><a href="invitation_page.aspx">Invitations</a></p>
                </div>

                <div class="box">
                    <a href="sticker_page.aspx">
                        <img src="Images/sticker-logo.png" />
                    </a>
                    <p><a href="sticker_page.aspx">Sticker</a></p>
                </div>
            </div>
        </section>-->
        <!--Services Ends-->

        <section class="ser">
            <div class="row">
                <div class="course-col">
                    <img src="Images/delivery.png" />
                    <h3>Delivery</h3>
                    <p>Our service include delivery across the Tanauan and Sto. Tomas for most items and you can also pick up your order to our physical store if you prefer as long as the transaction detail requirements is met.</p>
                </div>

                <div class="course-col">
                    <img src="Images/pickup.png" />
                    <h3>Pick-up</h3>
                    <p>There is a choice of pick-up dates, where the later pick-up date will come with the lowest cost.</p>
                </div>

                <div class="course-col">
                    <img src="Images/speed.png" />
                    <h3>Estimated Speedy</h3>
                    <p>Large proportions of our products can be delivered in as little as 24 hours.</p>
                </div>
            </div>
        </section>

        <section class="collab">
            <div class="content1">
                <div>
                    <img class="group7" src="Images/download.png" />
                </div>
                <h3>We are also open for collaborations!</h3>
                <p>Have some wonderful ideas such as artwork designs and product proposal? What are you waiting for, contact us <a href="contact.aspx">here</a></p>
            </div>
        </section>

        <footer id="footer">
            <div class="foot">
                <div class="pic">
                    <a href="#home" class="lnk">
                        <img class="print" src="Images/prntscrn-logo-black.png" />
                    </a>
                </div>

                <div class="footer">
                    <div class="contain">
                        <div class="col">
                            <h1>Company</h1>
                            <ul>
                                <!--<li><a href="#">The company</a></li>-->
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
