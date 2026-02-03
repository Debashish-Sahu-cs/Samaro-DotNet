using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Samaro
{
    public partial class Contact : System.Web.UI.Page
    {

        string cs = System.Configuration.ConfigurationManager
                        .ConnectionStrings["SamaroDB"].ConnectionString;
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string first = txt_firstName.Text.Trim();
            string last = txt_lastName.Text.Trim();
            string phone = txt_phone.Text.Trim();
            string email = txt_email.Text.Trim();
            string subject = txt_subject.Text.Trim();
            string message = txt_message.Text.Trim();

            using (SqlConnection conn = new SqlConnection(cs))
            {
                string query = @"
                  INSERT INTO ContactMessages
                  (FirstName, LastName, Phone, Email, Subject, MessageText)
                  VALUES
                  (@first, @last, @phone, @email, @subject, @msg)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@first", first);
                cmd.Parameters.AddWithValue("@last", last);
                cmd.Parameters.AddWithValue("@phone", phone);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@subject", subject);
                cmd.Parameters.AddWithValue("@msg", message);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {

        }

        public void home_clicked(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}
