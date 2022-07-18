<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchase_page.aspx.cs" Inherits="idpicture_page.purchase_id" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orders</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico" />
    <link href="external%20files/StyleSheet_Categories.css" rel="stylesheet" />
    <link href="external%20files/fonts.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="external%20files/TopNav_id-page.js"></script>
</head>
<body>
    <!-- NAV BAR -->
    <div class="Topnav" id="Navi">
        <div>
            <a><asp:Label ID="Label1" runat="server" Visible="false"></asp:Label></a>
            <a href="content_page.aspx#cats">Categories</a>
            <a href="content_page.aspx#footer">About</a>
            <a href="content_page.aspx">Home</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i></a>
            <br />
            <br />
            <br />
        </div>
    </div>
    <!-- END OF NAV BAR -->

    <!-- SECTION 1 TABLE -->
    <section>
        <div class="tbl">            
            <h1 class="purcheese">Purchases</h1>
            <form runat="server" class="gridvyo">
                <asp:GridView ID="GridView1" runat="server" CssClass="gridview1">
                    <HeaderStyle BackColor="#ff9671" Font-Bold="True" ForeColor="white" />
                    <RowStyle BackColor="White" ForeColor="#404040"/>
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView2" runat="server" CssClass="gridview2">
                    <HeaderStyle BackColor="#ff9671" Font-Bold="True" ForeColor="white" />
                    <RowStyle BackColor="White" ForeColor="#404040" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView3" runat="server" CssClass="gridview3">
                    <HeaderStyle BackColor="#ff9671" Font-Bold="True" ForeColor="white" />
                    <RowStyle BackColor="White" ForeColor="#404040" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView4" runat="server" CssClass="gridview4">
                    <HeaderStyle BackColor="#ff9671" Font-Bold="True" ForeColor="white" />
                    <RowStyle BackColor="White" ForeColor="#404040" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView5" runat="server" CssClass="gridview5">
                    <HeaderStyle BackColor="#ff9671" Font-Bold="True" ForeColor="white" />
                    <RowStyle BackColor="White" ForeColor="#404040" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView6" runat="server" CssClass="gridview6">
                    <HeaderStyle BackColor="#ff9671" Font-Bold="True" ForeColor="white" />
                    <RowStyle BackColor="White" ForeColor="#404040" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:GridView>
            </form>
            
        </div>
    </section>
    <!-- END OF SECTION 1 TABLE-->
</body>
</html>
