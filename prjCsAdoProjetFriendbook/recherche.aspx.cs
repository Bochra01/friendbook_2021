using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace prjCsAdoProjetFriendbook
{
    public partial class accueil1 : System.Web.UI.Page
    {
        //static OleDbConnection mycon;

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
                    lblInfo.Text = "Bienvenue " + prenom + " " + nom + ", cherchez votre âme soeur ";
                    myRder.Close();
                }

            }
        }

        protected void btnRecherche_Click(object sender, EventArgs e)
        {
            
            string conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/Friendbook.mdb");
            OleDbConnection mycon = new OleDbConnection(conString);
            string recherche = txtRecherche.Text.Trim();
            mycon.Open();
            string sql = "SELECT * FROM Membres WHERE  nom LIKE '%" + recherche + "%' OR prenom LIKE '%" + recherche + "%' OR  age LIKE '%" + recherche + "%' OR sexe LIKE '%" + recherche + "%' OR groupeEthnique LIKE '%" + recherche + "%'  OR raison LIKE '%" + recherche + "%' ";
            
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);

            OleDbDataReader myreader = mycmd.ExecuteReader();

            
           
            while (myreader.Read())
            {
                TableRow myrow = new TableRow();

                /*/*mycell = new TableCell();
                mycell.Text = myreader["photo"].ToString();
                myrow.Cells.Add(mycell);*/

                TableCell mycell = new TableCell();
                mycell.Text = myreader["nom"].ToString();
                myrow.Cells.Add(mycell);

                mycell = new TableCell();
                mycell.Text = myreader["prenom"].ToString();
                myrow.Cells.Add(mycell);

                mycell = new TableCell();
                mycell.Text = myreader["age"].ToString();
                myrow.Cells.Add(mycell);

                mycell = new TableCell();
                mycell.Text = myreader["sexe"].ToString();
                myrow.Cells.Add(mycell);

                mycell = new TableCell();
                mycell.Text = myreader["groupeEthnique"].ToString();
                myrow.Cells.Add(mycell);

                mycell = new TableCell();
                mycell.Text = myreader["raison"].ToString();
                myrow.Cells.Add(mycell);

                //int refAmi = Convert.ToInt32(myreader["refAmi"].ToString());

                mycell = new TableCell();
                mycell.Text = "<a href='ajouterListe.aspx?refAmi=" + myreader["refMembre"] + "'> Ajouter   </a>";
                myrow.Cells.Add(mycell);

                tabRecherche.Rows.Add(myrow);
                
            }

            mycon.Close();

        }
        
    }
}