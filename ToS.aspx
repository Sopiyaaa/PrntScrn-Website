<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToS.aspx.cs" Inherits="idpicture_page.ToS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Terms of Use</title>
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico" />
    <link href="external%20files/tos.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <a href="ILS.aspx">
                <img class="logo" src="images/prntscrn-logo.png" />
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
            <h1>Terms of Use</h1>

            <div class="container">
                <h2>PrntScrn</h2>
                <p>The following terms apply to all transactions with Prntscrn.	</p>
                <p>The customer placing an order imply your acceptance to our terms of use. Please read them carefully. </p>
            </div>

            <div class="row">
                <div class="course">
                    <h3>1) Warranty and Liability</h3>
                    <p>Although we guarantee that the items will match to the description provided by us at the time of delivery, all of the products we offer are of a technical nature, and it is not practicable to publish full specifications for all of them. The primary objective of any photos, descriptive material, specification, and advertising is to provide an approximate depiction of the items.</p>
                </div>

                <div class="course">
                    <h3>2) Return or Refund</h3>
                    <p>We would only take credit for the loss if the damage had been taken by us and so the need for us to compensate you. Any refund requested after the time you had taken the order would be consider void and we shall not be responsible to make amends to your requests. We have the right to resolve any complaint within our own discretion and we will not be liable for any loss if we had knowledge that such damages might arise or for any indirect or incidental damages. To ask for customer’s unboxing videos and pictures to verify the item and if proven, the company would gladly service you of refund. Reimbursement for products that is already printed or in the process of being printed would be impossible. </p>
                </div>

                <div class="course">
                    <h3>3) Delivery</h3>
                    <p>Full efforts will be given to make sure the delivery should make it on the stated delivery time. However, late deliveries might happen depending on the place and address you would give to us. Farther address would take more time and nearest would be as fast as it can. Although we cannot guarantee that we could give an exact and accurate time of delivery as we may encounter to some minor or major issue that goes beyond our control, with regards to the delivery vehicle we shall use. Any unclaimed order would permit us to take legal actions towards the customer. If an order was suddenly added after the confirmation of order, we will arrange another delivery but we will charge you for the re-delivery. </p>
                </div>

                <div class="course">
                    <h3>4) Payment Method</h3>
                    <p>We will use Cash-On-Deliver, with the terms of being confirmed first by any means possible. Bank Transfer by means of BDO. Online Payment using GCash. Lastly, over the counter payment. For bulk orders, we would require a 50% down payment for the initial order cost to avoid scams.</p>
                </div>
            </div>
        </section>

        <footer id="footer">
            <div class="foot">
                <div class="pic">
                    <a href="ILS.aspx" class="lnk">
                        <img class="print" src="images/prntscrn-logo-black.png" />
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
                                <li><a href="#">Terms of use</a></li>
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
