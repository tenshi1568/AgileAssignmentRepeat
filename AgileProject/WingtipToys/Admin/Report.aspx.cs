using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace WingtipToys.Admin
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT OrderId, OrderDate, FirstName, LastName,Address,City FROM Orders WHERE OrderDate BETWEEN @From AND @To", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        cmd.Parameters.AddWithValue("@From", Convert.ToDateTime(this.txtFrom.Text, new CultureInfo("ms-MY")));
                        cmd.Parameters.AddWithValue("@To", Convert.ToDateTime(this.txtTo.Text, new CultureInfo("ms-MY")));
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                }
            }
        }
    }
}
    