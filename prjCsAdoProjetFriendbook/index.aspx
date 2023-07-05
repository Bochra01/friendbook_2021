<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="prjCsAdoProjetFriendbook.accueil" %>

<!DOCTYPE html>

<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            color:navy;
            background-image: url('img/background.jpeg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
        }
        .auto-style1 {
            text-align: center;
        }
        #span{
            color: pink;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 505px;
        }
        .auto-style4 {
            width: 550px;
        }
        .auto-style5 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style6 {
            font-size: larger;
        }
        .auto-style7 {
            width: 100%;
            height:100%;
        }
        .auto-style8 {
            font-size: xx-large;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            font-size: large;
        }
        input[type=submit] {
            background-color: pink;
            color: navy;
            padding: 9px 15px;
            border: thin;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: navy;
            color: pink;
        }
        .auto-style11 {
            height: 60px;
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
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Site pour tous" CssClass="auto-style9" ForeColor="Pink"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Découvrez vote âme soeur" CssClass="auto-style9" ForeColor="Pink"></asp:Label>
&nbsp;<br />
                    <img src="img/women.jpg" alt="women" class="img"/><br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Fondez une famille avec un Amour infini" CssClass="auto-style9" ForeColor="Pink"></asp:Label>
                    <br />
                <img src="img/men.jpg" alt="men" class="auto-style3"/><br /></td>
                <td>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Nom d'utilisateur" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:TextBox ID="txtUsername" runat="server" Width="274px" CssClass="auto-style8"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="reqNom" runat="server" ErrorMessage="Veuillez entrer votre nom d'utilisateur" ControlToValidate="txtUsername">*</asp:RequiredFieldValidator>
                                </strong>
                            </td>
                        </tr>
                       
                        <tr>
                            <td>
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Mot De Passe" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMdp" runat="server" Width="274px" CssClass="auto-style8" TextMode="Password"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="reqMdp" runat="server" ErrorMessage="Veuillez entrer votre mot de passe" ControlToValidate="txtMdp">*</asp:RequiredFieldValidator>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                               
                                <asp:Label ID="lblErreur" runat="server" CssClass="auto-style9" Font-Bold="True" ForeColor="#5C6A85"></asp:Label>
                                <br />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style10" Font-Bold="True" ForeColor="#5C6A85" />
                               
                            </td>
                           
                        </tr>
                        <tr>
                            <td colspan="2" class="auto-style1">
                                <asp:Button ID="btnConnexion" runat="server" CssClass="auto-style5" Height="42px" Text="Se connecter" Width="239px" OnClick="btnConnexion_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="inscription.aspx">Créer un compte</a>
                            </td>
                           
                        </tr>
                        
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>

