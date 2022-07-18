<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="postcard_page.aspx.cs" Inherits="idpicture_page.Webpages.postcard_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Postcard</title>
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
                <img src="../../Images/Postcard.png" />
            </div>
            <div class="description">
                <h1>Postcard</h1>
                <p>Pick your ideas of paper size, paper type,<br />
                    and corners. Add your ideas in this custom.
</p>
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

                <asp:FileUpload ID="FileUpload3" runat="server" class="upload-btn" />

                <br /> <br />

                <h1>Available Paper Type:</h1>
                <p>Card Stock
                </p>

                <br />

               
            </div>

            <!--customization-->
            <div class="customization">
                <h1>Customization</h1>
                <p>
                    Customize your postcard freely, <br />
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
                    <legend>Paper size</legend>
                    <asp:DropDownList ID="DropDownList11" runat="server" CssClass="ddl">
                        <asp:ListItem>Extra Small (4" x 2.25")</asp:ListItem>
                        <asp:ListItem>Small (4.25" x 6")</asp:ListItem>
                        <asp:ListItem>Medium (5.5" x 8.5")</asp:ListItem>
                        <asp:ListItem>Standard (6" x 9")</asp:ListItem>
                        <asp:ListItem>Jumbo (6" x 11")</asp:ListItem>
                        <asp:ListItem>Extra Large (9" x 12")</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Paper type</legend>
                    <asp:DropDownList ID="DropDownList12" runat="server" CssClass="ddl">
                        <asp:ListItem>White glossy coated cardstock paper</asp:ListItem>
                        <asp:ListItem>White matte coated cardstock paper</asp:ListItem>
                        <asp:ListItem>White uncoated cardstock paper</asp:ListItem>
                        <asp:ListItem>Black glossy coated cardstock paper</asp:ListItem>
                        <asp:ListItem>Black uncoated cardstock paper</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList3">
                    <legend>Rounded Corners</legend>
                    <asp:DropDownList ID="DropDownList13" runat="server" CssClass="ddl">
                        <asp:ListItem>Not rounded</asp:ListItem>
                        <asp:ListItem>4 mm</asp:ListItem>
                        <asp:ListItem>7 mm</asp:ListItem>
                        <asp:ListItem>10 mm</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Quantity</legend>
                    <asp:DropDownList ID="quantity3" runat="server" CssClass="ddl">
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
                    customize your order more. (Eg. Make 5 first postcards black and white.)
                </p>
                <asp:TextBox ID="TextBox4" runat="server" class="textbox" TextMode="MultiLine"></asp:TextBox>

                <fieldset class="DropDownList2">
                    <legend>Mode of payment</legend>
                    <asp:DropDownList ID="paymentlist4" runat="server" CssClass="ddl">
                        <asp:ListItem>Pick up</asp:ListItem>
                        <asp:ListItem>Cash on Delivery</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <br /> <br />
                <div class="buttons">
                    <asp:Button ID="btnSubmit2" Text="Submit" runat="server" class="submit-btn" onclick="btn_submit_Click"/>
                    <input id="Reset1" type="reset" value="reset" class="reset-btn" />
                </div>
            </div>
        </form>
    </section>
    <!--end of Section 2-->
</body>
</html>
