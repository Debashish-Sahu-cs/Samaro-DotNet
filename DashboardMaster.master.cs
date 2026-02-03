using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int userId = Convert.ToInt32(Session["UserID"]);

        string cs = System.Configuration.ConfigurationManager
                    .ConnectionStrings["SamaroDB"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand(
            "SELECT * FROM Events WHERE UserID=@uid", con);

        cmd.Parameters.AddWithValue("@uid", userId);

        con.Open();
        rpt_events.DataSource = cmd.ExecuteReader();
        rpt_events.DataBind();
        con.Close();
    }
}
