using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace prjCsAdoProjetFriendbook
{
    public partial class inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnInscrire_Click(object sender, EventArgs e)
        {
            string nom = txtNom.Text.Trim();
            string prenom = txtPrenom.Text.Trim();
            int age = Convert.ToInt32(txtAge.Text.Trim());
            string sexe = txtSexe.Text.Trim();
            string grpethnique = txtGrpEthnique.Text.Trim();
            string raison = txtRaison.Text.Trim();
            string username = txtUtilisateur.Text.Trim();
            string mdp = txtMdp.Text.Trim();
            

            string conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/Friendbook.mdb");
            OleDbConnection mycon = new OleDbConnection(conString);
            mycon.Open();

            string sql = "SELECT username,nom FROM Membres WHERE username = @usern AND nom = @nom";
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            mycmd.Parameters.AddWithValue("usern", username);
            mycmd.Parameters.AddWithValue("passw", mdp);
            OleDbDataReader myRder = mycmd.ExecuteReader();
            if (myRder.HasRows == true)  //if (myRder.Read()==true)   //deja membre
            {
                lblErreur.Text = "Vous êtes déjà membre, connectez vous directement !";
                mycon.Close();
            }
            else
            {
                sql = "INSERT INTO Membres([nom], [prenom], [age], [sexe], [groupeEthnique], [raison], [username], [password]) VALUES (@n, @pre, @a, @s, @grp, @r, @u, @pwd)";
                mycmd = new OleDbCommand(sql, mycon);
                mycmd.Parameters.AddWithValue("n", nom);
                mycmd.Parameters.AddWithValue("pre", prenom);
                mycmd.Parameters.AddWithValue("a", age);
                mycmd.Parameters.AddWithValue("s", sexe);
                mycmd.Parameters.AddWithValue("grp", grpethnique);
                mycmd.Parameters.AddWithValue("r", raison);
                mycmd.Parameters.AddWithValue("u", username);
                mycmd.Parameters.AddWithValue("pwd", mdp);
               
                mycmd.ExecuteNonQuery();
                mycon.Close();
                Server.Transfer("index.aspx");               
            }
        }
    }
}