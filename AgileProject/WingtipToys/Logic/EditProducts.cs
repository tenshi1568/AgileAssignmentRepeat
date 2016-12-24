using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WingtipToys.Models;


namespace WingtipToys.Logic
{
    public class EditProducts
    {
        public Product GetProduct(int id)
        {
            try
            {
                using (var _db = new WingtipToys.Models.ProductContext())
                {
                    Product product = _db.Products.Find(id);
                    return product;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        public string InsertFood(Product product)
        {
            try
            {
                var _db = new WingtipToys.Models.ProductContext();
                _db.Products.Add(product);
                _db.SaveChanges();

                return product.ProductName + " was succesfully inserted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateFood(int id, Product product)
        {
            try
            {
                var _db = new WingtipToys.Models.ProductContext();

                //Fetch object from db
                Product f = _db.Products.Find(id);


                f.ProductName = product.ProductName;
                f.UnitPrice = product.UnitPrice;
                f.CategoryID = product.CategoryID;
                f.Description = product.Description;
                f.ImagePath = product.ImagePath;

                _db.SaveChanges();
                return product.ProductName + " was succesfully updated";

            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}