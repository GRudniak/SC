<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SC</title>
    <link href="Styles/Main.css" rel="stylesheet" />
    <link href="Styles/MenuButtons.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="topContainer">
        <div class="topLogo">
            <a href="Index.aspx"><img src="img/logo.png" /></a>
        </div>
    </div>
         <hr />
    <div class="mainContainer">
        <div class="leftColumn">
        <%		   
            Response.WriteFile("Menu.html");
        %>
        </div>
        <div class="rightColumn">
            
    </div>


    </form>
</body>
</html>
