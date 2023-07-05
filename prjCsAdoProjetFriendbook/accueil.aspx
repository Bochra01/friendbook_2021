<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accueil.aspx.cs" Inherits="prjCsAdoProjetFriendbook.ecriremessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            color:navy;
            background-image: url('img/lireMsg.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
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
        #span{
            color: lightcoral;
        }
        .auto-style1 {
            text-align: center;
        }

        .auto-style6 {
            font-size: larger;
        }
        
        .auto-style7 {
            width: 49%;
        }
        
        input[type=submit] {
            background-color: lightcoral;
            color: white;
            padding: 9px 15px;
            border: thin;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #90C0B0;
            color: lightcoral;
        }
        .auto-style8 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <h1 class="auto-style1"><span id="span" class="auto-style6">Friend</span><span class="auto-style6">book</span></h1>
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
        <br />
        <strong>
        <asp:Label ID="lblInfo" runat="server" ForeColor="LightCoral"></asp:Label>
        <br />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        
        <div class="auto-style1">
            <strong>
            <asp:Table ID="tabMessages" runat="server" BackColor="#90C0B0" ForeColor="Navy" BorderColor="lightcoral" BorderStyle="Solid" GridLines="Both" Height="16px" Width="1246px" >
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Titre</asp:TableCell>
                    <asp:TableCell runat="server">Nom de l'expéditeur</asp:TableCell>
                    <asp:TableCell runat="server">Prenom de l'expéditeur</asp:TableCell>
                     <asp:TableCell runat="server">Actions </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <div class="auto-style8">
            </strong>
            <br />
                <br />
                <br />
                <br />
                <asp:Button ID="btnMessage" runat="server" Font-Bold="True" Text="Composer un message" Width="266px" OnClick="btnMessage_Click" />
            <br />
            </div>
    

    </form>
</body>
</html>