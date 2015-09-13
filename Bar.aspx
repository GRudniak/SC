<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bar.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SC</title>
    <link href="Styles/Main.css" rel="stylesheet" />
    <link href="Styles/MenuButtons.css" rel="stylesheet" />
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

        <a href="javascript:activateTab('page1')"><div class="barButton">Napoje</div></a>
        <a href="javascript:activateTab('page2')"><div class="barButton">Dania gorące</div></a>
    
      
  
    <div id="tabCtrl">
      <div id="page1" style="display: block;">Czekamy na baze 1</div>
      <div id="page2" style="display: none;">Czekamy na baze 2</div>
    </div>
            
    </div>


    </form>
</body>
</html>
