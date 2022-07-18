<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sticker_page.aspx.cs" Inherits="idpicture_page.Webpages.sticker_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stickers</title>
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
                <img src="../../Images/sticker.png" />
            </div>
            <div class="description">
                <h1>Stickers</h1>
                <p>Something beyond printing. Our ink <br /> for all what you think.</p>
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

                <asp:FileUpload ID="FileUpload6" runat="server" class="upload-btn" />

                <br /> <br />

                <h1>Size guide:</h1>
                <p>Letter (8.5" x 11")
                    <br />
                    A4 (8.3" x 11.7")
                    <br />
                    Legal (8.5" x 14")
                </p>

                <br />

               
            </div>

            <!--customization-->
            <div class="customization">
                <h1>Customization</h1>
                <p>
                    Customize your sticker freely, <br />
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
                    <asp:DropDownList ID="DropDownList25" runat="server" CssClass="ddl">
                        <asp:ListItem>Glossy sticker paper</asp:ListItem>
                        <asp:ListItem>Matte sticker paper</asp:ListItem>
                        <asp:ListItem>Transparent sticker paper</asp:ListItem>
                        <asp:ListItem>Pearl sticker paper</asp:ListItem>
                        <asp:ListItem>Silver sticker paper</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Color</legend>
                    <asp:DropDownList ID="DropDownList26" runat="server" CssClass="ddl">
                        <asp:ListItem>Colored</asp:ListItem>
                        <asp:ListItem>Black and White</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList3">
                    <legend>Paper Size</legend>
                    <asp:DropDownList ID="DropDownList27" runat="server" CssClass="ddl">
                        <asp:ListItem>Letter</asp:ListItem>
                        <asp:ListItem>A4</asp:ListItem>
                        <asp:ListItem>Legal</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Quantity</legend>
                    <asp:DropDownList ID="quantity6" runat="server" CssClass="ddl">
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
                    customize your order more. (Eg. Do not cut out the stickers.)
                </p>
                <asp:TextBox ID="TextBox6" runat="server" class="textbox" TextMode="MultiLine"></asp:TextBox>

                <fieldset class="DropDownList2">
                    <legend>Mode of payment</legend>
                    <asp:DropDownList ID="paymentlist6" runat="server" CssClass="ddl">
                        <asp:ListItem>Pick up</asp:ListItem>
                        <asp:ListItem>Cash on Delivery</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <br /> <br />
                <div class="buttons">
                    <asp:Button ID="btnSubmit5" Text="Submit" runat="server" class="submit-btn" Onclick="btn_submit_Click"/>
                    <input id="Reset1" type="reset" value="reset" class="reset-btn" />
                </div>
            </div>
        </form>
    </section>
    <!--end of Section 2-->
</body>
</html>
