using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjCsAdoProjetFriendbook
{
    public partial class ajouterListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/Friendbook.mdb");
            OleDbConnection mycon = new OleDbConnection(conString);
            mycon.Open();         
            int refAmi = Convert.ToInt32(Request.QueryString["refAmi"]);
            int recupAmi = Convert.ToInt32(Session["RefM"].ToString());
            string sql = "INSERT INTO Amis(refAmi, refMA) VALUES(" + refAmi + "," + recupAmi + ")";
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            mycmd.ExecuteNonQuery();
            mycon.Close();
            Response.Redirect("recherche.aspx");
        }
    }
}