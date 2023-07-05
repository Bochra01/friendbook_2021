<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lireMsg.aspx.cs" Inherits="prjCsAdoProjetFriendbook.lireMsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            color:navy;
            background-image: url('img/lirelire.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
        }
        #span{
            color: #FF6A85;
        }
        .auto-style6 {
            font-size: larger;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">
            <h1><span id="span" class="auto-style6"><strong>Friend</strong></span><span class="auto-style6"><strong>book</strong></span></h1>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        <asp:Table ID="tabMessage" runat="server" BackColor="#FF6A85" BorderStyle="Solid" Font-Bold="True" GridLines="Both" HorizontalAlign="Center" Width="900px">
            <asp:TableRow runat="server">
                <asp:TableCell ID="cellTitre" runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell ID="cellEnvoyeur" runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell ID="cellDate" runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell ID="cellMessage" runat="server"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            <br />
            <br />
            <asp:HyperLink ID="linkAccueil" runat="server" Font-Bold="True" ForeColor="Navy" NavigateUrl="~/accueil.aspx" ToolTip="Autres messages">Retour à la boîte des messsages</asp:HyperLink>
        </div>
    </form>
</body>
</html>
