using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Samaro
{
    public partial class Registration : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["SamaroDB"].ConnectionString;
        protected void btn_register_Click(object sender, EventArgs e)
        {
            string name = txt_name.Text.Trim();
            string email = txt_email.Text.Trim();
            string password = txt_password.Text.Trim();

            SqlConnection conn = new SqlConnection(cs);

            // Step 1: Check if user already exists
            string checkQuery = "SELECT COUNT(*) FROM Users WHERE Email=@email";
            SqlCommand checkCmd = new SqlCommand(checkQuery, conn);
            checkCmd.Parameters.AddWithValue("@email", email);

            conn.Open();
            int exists = (int)checkCmd.ExecuteScalar();
            conn.Close();

            if (exists > 0)
            {
                lbl_msg.Text = "Email already registered.";
                return;
            }

            // Step 2: Insert new user
            string insertQuery = "INSERT INTO Users (FullName, Email, PasswordHash) VALUES (@name, @email, @password)";
            SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
            insertCmd.Parameters.AddWithValue("@name", name);
            insertCmd.Parameters.AddWithValue("@email", email);
            insertCmd.Parameters.AddWithValue("@password", password);

            conn.Open();
            insertCmd.ExecuteNonQuery();
            conn.Close();

            // Step 3: Create session
            Session["email"] = email;

            // Step 4: Redirect to HomePage
            Response.Redirect("HomePage.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

        }
    }
}
