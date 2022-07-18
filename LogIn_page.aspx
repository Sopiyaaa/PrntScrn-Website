<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn_page.aspx.cs" Inherits="idpicture_page.Webpages.LogIn" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet" />

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300&display=swap');


        body {
            background-image: url('../Images/bg-login.jpg' );
            background-repeat: no-repeat;
            background-position: right;
            background-attachment: fixed;
            font-family: 'Inter';
        }
        s
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
            position: fixed;
            right: 810px;
            width: 494px;
            height: 660px;
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
            margin-left: -63px;
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

            .button2:hover {
                background-color: #FF9671;
                color: whitesmoke;
                border-color: whitesmoke;
            }

        fieldset {
            width: 450px;
            border-color: black;
            border-width: 4px;
            padding-right: 1px;
            padding-left: 10px;
            margin-bottom: -4px;
            margin-right: 110px;
            margin-left: -62px;
            color: #404040;
        }

        form {
            padding-left: 65px;
            margin-bottom: -10.5%;
            margin-top: -60px;
        }

        p#una {
            font-size: 38px;
            font-weight: bold;
            padding-bottom: 40px;
            margin-top: 150px;
            margin-right: 200px;
            margin-left: 20px;
        }

        p {
            font-size: 12px;
            color: #303030;
            padding-left: 10px;
        }

            p#checkbox {
                padding-left: -10px;
                padding-right: 70px;
                margin-left: -74px;
                margin-right: 120px;
                font-size: 15px;
                cursor: pointer;
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
            }

            input[type=checkbox]:checked:before {
                color: black !important;
            }

        input#place {
            opacity: 50%;
        }

        div.arrow {
            position: fixed;
            border: none;
            padding-top: 11px;
        }




        @media screen and (max-width: 800px) {
            body {
                background-image: none;
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

            input#password {
                width: 285px;
            }

            input#passwordd {
                width: 285px;
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
                position: fixed;
                right: 190px;
                height: 100%;
                margin-top: -2%;
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
                margin: 4px 70px;
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
                color: #303030;
                margin-left: 130px;
                display: flex;
                cursor: pointer;
            }

                .button2:hover {
                    background-color: #FF9671;
                    color: whitesmoke;
                    border-color: whitesmoke;
                    transition-delay: 0s;
                }

            fieldset {
                width: 320px;
                border-color: black;
                border-width: 4px;
                color: #303030;
                display: flex;
                margin-left: 69px;
            }

            form {
            }

            p#una {
                font-size: 38px;
                font-weight: bold;
                padding-left: 135px;
                display:flex;
                justify-content:center;
            }

            p {
                font-size: 12px;
                color: #303030;
                padding-left: 10px;
            }

                p#checkbox {
                    margin-left: 56px;
                    margin-right: 2px;
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
                    background: transparent;
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

            div.arrow {
                position: fixed;
                border: 0px;
                padding-top: 11px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="arrow">
            <button style="font-size: 27px" class="button2" onclick="document.location='index.aspx'"><i class="fa fa-arrow-left"></i></button>
        </div>


        <p id="una">Log In</p>
        <br />
        <form id="form1" runat="server">
            <fieldset>
                <legend>Email Address </legend>
                <asp:TextBox ID="email" TextMode="Email" size="53" runat="server" required="required"></asp:TextBox>
            </fieldset>
            <br/>
            <fieldset>
                <legend>Password  </legend>
                <asp:TextBox ID="pass" Textmode="Password" size="53" runat="server" required="required"></asp:TextBox>
                <i class="bi bi-eye-slash" id="togglePassword"></i>
            </fieldset>

            <br />
            <asp:Button ID="btn_login" CssClass="button1" OnClick="btn_login_Click" runat="server" Text="Log In" />

        </form>
    </div>


    <!-- JAVASCRIPT -->
<script>

        const password = document.querySelector("#pass");
        togglePassword.addEventListener("click", function () {

            // toggle the type attribute
            const type = password.getAttribute("type") === "password" ? "text" : "password";
            password.setAttribute("type", type);
            
            // toggle the icon
            this.classList.toggle("bi-eye");
        });


</script>
</body>
</html>
