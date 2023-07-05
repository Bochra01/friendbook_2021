<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="prjCsAdoProjetFriendbook.inscription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            color:navy;
            background-image: url('img/backgroundI.jpeg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
        }
        .auto-style1 {
            text-align: center;
        }
        #span{
            color: #FF6A85;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 562px;
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
        .auto-style11 {
            height: 394px;
            width: 565px;
        }
        input[type=submit] {
            background-color: #FF6A85;
            color: navy;
            padding: 9px 15px;
            border: thin;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: navy;
            color: #FF6A85;
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
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Amitié, Amour et autres, le site parfait pour vous" CssClass="auto-style9" ForeColor="#FF6A85"></asp:Label>
                    <br />
&nbsp;<br />
                    <img src="img/friendsW.jpg" alt="friends" class="auto-style11"/><br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Meilleur(e) ami(e), partenaire, tous sexes, tous genres" CssClass="auto-style9" ForeColor="#FF6A85"></asp:Label>
                    <br />
                <img src="img/friendsM.jpg" alt="friends" class="auto-style3"/><br /></td>
                <td>
                    <table class="auto-style7">
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Nom" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtNom" runat="server" Width="274px" CssClass="auto-style8"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="reqNom" runat="server" ErrorMessage="Veuillez entrer votre nom" ControlToValidate="txtNom">*</asp:RequiredFieldValidator>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Prenom" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPrenom" runat="server" Width="274px" CssClass="auto-style8"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="reqPrenom" runat="server" ErrorMessage="Veuillez entrer votre prenom" ControlToValidate="txtPrenom">*</asp:RequiredFieldValidator>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Age" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtAge" runat="server" TextMode="Number" Width="274px" CssClass="auto-style8"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="reqAge" runat="server" ErrorMessage="Veuillez entrer votre age" ControlToValidate="txtAge">*</asp:RequiredFieldValidator>
                                </strong>
                                <asp:RangeValidator ID="rgAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age doit être entre 18 ans et 80 ans" Font-Bold="True" MaximumValue="80" MinimumValue="18">*</asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Sexe" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSexe" runat="server" Width="274px" CssClass="auto-style8"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="reqSexe" runat="server" ErrorMessage="Veuillez entrer votre sexe" ControlToValidate="txtSexe">*</asp:RequiredFieldValidator>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Groupe ethnique" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtGrpEthnique" runat="server" Width="274px" CssClass="auto-style8"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="reqGrpEthnique" runat="server" ErrorMessage="Veuillez entrer votre groupe ethnique" ControlToValidate="txtGrpEthnique">*</asp:RequiredFieldValidator>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Raison " CssClass="auto-style8"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRaison" runat="server" Width="274px" CssClass="auto-style8"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="reqRaison" runat="server" ErrorMessage="Veuillez entrer votre raison" ControlToValidate="txtRaison">*</asp:RequiredFieldValidator>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Nom d'utilisateur" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUtilisateur" runat="server" Width="274px" CssClass="auto-style8"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="reqnomUtilisateur" runat="server" ErrorMessage="Veuillez entrer votre nom d'utilisateur" ControlToValidate="txtUtilisateur">*</asp:RequiredFieldValidator>
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
                            <td>
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Confirmez Mot De Passe" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtConfMdp" runat="server" Width="274px" CssClass="auto-style8" TextMode="Password"></asp:TextBox>
                                <strong>
                                <asp:CompareValidator ID="cmpMdp" runat="server" ControlToCompare="txtConfMdp" ControlToValidate="txtMdp" ErrorMessage="Tapez le même mot de passe">*</asp:CompareValidator>
                                </strong>
                            </td>
                        </tr>
                         
                        <tr>
                            <td colspan="2">
                               
                                <asp:Label ID="lblErreur" runat="server" CssClass="auto-style9" Font-Bold="True" ForeColor="#990033"></asp:Label>
                                <br />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style10" Font-Bold="True" ForeColor="#990033" />
                               
                            </td>
                           
                        </tr>
                        <tr>
                            <td colspan="2" class="auto-style1">
                                <asp:Button ID="btnInscrire" runat="server" CssClass="auto-style5" Height="42px" Text="S'inscrire" Width="239px" OnClick="btnInscrire_Click" />
                            </td>
                           
                        </tr>
                        
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
