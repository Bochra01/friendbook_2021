<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listeAmis.aspx.cs" Inherits="prjCsAdoProjetFriendbook.listeAmis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            color:navy;
            background-image: url('img/listFriends.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
        }
        #span{
            color: lightcoral;
        }
        .auto-style6 {
            font-size: larger;
        }
        .auto-style7 {
            text-align: center;
        }
        .navbar {
            width: 100%;
            background-color: lightcoral;
            font-weight:bolder;
            overflow: auto;
        }
        * {box-sizing: border-box}
        .navbar a {
            float: left;
            padding: 12px;
            color: white;
            text-decoration: none;
            font-size: 17px;
            width: 25%; 
            text-align: center;
        }
        .navbar a:hover {
            background-color: #90C0B0;            
        }
        .navbar a.active {
            background-color: #04AA6D;
        }
        @media screen and (max-width: 500px) {
            .navbar a {
                float: none;
                display: block;
                width: 100%;
                text-align: center;
            }

        }
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div>
            <h1 class="auto-style7"><span id="span" class="auto-style6">Friend</span><span class="auto-style6">book</span></h1>
        </div>
        <p>
            &nbsp;</p>
    
    <!--Menu -->
        <div class="navbar">
            <a href="recherche.aspx">Rechercher un membre</a>
            <a href="accueil.aspx" class="auto-style7">Messages</a>
            <a href="listeAmis.aspx" class="auto-style7">Membres ajoutés</a>
            <a href="deconnexion.aspx" class="auto-style7">Deconnexion</a>

        </div> 
        <br /><br /><br />
             <div class="auto-style1">
                <strong>
            <asp:Table ID="tabAmis" runat="server" BackColor="#90C0B0" ForeColor="Navy" BorderColor="lightcoral" BorderStyle="Solid" GridLines="Both" Height="16px" Width="1246px" >
                <asp:TableRow runat="server">
                  
                    <asp:TableCell runat="server">Nom </asp:TableCell>
                    <asp:TableCell runat="server">Prenom</asp:TableCell>
                    <asp:TableCell runat="server">Age</asp:TableCell>
                    <asp:TableCell runat="server">Sexe </asp:TableCell>
                    <asp:TableCell runat="server">Groupe Ethnique</asp:TableCell>
                    <asp:TableCell runat="server">Raison</asp:TableCell>
                    
                    </asp:TableRow>
            </asp:Table>
            </strong>
                  </div>
        </div>
           
    </form>
</body>
</html>
