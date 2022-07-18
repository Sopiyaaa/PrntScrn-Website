<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin_page.aspx.cs" Inherits="idpicture_page.adminlogin_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Log In</title>
     <meta charset="UTF-8"/>
    <link href="external%20files/AdminFormCss.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="../../Images/favicon.ico"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
     <div class="container">
      <form action="#" id="form1" runat="server">
        <div class="title"> Admin Login</div>
        <div class="input-box underline">
            <asp:TextBox runat="server" placeholder="Admin Username" ID="uname"></asp:TextBox>
          <div class="underline"></div>
        </div>
        <div class="input-box">
            <asp:TextBox runat="server" type="password" placeholder="Admin Password" ID="pass"></asp:TextBox>
          <div class="underline"></div>
        </div>
        <div class="input-box button">
            <asp:Button runat="server" ID="btn_submit" OnClick="btn_submit_Click" type="submit" text="Log In"/>
        </div>
      </form>
    </div>
</body>
</html>
