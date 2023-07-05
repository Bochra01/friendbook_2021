<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recherche.aspx.cs" Inherits="prjCsAdoProjetFriendbook.accueil1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            color:navy;
            background-image: url('img/recherche.jpg');
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
        
        .auto-style8 {
            font-weight: bold;
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
            background-color: navy;
            color: lightcoral;
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
        </strong>
  
        <br />
        <br />
        <asp:TextBox ID="txtRecherche" placeholder="chercher un membre" runat="server" Width="241px" CssClass="auto-style8"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRecherche" runat="server" CssClass="auto-style8" Text="Rechercher" Width="222px" OnClick="btnRecherche_Click" style="height: 43px" />
        <br />
        <br />
        <strong>
        <asp:Label ID="lblErreur" runat="server" ForeColor="#990033"></asp:Label>
        </strong>
  
        <br />
        
        <div class="auto-style1">
            <strong>
            <asp:Table ID="tabRecherche" runat="server" BackColor="#90C0B0" ForeColor="Navy" BorderColor="lightcoral" BorderStyle="Solid" GridLines="Both" Height="16px" Width="1246px" >
                <asp:TableRow runat="server">
                  
                    <asp:TableCell runat="server">Nom </asp:TableCell>
                    <asp:TableCell runat="server">Prenom</asp:TableCell>
                    <asp:TableCell runat="server">Age</asp:TableCell>
                    <asp:TableCell runat="server">Sexe </asp:TableCell>
                    <asp:TableCell runat="server">Groupe Ethnique</asp:TableCell>
                    <asp:TableCell runat="server">Raison</asp:TableCell>
                    <asp:TableCell runat="server">Ajouter</asp:TableCell>
                    </asp:TableRow>
            </asp:Table>
            </strong>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
