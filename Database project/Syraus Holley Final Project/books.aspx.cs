using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Syraus_Holley_Final_Project
{
    public partial class add_members : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String myConStr = System.Configuration.ConfigurationManager.ConnectionStrings["myCCon"].ConnectionString;
            String mySQL = "INSERT INTO Books (Title, Genre, Author, Year, Price, Bestsellers, InQuantity) VALUES (@Title, @Genre, @Author, @Year, @Price, @Bestsellers, @InQuantity)";
            using (SqlConnection myCon = new SqlConnection(myConStr))
            {
                using (SqlCommand myCom = new SqlCommand(mySQL,myCon))
                {
                    myCom.Parameters.AddWithValue("@Title", txtTitle.Text);
                    myCom.Parameters.AddWithValue("@Year", txtYear.Text);
                    myCom.Parameters.AddWithValue("@Price", txtPrice.Text);
                    myCom.Parameters.AddWithValue("@Author", txtAuthor.Text);
                    myCom.Parameters.AddWithValue("@InQuantity", txtQuantity.Text);
                    myCom.Parameters.AddWithValue("@Genre", ddlGenre.SelectedValue);
                    myCom.Parameters.AddWithValue("@Bestsellers", ddlBest.SelectedValue);
                    myCon.Open();
                    myCom.ExecuteNonQuery();
                    myCon.Close();
                    lblOut.Text = "Inserted";
                    gv1.DataBind();
                }
            }


        }

        protected void sds1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void txtQuantity_TextChanged(object sender, EventArgs e)
        {

        }
    }
}