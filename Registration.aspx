<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="idpicture_page.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet" />

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300&display=swap');



        body {
            background-image: url('Images/bg.jpg');
            background-attachment: fixed;
            position: relative;
            font-family: 'Inter';
        }

        legend {
            display: block;
            padding-left: 13px;
            padding-right: 13px;
            border: none;
            font-family: 'Inter';
            font-weight: bold;
            font-size: 14px;
            color: #303030;
        }

        input {
            border-width: 0px;
            border: none;
            outline: none;
            font-weight: bold;
            font-size: 13px;
        }

        .container {
            background-color: white;
            padding: 25px;
            box-shadow: 9px 10px 30px 10px grey;
            position: fixed;
            right: -470px;
            height: 100%;
            margin-top: -0.7%;
        }

        .button1 {
            background-color: #FF9671;
            border: none;
            color: white;
            padding: 15px 28px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            transition: 0.3s;
            border-radius: 5px;
        }

        .button1 {
            cursor: pointer;
            display: inline-block;
            position: relative;
        }

            .button1:hover {
                transform: scale(1.1);
            }

        .button2 {
            background-color: transparent;
            border-radius: 8px;
            border-width: 3px;
            padding-top: 6px;
            padding-right: 13px;
            padding-bottom: 5px;
            padding-left: 10px;
            color: #303030;
            margin-right: 12px;
            margin-top: -1px;
            cursor: pointer;
        }

        .button2 {
            cursor: pointer;
            display: inline-block;
            position: relative;
        }

            .button2:hover {
                background-color: #FF9671;
                color: whitesmoke;
                border-color: whitesmoke;
            }

        p#una {
            font-size: 38px;
            font-weight: bold;
            padding-left: 65px;
            padding-bottom: 40px;
            margin-top: 10px;
        }

        fieldset {
            width: 450px;
            border-color: black;
            border-width: 4px;
            padding-right: 1px;
            padding-left: 10px;
            margin-bottom: -4px;
        }

        form {
            padding-left: 65px;
            margin-top: -5.5%;
        }

        p {
            font-size: 12px;
            color: #303030;
        }

        input#place {
            opacity: 50%;
        }

        div.arrow {
            position: fixed;
            border: none;
            padding-top: 11px;
        }

        p#checkbox {
            font-size: 15px;
        }

        textarea{
            border-width: 0px;
            border: none;
            outline: none;
            font-weight: bold;
            font-size: 13px;
            }

        input[type=checkbox] {
            -moz-appearance: none;
            -webkit-appearance: none;
            outline: none;
            content: none;
            cursor: pointer;
        }

            input[type=checkbox]:before {
                font-family: "FontAwesome";
                content: "\f00c";
                font-size: 15px;
                color: transparent !important;
                background: #fef2e0;
                display: block;
                width: 15px;
                height: 15px;
                border: 3px solid black;
                margin-right: 7px;
                border-radius: 2px;
                cursor: pointer;
            }

            input[type=checkbox]:checked:before {
                color: black !important;
            }















        /* MEDIAAAAA */
        @media screen and (max-width: 600px) {

            body {
                background-image: url('bg.jpg');
                position: relative;
                font-family: 'Inter';
            }

            legend {
                display: block;
                padding-left: 13px;
                padding-right: 13px;
                border: none;
                font-family: 'Inter';
                font-weight: bold;
                font-size: 14px;
                color: #303030;
            }

            input#par {
                width: 285px;
                border: none;
                outline: none;
                font-weight: bold;
                font-size: 13px;
            }

            .container {
                background-color: white;
                box-shadow: 9px 10px 30px 10px grey;
                position: fixed;
                left: 190px;
                height: 100%;
                margin-top: -10px;
            }

            .button1 {
                background-color: #FF9671;
                border: none;
                color: white;
                padding: 15px 28px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 22px;
                cursor: pointer;
                transition: 0.3s;
                border-radius: 5px;
            }

            .button1 {
                cursor: pointer;
                display: inline-block;
                position: relative;
            }

                .button1:hover {
                    transform: scale(1.1);
                    transition-delay: 0s;
                }


            .button2 {
                background-color: transparent;
                border-radius: 8px;
                border-width: 3px;
                padding-top: 6px;
                padding-right: 13px;
                padding-bottom: 5px;
                padding-left: 10px;
                color: #303030;
                margin-right: 12px;
                margin-top: -1px;
                cursor: pointer;
            }

                .button2:hover {
                    background-color: #FF9671;
                    color: whitesmoke;
                    border-color: whitesmoke;
                    transition-delay: 0s;
                }

            p#una {
                font-size: 38px;
                font-weight: bold;
                padding-left: 75px;
            }

            fieldset {
                width: 310px;
                border-color: black;
                border-width: 4px;
                display: flex;
                justify-content: center;
                margin-left: 23px;
                margin-right: 2px;
            }

            form {
                padding-left: 0px;
                margin-top: -60px;
                margin-left: -6px;
                width: 100%;
            }

            p {
                font-size: 12px;
                color: #303030;
            }

            input#place {
                opacity: 50%;
                width: 285px;
            }

            div.arrow {
                position: fixed;
                border: none;
                padding-top: 11px;
            }

            input#password {
                width: 265px;
            }

            input#passwordd {
                width: 265px;
            }

            p#checkbox {
                margin-left: 20px;
                margin-right: 20px;
            }

            textarea{
                border: 0px;
                border-style: none;
                height: 30px;
            }

            input[type=checkbox] {
                -moz-appearance: none;
                -webkit-appearance: none;
                outline: none;
                content: none;
                position: relative;
                cursor: pointer;
            }

                input[type=checkbox]:before {
                    font-family: "FontAwesome";
                    content: "\f00c";
                    font-size: 15px;
                    color: transparent !important;
                    background: transparent;
                    display: block;
                    width: 15px;
                    height: 15px;
                    border: 3px solid black;
                    border-radius: 2px;
                    justify-content: center;
                    margin-left: auto;
                    margin-right: auto;
                    cursor: pointer;
                }

                input[type=checkbox]:checked:before {
                    color: black !important;
                }
        }
    </style>
