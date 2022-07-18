﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flyer_admin.aspx.cs" Inherits="idpicture_page.flyer_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico" />
    <meta charset="UTF-8" />
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
                    <span class="links_name">Products</span>
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
                <span class="dashboard">Flyers</span>
            </div>
            <div class="profile-details">
                <!--<img src="images/profile.jpg" alt="">-->
                <i class='bx bx-user'></i>
                <span class="admin_name">Admin</span>

            </div>
        </nav>
        <div class="tbl1">
            <form runat="server">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" >
                <Columns>
                    <asp:BoundField DataField="order_id" HeaderText="Order Id" ReadOnly="True" />
                    <asp:BoundField DataField="category" HeaderText="Category" ReadOnly="True" />
                    <asp:BoundField DataField="file_upload" HeaderText="File Upload" ReadOnly="True" />
                    <asp:BoundField DataField="paper_type" HeaderText="Paper type" ReadOnly="True" />
                    <asp:BoundField DataField="color" HeaderText="Color" ReadOnly="True" />
                    <asp:BoundField DataField="folds" HeaderText="Folds" ReadOnly="True" />
                    <asp:BoundField DataField="printed_side" HeaderText="Printed side" ReadOnly="True" />
                    <asp:BoundField DataField="fold_Type" HeaderText="Fold type" ReadOnly="True" />
                    <asp:BoundField DataField="paper_size" HeaderText="Paper  size" ReadOnly="True" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" ReadOnly="True" />
                    <asp:BoundField DataField="suggestions" HeaderText="Suggestions" ReadOnly="True" />
                    <asp:BoundField DataField="payment" HeaderText="Payment" ReadOnly="True" />
                    <asp:BoundField DataField="customer_name" HeaderText="Customer Name" ReadOnly="True" />
                    <asp:BoundField DataField="address" HeaderText="Address" ReadOnly="True" />
                    <asp:BoundField DataField="emailadd" HeaderText="Email Address" ReadOnly="True" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                </Columns>              
            </asp:GridView>
            </form>
        </div>
    </section>
</body>
</html>
