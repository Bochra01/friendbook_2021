using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjCsAdoProjetFriendbook
{
    public partial class accueil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnexion_Click(object sender, EventArgs e)
        {
           
            string username = txtUsername.Text.Trim();
            string mdp = txtMdp.Text.Trim();

            string conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/Friendbook.mdb");
            OleDbConnection mycon = new OleDbConnection(conString);
            mycon.Open();
          

       
            string sql = "SELECT refMembre FROM Membres WHERE username = @usern AND password = @passw";
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);


            mycmd.Parameters.AddWithValue("usern", username);
            mycmd.Parameters.AddWithValue("passw", mdp);

            OleDbDataReader myRder = mycmd.ExecuteReader();

            if (myRder.Read() == true)  
            {
                //Sauvegarder le RefMembre
                Session["RefM"] = Convert.ToInt32(myRder["RefMembre"]);
                mycon.Close();
                Server.Transfer("recherche.aspx");
            }
            else  
            {
                mycon.Close();
                lblErreur.Text = "Nom d'utilisateur ou Mot De Passe invalide !";
            }
            
        }
    }
}