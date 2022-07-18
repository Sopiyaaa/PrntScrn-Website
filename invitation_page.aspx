<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invitation_page.aspx.cs" Inherits="idpicture_page.Webpages.invitation_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invitations</title>
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
                <img src="../../Images/invitation.png" />
            </div>
            <div class="description">
                <h1>Invitations</h1>
                <p>Make your invitation more inviting by selecting the available choices below.</p>
            </div>
        </div>
        <!--End of Logo and Description Div-->

    </section>
    <!--Section 1 ends-->

    <!--start of Section 2-->
    <section class="sec-2">
        <form runat="server">
            <div class="fileupload">

                <h1>Upload File</h1>
                <p>Convert your file into .pdf format <br />
                    before submitting.
                </p>

                <asp:FileUpload ID="FileUpload5" runat="server" class="upload-btn" />

                <br /> <br />

                <h1>Size guides:</h1>
                <p>
                    Monarch (8" x 9") <br />
                    Big Square (8" x 8") <br />
                    Medium Square (7" x 7") <br />
                    Small Square (5.875" x 5.875") <br />
                    Emperor (6.81" x 9") <br />
                    Royalty (6.1875" x 8.9375") <br />
                    Imperial (6" x 8") <br />
                    Embassy (5.5" 7.5") <br />
                    BCC (4.5" x 6.25") <br />
                    SCC (3.625" x 5.125") <br />
                </p>

                <br />

               
            </div>

            <!--customization-->
            <div class="customization">
                <h1>Customization</h1>
                <p>
                    Customize your invitation freely, <br />
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
                    <legend>Theme</legend>
                    <asp:DropDownList ID="DropDownList20" runat="server" CssClass="ddl">
                        <asp:ListItem>Wedding</asp:ListItem>
                        <asp:ListItem>Kid's Birthday</asp:ListItem>
                        <asp:ListItem>Debut</asp:ListItem>
                        <asp:ListItem>Save the Date</asp:ListItem>
                        <asp:ListItem>Baptism</asp:ListItem>
                        <asp:ListItem>Adult's Birthday</asp:ListItem>
                        <asp:ListItem>Wedding Anniversary</asp:ListItem>
                        <asp:ListItem>Christmas Cards</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Paper type</legend>
                    <asp:DropDownList ID="DropDownList21" runat="server" CssClass="ddl">
                        <asp:ListItem>Scented Paper</asp:ListItem>
                        <asp:ListItem>Vellum Paper</asp:ListItem>
                        <asp:ListItem>Card Stock Paper</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList3">
                    <legend>Color</legend>
                    <asp:DropDownList ID="DropDownList22" runat="server" CssClass="ddl">
                        <asp:ListItem>White</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                        <asp:ListItem>Transparent</asp:ListItem>
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Orange</asp:ListItem>
                        <asp:ListItem>Yellow</asp:ListItem>
                        <asp:ListItem>Green</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>Purple</asp:ListItem>
                        <asp:ListItem>Mocha</asp:ListItem>
                        <asp:ListItem>Matcha</asp:ListItem>
                        <asp:ListItem>Gray</asp:ListItem>
                        <asp:ListItem>Brown</asp:ListItem>
                        <asp:ListItem>Mint Green</asp:ListItem>
                        <asp:ListItem>Khaki</asp:ListItem>
                        <asp:ListItem>Navy Blue</asp:ListItem>
                        <asp:ListItem>Maroon</asp:ListItem>
                        <asp:ListItem>Blush Pink</asp:ListItem>
                        <asp:ListItem>Gold</asp:ListItem>
                        <asp:ListItem>Silver</asp:ListItem>
                        <asp:ListItem>Copper</asp:ListItem>
                        <asp:ListItem>Mauve</asp:ListItem>
                        <asp:ListItem>Cream</asp:ListItem>
                        <asp:ListItem>Lilac</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList4">
                    <legend>Size</legend>
                    <asp:DropDownList ID="DropDownList23" runat="server" CssClass="ddl">
                        <asp:ListItem>Monarch</asp:ListItem>
                        <asp:ListItem>Big Square</asp:ListItem>
                        <asp:ListItem>Medium Square</asp:ListItem>
                        <asp:ListItem>Small Square</asp:ListItem>
                        <asp:ListItem>Emperor</asp:ListItem>
                        <asp:ListItem>Royalty</asp:ListItem>
                        <asp:ListItem>Imperial</asp:ListItem>
                        <asp:ListItem>Embassy</asp:ListItem>
                        <asp:ListItem>BCC</asp:ListItem>
                        <asp:ListItem>SCC</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList5">
                    <legend>Envelope</legend>
                    <asp:DropDownList ID="DropDownList24" runat="server" CssClass="ddl">
                        <asp:ListItem>With Envelope</asp:ListItem>
                        <asp:ListItem>No Envelope</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Quantity</legend>
                    <asp:DropDownList ID="quantity2" runat="server" CssClass="ddl">
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
                    (Eg. make the envelope floral.)
                </p>
                <asp:TextBox id="TextBox3" runat="server" TextMode="MultiLine" class="textbox"></asp:TextBox>

                <fieldset class="DropDownList2">
                    <legend>Mode of payment</legend>
                    <asp:DropDownList ID="paymentlist3" runat="server" CssClass="ddl">
                        <asp:ListItem>Pick up</asp:ListItem>
                        <asp:ListItem>Cash on Delivery</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <br /> <br />
                <div class="buttons">
                    <asp:Button ID="btnSubmit4" Text="Submit" runat="server" class="submit-btn" Onclick="btn_submit_Click"/>
                    <input id="Reset1" type="reset" value="reset" class="reset-btn" />
                </div>
            </div>
        </form>
    </section>
    <!--end of Section 2-->
</body>
</html>
