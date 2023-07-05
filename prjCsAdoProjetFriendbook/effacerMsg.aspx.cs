using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjCsAdoProjetFriendbook
{
    public partial class effacerMsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/Friendbook.mdb");
            OleDbConnection mycon = new OleDbConnection(conString);
            mycon.Open();

            // Recuperer le refMessage qui a été envoyé par le lien effacer de la page accueil 
            int refMsg = Convert.ToInt32(Request.QueryString["refm"]);

            // Effacer la valeur de nouveau du message deja lu
            string sql = "DELETE FROM Messages WHERE refMessage=" + refMsg;
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            mycmd.ExecuteNonQuery();
            mycon.Close();
            Response.Redirect("accueil.aspx");
        }
    }
}