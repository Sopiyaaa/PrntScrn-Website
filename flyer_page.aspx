<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flyer_page.aspx.cs" Inherits="idpicture_page.Webpages.flyer_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flyers/Brochures</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico"/>
    <link href="external%20files/StyleSheet_Categories.css" rel="stylesheet" />
    <link href="external%20files/fonts.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="external%20files/TopNav_id-page.js"></script>
</head>
<body>
    <!--Section 1 starts-->
    <section class="sec-1">
        <!--TopNav start-->
        <div class="Topnav" id="Navi">
            <div>
                <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
                <a href="content_page.aspx#cats">Categories</a>
                <a href="content_page.aspx#footer">About</a>
                <a href="content_page.aspx">Home</a>
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                    <i class="fa fa-bars"></i></a>

            </div>

        </div>
        <!--TopNav end-->

        <!--Logo and Description div-->
        <div class="logo-des">
            <div class="logo">
                <img src="../../Images/flyers.png" />
            </div>
            <div class="description">
                <h1>Flyers/Brochures</h1>
                <p>Your one-stop destination. <br /> To make the best impression.</p>
            </div>
        </div>
        <!--End of Logo and Description Div-->

    </section>
    <!--Section 1 ends-->

    <!--start of Section 2-->
    <section class="sec-2">
        <form runat="server">
            <div class="fileupload">

                <h1>Upload Document</h1>
                <p>Convert your file into .pdf format <br />
                    before submitting.
                </p>

                <asp:FileUpload ID="FileUpload4" runat="server" class="upload-btn"/>
                <br />
                <asp:Label ID="upload_status" runat="server"></asp:Label>

                <br /> <br />

                <h1>Guide:</h1>
                <a href="../../Images/flyers%20guide.pdf">Size Guide</a>

                <br />

               
            </div>

            <!--customization-->
            <div class="customization">
                <h1>Customization</h1>
                <p>
                    Customize your flyer freely, <br />
                    choose your preference.
                </p>

                <!--<fieldset>
                    <legend>Picture size</legend>
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="ddl">
                        <asp:ListItem>1 x 1</asp:ListItem>
                        <asp:ListItem>2 x 2</asp:ListItem>
                        <asp:ListItem>Passport size (4.5 x 3.5 cm)</asp:ListItem>
                        <asp:ListItem>Wallet size (2.5 x 3.2 inch)</asp:ListItem>
                        <asp:ListItem>Cute size (2 x 3 inch)</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>-->

                <fieldset class="DropDownList1">
                    <legend>Paper Type</legend>
                    <asp:DropDownList ID="DropDownList14" runat="server" CssClass="ddl">
                        <asp:ListItem>Silk Paper</asp:ListItem>
                        <asp:ListItem>Magazine Paper</asp:ListItem>
                        <asp:ListItem>C2s</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Color</legend>
                    <asp:DropDownList ID="DropDownList15" runat="server" CssClass="ddl">
                        <asp:ListItem>Color</asp:ListItem>
                        <asp:ListItem>Black and White</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Folds</legend>
                    <asp:DropDownList ID="DropDownList16" runat="server" CssClass="ddl">
                        <asp:ListItem>No Fold</asp:ListItem>
                        <asp:ListItem>One Fold</asp:ListItem>
                        <asp:ListItem>Two Folds</asp:ListItem>
                        <asp:ListItem>Three Folds</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Printed Side</legend>
                    <asp:DropDownList ID="DropDownList17" runat="server" CssClass="ddl">
                        <asp:ListItem>Print one side only</asp:ListItem>
                        <asp:ListItem>Print both sides</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Fold Type</legend>
                    <asp:DropDownList ID="DropDownList18" runat="server" CssClass="ddl">
                        <asp:ListItem>Roll Type</asp:ListItem>
                        <asp:ListItem>Zigzag Type</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Paper Size</legend>
                    <asp:DropDownList ID="DropDownList19" runat="server" CssClass="ddl">
                        <asp:ListItem>Business Card</asp:ListItem>
                        <asp:ListItem>DL</asp:ListItem>
                        <asp:ListItem>A5</asp:ListItem>
                        <asp:ListItem>A4</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Quantity</legend>
                    <asp:DropDownList ID="quantity1" runat="server" CssClass="ddl">
                        <asp:ListItem>12 pcs</asp:ListItem>
                        <asp:ListItem>24 pcs</asp:ListItem>
                        <asp:ListItem>50 pcs</asp:ListItem>
                        <asp:ListItem>100 pcs</asp:ListItem>
                        <asp:ListItem>500 pcs</asp:ListItem>
                        <asp:ListItem>1000 pcs</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <br />

                <h1>Add special suggestions</h1>
                <p>
                    Tell us your suggestion or if you want to <br />
                    customize your order more. <br />
                    (Eg. cut the paper into halves.)
                </p>
                <asp:TextBox id="TextBox2" class="textbox" TextMode="MultiLine" runat="server"></asp:TextBox>

                <fieldset class="DropDownList2">
                    <legend>Mode of payment</legend>
                    <asp:DropDownList ID="paymentlist2" runat="server" CssClass="ddl">
                        <asp:ListItem>Pick up</asp:ListItem>
                        <asp:ListItem>Cash on Delivery</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>
                

                <br /> <br />
                <div class="buttons">
                    <asp:Button ID="btnSubmit3" Text="Submit" runat="server" class="submit-btn" Onclick="btn_submit_Click"/>
                    <input id="Reset1" type="reset" value="reset" class="reset-btn" />
                </div>
            </div>
        </form>
    </section>
    <!--end of Section 2-->

    <!--Start of footer-->
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
</body>
</html>
