<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ecriremsg.aspx.cs" Inherits="prjCsAdoProjetFriendbook.ecriremsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        * {box-sizing: border-box}
        #span{
            color: lightcoral;
        }
        body{
            color:navy;
            background-image: url('img/envmsg.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
        }
        .auto-style6 {
            font-size: larger;
        }
        .auto-style2 {
            background-color:#90C0B0;
        }
        .auto-style7 {
            text-align: center;
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
        .auto-style9 {
            font-size: larger;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style7"><span id="span" class="auto-style6"><strong>Friend</strong></span><span class="auto-style6"><strong>book</strong></span></h1>
            <p class="auto-style7">
                &nbsp;</p>
            <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Destinataire :" ForeColor="Navy"></asp:Label>
                </td>
                <td>
                    <em>
                    <asp:DropDownList ID="cboDestinataire" runat="server" CssClass="auto-style6" Width="303px" OnSelectedIndexChanged="cboDestinataire_SelectedIndexChanged">
                    </asp:DropDownList>
                    </em>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Titre :" ForeColor="Navy"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTitre" runat="server" CssClass="auto-style9" Width="303px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqTitre" runat="server" ControlToValidate="txtTitre" ErrorMessage="Veuillez rentrer un titre " Font-Bold="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr rowspan="3">
                <td colspan="2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Message :" ForeColor="Navy"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="reqMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Veuillez rentrer un message" Font-Bold="True">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtMessage" runat="server" Height="229px" Width="1241px" Font-Bold="True" TextMode="MultiLine"></asp:TextBox>
                </td>
            

         
            </tr>
            <tr>
                <td class="auto-style3">
                    <strong>
                    <asp:Button ID="btnEnvoyer" runat="server" CssClass="auto-style9" ForeColor="Navy" Height="52px" Text="Envoyer" Width="206px" OnClick="btnEnvoyer_Click" />
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Button ID="btnRecommencer" runat="server" Text="Recommencer" CssClass="auto-style9" Height="48px" Width="206px" ForeColor="Navy" OnClick="btnRecommencer_Click" />
                    </strong>
                </td>
            </tr>
        </table>
        </div>
        <strong>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </strong>
    </form>
</body>
</html>
