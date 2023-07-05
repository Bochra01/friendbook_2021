using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjCsAdoProjetFriendbook
{
    public partial class ecriremsg : System.Web.UI.Page
    {
        static OleDbConnection mycon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/Friendbook.mdb");
                mycon = new OleDbConnection(conString);
                mycon.Open();
                int recupAmi = Convert.ToInt32(Session["RefM"].ToString());
                string sql = "SELECT refMembre, nom, prenom FROM (Membres INNER JOIN Amis ON Membres.refMembre = Amis.refAmi) WHERE Amis.refMA =" + recupAmi;

                OleDbCommand mycmd = new OleDbCommand(sql, mycon);
                OleDbDataReader myRder = mycmd.ExecuteReader();

              
                while (myRder.Read())
                {
                    ListItem el = new ListItem();
                    el.Text = myRder["prenom"].ToString() + " " + myRder["nom"].ToString();
                    el.Value = myRder["refMembre"].ToString();
                    cboDestinataire.Items.Add(el);
                }
                myRder.Close();
                mycon.Close();
            }
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            mycon.Open();
            //destinatire selectionné dans combobox
            Int32 refMbDestinataire = Convert.ToInt32(cboDestinataire.SelectedItem.Value);
            string titre = txtTitre.Text.Trim();
            string msg = txtMessage.Text.Trim();
            msg = msg.Replace("'", "\''");
            titre = titre.Replace("'", "\''");
            //celui qui est en train d'envoyer le msg
            Int32 refM = Convert.ToInt32(Session["RefM"]);
            

            string sql = "INSERT INTO Messages (titre,message,destinataire,Envoyeur) VALUES (@tit,@msg,@refDest,@refEnv)";
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);

            mycmd.Parameters.AddWithValue("tit", titre);
            mycmd.Parameters.AddWithValue("msg", msg);
            mycmd.Parameters.AddWithValue("refDest", refMbDestinataire);
            mycmd.Parameters.AddWithValue("refEnv", refM);

            mycmd.ExecuteNonQuery();
            mycon.Close();
            Response.Redirect("accueil.aspx");
        }

        protected void btnRecommencer_Click(object sender, EventArgs e)
        {
            txtTitre.Text = "";
            txtMessage.Text = "";
            txtTitre.Focus();
        }

        protected void cboDestinataire_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}