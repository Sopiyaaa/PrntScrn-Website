<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="id_page.aspx.cs" Inherits="idpicture_page.Webpages.id_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ID Picture</title>
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
                <a><asp:Label ID="Label1" runat="server" Visible="false"></asp:Label></a>
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
                <img src="../../Images/idpic.png" />
            </div>
            <div class="description">
                <h1>ID Picture</h1>
                <p>Give it your best smile taken on your studio, <br />
                    digital camera or smartphone, and choose a<br />
                    photo that is your favorite.</p>
            </div>
        </div>
        <!--End of Logo and Description Div-->

    </section>
    <!--Section 1 ends-->

    <!--start of Section 2-->
    <section class="sec-2">
        <form runat="server">
            <div class="fileupload">

                <h1>Upload image</h1>

                <asp:FileUpload ID="FileUpload2" runat="server" class="upload-btn"/>
                <br />
                <asp:Label ID="upload_status" runat="server"></asp:Label>

                <br /> <br />

                <h1>Available Sizes:</h1>
                <p>1x1
                    <br />
                    2x2
                    <br />
                    Passport size (4.5 x 3.5 cm)
                    <br />
                    Wallet size (2.5 x 3.2 inch)
                    <br />
                    Cute size (2 x 3 inch)
                </p>
                <br />

               
            </div>

            <!--customization-->
            <div class="customization">
                <h1>Customization</h1>
                <p>
                    Customize your ID Picture freely, <br />
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
                    <legend>Package</legend>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddl">
                        <asp:ListItem>Package 1: 4 pcs 2x2</asp:ListItem>
                        <asp:ListItem>Package 2: 8 pcs 1x1</asp:ListItem>
                        <asp:ListItem>Package 3: 3 pcs 2x2 and 4 pcs 1x1</asp:ListItem>
                        <asp:ListItem>Package 4: 2 pcs 2x2 and 8 pcs 1x1</asp:ListItem>
                        <asp:ListItem>Package 5: 4 pcs 2x2 and 8 pcs 1x1</asp:ListItem>
                        <asp:ListItem>Package 6: 6 pcs Passport size</asp:ListItem>
                        <asp:ListItem>Package 7: 2 pcs Passport size, 4 pcs 2x2 and 8 pcs 1x1</asp:ListItem>
                        <asp:ListItem>Package 8: 4 pcs wallet size</asp:ListItem>
                        <asp:ListItem>Package 8: 4 pcs cute size</asp:ListItem>
                        <asp:ListItem>Package 8: 2 pcs wallet size and 2 pcs cute size</asp:ListItem>
                        <asp:ListItem>Package 8: 4 pcs wallet size and 4 pcs cute size</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList2">
                    <legend>Paper type</legend>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="ddl">
                        <asp:ListItem>Glossy Photo Paper</asp:ListItem>
                        <asp:ListItem>Matte Photo Paper</asp:ListItem>
                        <asp:ListItem>Satin Photo Paper</asp:ListItem>
                        <asp:ListItem>Rough Satin Photo Paper</asp:ListItem>
                        <asp:ListItem>Pearl Finish Photo Paper</asp:ListItem>
                        <asp:ListItem>Linen Woven Photo Paper</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList3">
                    <legend>Background Color</legend>
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="ddl">
                        <asp:ListItem>White</asp:ListItem>
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>Do not change</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <fieldset class="DropDownList4">
                    <legend>Attire</legend>
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="ddl">
                        <asp:ListItem>Male formal attire</asp:ListItem>
                        <asp:ListItem>Female formal Attire</asp:ListItem>
                        <asp:ListItem>Do not change</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <br />

                <h1>Add special suggestions</h1>
                <p>
                    Tell us your suggestion or if you want to <br />
                    customize your order more. (Eg. Remove pimples.)
                </p>
                <!--<asp:textbox id="TextArea1" cols="20" rows="2" class="textbox"></asp:textbox>-->
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" TextMode="MultiLine"></asp:TextBox>

                <fieldset class="DropDownList2">
                    <legend>Mode of payment</legend>
                    <asp:DropDownList ID="paymentlist" runat="server" CssClass="ddl">
                        <asp:ListItem>Pick up</asp:ListItem>
                        <asp:ListItem>Cash on Delivery</asp:ListItem>
                    </asp:DropDownList>
                </fieldset>

                <br /> <br />
                <div class="buttons">
                    <asp:Button ID="btnSubmit" Text="Submit" runat="server" class="submit-btn" Onclick="btn_submit_Click"/>
                    <input id="Reset1" type="reset" value="reset" class="reset-btn" />
                </div>
            </div>
        </form>
    </section>
    <!--end of Section 2-->
</body>
</html>
