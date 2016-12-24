using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using WingtipToys.Logic;
using System.Diagnostics;
using System.Web.ModelBinding;
using System.Web.Routing;

namespace WingtipToys
{
    public partial class OwnPizza : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void orderButton_Click(object sender, EventArgs e)
        {
            double total = 0.0;

            string size, crust, sauce;
            string topping = "";


            if (smallButton.Checked)
            {
                total = 10.0;
                size = "Size :Small,";
            }
            else if (mediumButton.Checked)
            {
                total = 13.0;
                size = "Size :Medium,";
            }

            else
            {
                total = 16.0;
                size = "Size :Large,";
            }


            if (regularButton.Checked)
            {
                total += 2.0;
                crust = "Crust :Regular,";
            }

            else if (thinButton.Checked)
            {
                total += 4.0;
                crust = "Crust :Thin,";
            }

            else
            {
                total += 6.0;
                crust = "Crust :Thick,";
            }

            if (bbqButton.Checked)
            {
                total += 2.0;
                sauce = "BBQ,";
            }
            else
            {
                total += 1.75;
                sauce = "Pesto,";
            }

            List<String> toppingList = new List<string>();
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    toppingList.Add(item.Value);
                    topping += item.Value + ",";
                    total += 2.0;
                }
            }

            /*      if (pepperoniCheckbox.Checked)
                  {
                      total += 1.5;
                      topping += "Pepperoni,";
                  }
                  else if (hamCheckbox.Checked)
                  {
                      total += 2.0;
                      topping += "Ham,";
                  }
                  else if (freshgarlicCheckbox.Checked)
                  {
                      total += 0.75;
                      topping += "Fresh Garlic,";
                  }
                  else if (onionCheckbox.Checked)
                  {
                      total += 0.75;
                      topping += "Onion";
                  }
                  else if (mushroomCheckbox.Checked)
                  {
                      total += 0.75;
                      topping += "Mushroom,";
                  }
                  else if (baconCheckbox.Checked)
                  {
                      total += 2.0;
                      topping += "Bacon,";
                  }
                  else if (sausageCheckbox.Checked)
                  {
                      total += 1.5;
                      topping += "Sausage";

                  }*/


            /* total = (pepperoniCheckbox.Checked) ? total + 1.5 : total;
             total = (hamCheckbox.Checked) ? total + 2.0 : total;
             total = (greenpepperCheckbox.Checked) ? total + 0.75 : total;
             total = (freshgarlicCheckbox.Checked) ? total + 1.5 : total;
             total = (onionCheckbox.Checked) ? total + 0.75 : total;
             total = (mushroomCheckbox.Checked) ? total + 0.75 : total;
             total = (baconCheckbox.Checked) ? total + 2.0 : total;
             total = (sausageCheckbox.Checked) ? total + 1.5 : total;*/

            resultTotal.Text = total.ToString();
            resulttext.Text = ("Size :" + size + "Crust :" + crust + "Sauce :" + sauce + "Topping :" + topping).ToString();
            Label1.Text = "6";
            Label2.Text = "pizzahotdog.jpg";

            AddProducts products = new AddProducts();
            products.AddProduct("Special :" + foodname.Text , resulttext.Text, resultTotal.Text, Label1.Text, Label2.Text);
            Status.Text = "Your Own Food Create Successfully :)";


            }
    }
}