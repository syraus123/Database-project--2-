using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Syraus_Holley_Final_Project
{
    public partial class Availability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sds1.SelectParameters.Clear();
            if (txtCheck.Text != "")
            {
                sds1.SelectCommand = "Select Title, InQuantity FROM[Books] WHERE Title LIKE '%' + @Title + '%'";
                sds1.SelectParameters.Add("Title", txtCheck.Text);
                gv1.DataBind();
            }
            else
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void txtCheck_TextChanged(object sender, EventArgs e)
        {

        }
    }
}