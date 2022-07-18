<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="idpicture_page.Webpages.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico" />
    <meta charset="UTF-8"/>
    <link href="external%20files/AdminPage.css" rel="stylesheet" />
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet' />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        ul {
            display: inline;
            margin: 0;
            padding: 0;
        }

            ul li {
                display: inline-block;
            }

                ul li:hover {
                    background: ghostwhite;
                }

                    ul li:hover ul {
                        display: block;
                    }

                ul li ul {
                    position: absolute;
                    width: 200px;
                    display: none;
                }

                    ul li ul li {
                        background: #f0f0f0;
                        display: block;
                    }

                        ul li ul li a {
                            text-decoration: none;
                            text-align: center;
                        }

                        ul li ul li a {
                            display: block !important;
                        }

                        ul li ul li:hover {
                            background: #666;
                        }
    </style>
</head>

<body>
    <div class="sidebar">
        <div class="logo-details">
            <i class=""></i>
            <span class="logo_name">Prnt Scrn</span>
        </div>
        <ul class="nav-links">
            <li>
                <a href="admin.aspx" class="active">
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Dashboard</span>
                </a>
            </li>

             <li class="log_out">
                <a href="logoutpageadmin.aspx">
                    <i class='bx bx-log-out'></i>
                    <span class="links_name">Log out</span>
                </a>
            </li>

            <li>
                <a href="">
                    <i class='bx bx-cart'></i>
                    <span class="links_name">Orders</span>
                </a>
                <ul>
                    <li><a href="id_admin.aspx">ID Picture</a></li>
                    <li><a href="print_admin.aspx">Print</a></li>
                    <li><a href="postcard_admin.aspx">Postcards</a></li>
                    <li><a href="flyer_admin.aspx">Flyers</a></li>
                    <li><a href="invitation_admin.aspx">Invitations</a></li>
                    <li><a href="sticker_admin.aspx">Stickers</a></li>
                </ul>
            </li>
           
        </ul>
    </div>
    <section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">Dashboard</span>
            </div>
            <div class="profile-details">
                <!--<img src="images/profile.jpg" alt="">-->
                <i class='bx bx-user'></i>
                <span class="admin_name">Admin</span>

            </div>
        </nav>

        <div class="home-content">
            <div class="overview-boxes">
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Total Order</div>
                        <asp:Label ID="total_order" runat="server"></asp:Label>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt'></i>
                            <span class="text">Updated</span>
                        </div>
                    </div>
                    <i class='bx bx-cart-alt cart'></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Pending</div>
                        <asp:Label ID="total_pending" runat="server"></asp:Label>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt'></i>
                            <span class="text">Updated</span>
                        </div>
                    </div>
                    <i class='bx bxs-cart-add cart two'></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Cash on Delivery</div>
                        <asp:Label ID="total_cod" runat="server"></asp:Label>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt'></i>
                            <span class="text">Updated</span>
                        </div>
                    </div>
                    <i class='bx bx-cart cart three'></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Pick-Up</div>
                        <asp:Label ID="total_pickup" runat="server"></asp:Label>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt'></i>
                            <span class="text">Updated</span>
                        </div>
                    </div>
                    <i class='bx bxs-cart-download cart four'></i>
                </div>
            </div>

            <div class="sales-boxes">
            </div>
        </div>
    </section>

    <script>
        let sidebar = document.querySelector(".sidebar");
        let sidebarBtn = document.querySelector(".sidebarBtn");
        sidebarBtn.onclick = function () {
            sidebar.classList.toggle("active");
            if (sidebar.classList.contains("active")) {
                sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
            } else
                sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
        }
    </script>
</body>
</html>
