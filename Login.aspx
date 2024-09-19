<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Login</title>
      <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <%--<link rel = "icon" href="images/Schologo.png" type ="image/x-icon"/>--%>
    <meta name="keywords" content=""/>
    <!-- /meta tags -->
    <!-- custom style sheet -->
    <link href="css1/style.css" rel="stylesheet" type="text/css" />
    <!-- /custom style sheet -->    
    <!-- fontawesome css -->
    <link href="css1/fontawesome-all.css" rel="stylesheet" />
    <!-- /fontawesome css -->
    <!-- google fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet"/>
    <style>
        .button 
        {
            background: #fc3955;
            color: #ffffff;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 1px;
            border: none;
            padding: 12px 60px;
            cursor: pointer;
            width: 100%;
            border-radius: 6px;
        }
    </style>
</head>
<body style="min-height: 75vh;">
    <form id="form1" runat="server">
    <div class=" w3l-login-form" style="margin-top:90px">
        <h2>Login</h2>
            <div class=" w3l-form-group">
                <label>Username:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <asp:TextBox ID="txtuserid" runat="server" class="form-control" placeholder="Username" required="required" ></asp:TextBox>
                    <%--<input type="text" class="form-control" placeholder="Username" required="required" />--%>
                </div>
            </div>
            <div class=" w3l-form-group">
                <label>Password:</label>
                <div class="group">
                    <i class="fas fa-unlock"></i>
                    <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password" required="required" TextMode="Password"></asp:TextBox>
                 <%--   <input type="password" class="form-control" placeholder="Password" required="required" />--%>
                </div>
            </div>
            <div class="forgot">
                <a href="#">Forgot Password?</a>
                <p><input type="checkbox"/>Remember Me</p>
            </div>
            <asp:Button ID="btnlogin" runat="server" Text="Login" class="button" OnClick="btnlogin_Click" />
        <%--    <button type="submit">Login</button>    --%>  
    </div>
    <footer style="padding:1em 0 !important">
      <p class="copyright-agileinfo"> &copy; 2022 Attendance Management. All Rights Reserved | Design by <a href="http://webitsolutionhub.com">WISH</a></p>
    </footer>
    </form>
</body>
</html>
