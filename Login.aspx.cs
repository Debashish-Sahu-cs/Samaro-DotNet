using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Samaro
{
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txt_email_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txt_email.Text;
            string password = txt_password.Text;

            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["SamaroDB"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);

            string selectyQuery = "SELECT Count(*) FROM Users Where Email = @email AND PasswordHash= @password ";

            SqlCommand cmd = new SqlCommand(selectyQuery, conn);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@password", password);

            conn.Open();
            int count = (int)cmd.ExecuteScalar();
            conn.Close();

            if (count > 0)
            {
                Session["email"] = email;
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                lbl_msg.Text = "Invalid login cradantials";
            }


        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txt_email.Text = "";
            txt_password.Text = "";

            txt_email.Focus();
        }
    }
}