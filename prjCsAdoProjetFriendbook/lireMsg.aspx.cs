using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjCsAdoProjetFriendbook
{
    public partial class lireMsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/Friendbook.mdb");
            OleDbConnection mycon = new OleDbConnection(conString);
            mycon.Open();

  
            int refMsg = Convert.ToInt32(Request.QueryString["refm"]);

            string sql = "SELECT Messages.*, Membres.nom, Membres.prenom FROM Messages,Membres WHERE Membres.refMembre = Messages.Envoyeur AND refMessage=" + refMsg;
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader myRder = mycmd.ExecuteReader();
        
            if (myRder.Read())
            {
                cellTitre.Text = "Titre : " + myRder["titre"].ToString();
                cellEnvoyeur.Text = "De : " + myRder["prenom"].ToString() + " " + myRder["nom"].ToString();
                cellDate.Text = "Envoye le  : " + myRder["dateCreation"].ToString();
                cellMessage.Text = "Message : <br/>" + myRder["message"].ToString();

            }
            myRder.Close();
            // Changer la valeur de nouveau du message deja lu
            sql = "UPDATE Messages SET Nouveau=False WHERE refMessage=" + refMsg;
            mycmd = new OleDbCommand(sql, mycon);
            mycmd.ExecuteNonQuery();
            mycon.Close();
        }
    }
}