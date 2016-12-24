using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using WingtipToys.Logic;
using System.Web.ModelBinding;

namespace WingtipToys.Admin
{
    public partial class ShowProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblID.Text = Request.QueryString["Textboxvalue"];


            var _db = new ProductContext();
            int value = Convert.ToInt32(lblID.Text);

            var food = (from z in _db.Products
                        where z.ProductID == value
                        select z

                          ).FirstOrDefault();

            lblName.Text = food.ProductName.ToString();
            lblPrice.Text = food.UnitPrice.ToString();
            lblDes.Text = food.Description.ToString();
            lblImage.Text = food.ImagePath.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx?Textboxvalue=" + lblID.Text);
        }
    }
}

 