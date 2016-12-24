using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using WingtipToys.Logic;
using System.Configuration;
using System.Data.SqlClient;


namespace WingtipToys
{
    public partial class Contact : Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Insert into Feedbacks(Name,Email,Comments) values(@Name,@Email,@Comments)", conn);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Comments", txtComments.Text);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                LabelStatus.Text = "Thank for your feedback......!";
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