</head>
<body>
    <div class="container" style="width: 100%;">
        <div class="arrow">
            <button style="font-size: 27px" class="button2" onclick="document.location='index.aspx'"><i class="fa fa-arrow-left"></i></button>
        </div>

        <p id="una">Create Account</p>
        <br />

        <form id="form1" runat="server">
            <fieldset>
                <legend>First Name</legend>
                <asp:TextBox ID="fname" size="53" maxlength="32" runat="server" required="required"></asp:TextBox>
            </fieldset>
            <br/>
            <fieldset>
                <legend>Last Name</legend>
                <asp:TextBox ID="lname" size="53" maxlength="32" runat="server" required="required"></asp:TextBox>
            </fieldset>
            <br/>
            <fieldset>
                <legend>Mobile Number</legend>
                <asp:TextBox ID="mobilenum" TextMode="Phone" placeholder="09XXXXXXXXX" size="53" maxlength="11" runat="server" required="required"></asp:TextBox>
                
            </fieldset>
            <br/>
            <fieldset>
                <legend>Email Address</legend>
                <asp:TextBox ID="emailadd" TextMode="Email" size="53" maxlength="32" runat="server" required="required"></asp:TextBox>
            </fieldset>
            <br />
            <fieldset>
                <legend>Address</legend>
                <asp:TextBox ID="addressfield" placeholder="House no./Blk and Lot no., Street name, Brgy., City, Country" size="53" runat="server" required="required"></asp:TextBox>
            </fieldset>
            <br/>
            <fieldset>
                <legend>Password</legend>
                <asp:TextBox ID="password" TextMode="Password" minlength="8" size="53" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                    title="Must contain at least one number 
                    and one uppercase and lowercase letter, 
                    and a maximum of 8 characters" runat="server" required="required"></asp:TextBox>
                <i class="bi bi-eye-slash" id="togglePassword"></i>
            </fieldset>
            <br/>
            <fieldset>

                <legend>Confirm Password</legend>
                <asp:TextBox ID="passwordd" textmode="Password" size="53" runat="server" required="required"></asp:TextBox>
                <i class="bi bi-eye-slash" id="togglePasswordd"></i>
            </fieldset>

            <br />
            <asp:Label ID="match_mess" Text="" ForeColor="Red" runat="server"></asp:Label>

            <p id="checkbox">
                <input type="checkbox" id="CheckBox1" required/>
                I agree to the <strong><a href="ToS.aspx" style="color: #FF9671; text-decoration: none;">Terms and Conditions</a></strong>
            </p>
            <p id="demo"></p>
            <asp:Button ID="btn_create" runat="server" Text="Create" OnClick="btn_create_Click" CssClass="button1" />
        </form>
    </div>

    <!-- JAVASCRIPT -->
<script type="text/javascript">
    const togglePassword = document.querySelector("#togglePassword");
    const password = document.querySelector("#password");

    togglePassword.addEventListener("click", function () {

        // toggle the type attribute
        const type = password.getAttribute("type") === "password" ? "text" : "password";
        password.setAttribute("type", type);

        // toggle the icon
        this.classList.toggle("bi-eye");
    });

    const togglePasswordd = document.querySelector("#togglePasswordd");
    const passwordd = document.querySelector("#passwordd");

    togglePasswordd.addEventListener("click", function () {

        // toggle the type attribute
        const type = passwordd.getAttribute("type") === "password" ? "text" : "password";
        passwordd.setAttribute("type", type);

        // toggle the icon
        this.classList.toggle("bi-eye");
    });

    var checker = document.getElementById('CheckBox1');
    var sendbtn = document.getElementById('btn_create');
    checker.onchange = function () {
        sendbtn.enabled = !!this.checked;
    };

    function btn_create() {
        var x = document.getElementById("CheckBox1").required;
        document.getElementById("demo").innerHTML = x;
    }
</script>
</body>
</html>
