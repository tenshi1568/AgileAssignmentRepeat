using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




namespace WingtipToys.Admin
{
    public partial class AddFoodCategory : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Insert into Categories(CategoryName,Description) values(@CategoryName,@Description)", conn);
                cmd.Parameters.AddWithValue("@CategoryName", txtName.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                LabelStatus.Text = "Add Food Category successfully......!";
            }
            catch (SqlException ex)
            {
                LabelStatus.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
 