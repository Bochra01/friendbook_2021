using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjCsAdoProjetFriendbook
{
    public partial class listeAmis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/Friendbook.mdb");
            OleDbConnection mycon = new OleDbConnection(conString);
            mycon.Open();

           
          
            int recupAmi = Convert.ToInt32(Session["RefM"].ToString());
         
            string sql = "SELECT Membres.* FROM (Membres INNER JOIN Amis ON Membres.refMembre = Amis.refAmi) WHERE Amis.refMA=" + recupAmi;

            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader myreader = mycmd.ExecuteReader();
   
          
            while (myreader.Read())
            {
                TableRow myrow = new TableRow();


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

                tabAmis.Rows.Add(myrow);

            }

            mycon.Close();

            
        }
    }
}