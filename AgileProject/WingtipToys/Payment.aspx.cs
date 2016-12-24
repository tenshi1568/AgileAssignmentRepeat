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
    public partial class Payment : System.Web.UI.Page
    {


        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["payment_amt"] != null)
            {
                lbltotal.Text = Session["payment_amt"].ToString();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            ProductContext _db = new ProductContext();


            var myOrder = new Order();
            myOrder.OrderDate = DateTime.Today;
            myOrder.Username = User.Identity.Name;
            myOrder.FirstName = TextBox1.Text;
            myOrder.LastName = TextBox2.Text;
            myOrder.Address = TextBox3.Text;
            myOrder.Email = User.Identity.Name;
            myOrder.Total = lbltotal.Text;

            _db.Orders.Add(myOrder);
            _db.SaveChanges();

            using (WingtipToys.Logic.ShoppingCartActions usersShoppingCart = new WingtipToys.Logic.ShoppingCartActions())
            {
                List<CartItem> myOrderList = usersShoppingCart.GetCartItems();

                // Add OrderDetail information to the DB for each product purchased.
                for (int i = 0; i < myOrderList.Count; i++)
                {
                    // Create a new OrderDetail object.
                    var myOrderDetail = new OrderDetail();
                    myOrderDetail.OrderId = myOrder.OrderId;
                    myOrderDetail.Username = User.Identity.Name;
                    myOrderDetail.ProductId = myOrderList[i].ProductId;
                    myOrderDetail.Quantity = myOrderList[i].Quantity;
                    myOrderDetail.UnitPrice = myOrderList[i].Product.UnitPrice;

                    // Add OrderDetail to DB.
                    _db.OrderDetails.Add(myOrderDetail);
                    _db.SaveChanges();
                }
            }
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Insert into   Payments(Date,Username,CardType,CardNo,Amount) values(@Date,@Username,@CardType,@CardNo,@Amount)", conn);
                    
 
                    cmd.Parameters.AddWithValue("@Date", DateTime.Today);
                    cmd.Parameters.AddWithValue("@Username", User.Identity.Name);
                    cmd.Parameters.AddWithValue("@CardType", ddlcardtype.SelectedValue);
                    cmd.Parameters.AddWithValue("@CardNo", txtCardNumber.Text);
                    cmd.Parameters.AddWithValue("@Amount", lbltotal.Text);
                   

                   
                    cmd.ExecuteNonQuery();
           
                    cmd.Dispose();
                    lblStatus.Text = "Thank for your feedback......!";
                }
                catch (SqlException ex)
                {
                    lblStatus.Text = ex.Message;
                }
                finally
                {
                    conn.Close();
                }
            }
        }
    }

        
    