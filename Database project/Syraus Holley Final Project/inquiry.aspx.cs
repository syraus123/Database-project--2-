using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Syraus_Holley_Final_Project
{
    public partial class add_Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String myConStr = System.Configuration.ConfigurationManager.ConnectionStrings["myCCon"].ConnectionString;
            String mySQL = "INSERT INTO Inquiry (Name, Email, Phone, Location, Message) VALUES (@Name, @Email, @Phone, @Location, @Message)";
            using (SqlConnection myCon = new SqlConnection(myConStr))
            {
                using (SqlCommand myCom = new SqlCommand(mySQL, myCon))
                {
                    myCom.Parameters.AddWithValue("@Name", txtName.Text);
                    myCom.Parameters.AddWithValue("@Email", txtEmail.Text);
                    myCom.Parameters.AddWithValue("@Phone", txtPhone.Text);
                    myCom.Parameters.AddWithValue("@Location", txtLocation.Text);
                    myCom.Parameters.AddWithValue("@Message", txtMessage.Text);
                    myCon.Open();
                    myCom.ExecuteNonQuery();
                    myCon.Close();
                    lblOut.Text = "Inserted";
                    gv1.DataBind();
                }
            }
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}