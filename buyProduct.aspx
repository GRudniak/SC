<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buyProduct.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SC</title>
    <link href="Styles/Main.css" rel="stylesheet" />
    <link href="Styles/MenuButtons.css" rel="stylesheet" />
    <link href="Styles/Orders.css" rel="stylesheet" />
     <script type="text/javascript">

      function activateTab(pageId) {
          var tabCtrl = document.getElementById('tabCtrl');
          var pageToActivate = document.getElementById(pageId);
          for (var i = 0; i < tabCtrl.childNodes.length; i++) {
              var node = tabCtrl.childNodes[i];
              if (node.nodeType == 1) { /* Element */
                  node.style.display = (node == pageToActivate) ? 'block' : 'none';
              }
          }
      }

    </script>
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
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text="Cena: "></asp:Label><asp:Label ID="Label3" runat="server" Text=""></asp:Label><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Kup" CssClass="orderButtons" />
  

      
  
   
      </div>
  
            
    </div>


    </form>
</body>
</html>
