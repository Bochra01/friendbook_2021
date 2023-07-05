using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Drawing;

namespace prjCsAdoProjetFriendbook
{
    public partial class ecriremessage : System.Web.UI.Page
    {
 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                string nom = "";
                string prenom = "";
                int refm = Convert.ToInt32(Session["RefM"].ToString());
                string conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/Friendbook.mdb");
                OleDbConnection mycon = new OleDbConnection(conString);
                mycon.Open();
                string sql = "SELECT nom, prenom FROM Membres WHERE refMembre=" + refm;
                OleDbCommand mycmd = new OleDbCommand(sql, mycon);
                OleDbDataReader myRder = mycmd.ExecuteReader();
                if (myRder.Read())
                {
                    nom = myRder["nom"].ToString();
                    prenom = myRder["prenom"].ToString();
                    lblInfo.Text = "Bienvenue " + prenom + " " + nom;

                }
       
                sql = "SELECT Membres.nom, Membres.prenom ,Messages.titre ,Messages.Nouveau, Messages.refMessage FROM (Membres INNER JOIN Messages ON Membres.refMembre = Messages.Envoyeur) WHERE Messages.destinataire = " + refm;
                myRder.Close();
                mycmd = new OleDbCommand(sql, mycon);
        
                myRder = mycmd.ExecuteReader();

                Int32 nbmsg = 0;

                while (myRder.Read())
                {
                  
                    nbmsg++;

                   
                    TableRow myrow = new TableRow();

                   
                    myrow.BackColor = Color.Transparent;

                  
                    TableCell mycell = new TableCell();
                    mycell.Text = myRder["titre"].ToString();
                    myrow.Cells.Add(mycell);

                    mycell = new TableCell();
                    mycell.Text = myRder["nom"].ToString();
                    myrow.Cells.Add(mycell);

                    mycell = new TableCell();
                    mycell.Text = myRder["prenom"].ToString();
                    myrow.Cells.Add(mycell);

                    int refMsg = Convert.ToInt32(myRder["refMessage"].ToString());

                    mycell = new TableCell();
                    mycell.Text = "<a href='lireMsg.aspx?refm=" + refMsg + "'> Lire   </a>  <a href='effacerMsg.aspx?refm=" + refMsg + "'> Effacer   </a>";
                    myrow.Cells.Add(mycell);


                    if (myRder["Nouveau"].ToString() == "True")
                    {
                        myrow.BackColor = Color.LightCoral;

                    }

                    tabMessages.Rows.Add(myrow);
                }


                lblInfo.Text = "Bienvenue " + prenom + " " +  nom + ", Vous avez " + nbmsg + " messages";
                mycon.Close();
            }




        }

        protected void btnMessage_Click(object sender, EventArgs e)
        {
            Server.Transfer("ecriremsg.aspx");
        }
    }
}