using System.Collections.Generic;
using System.Data.Entity;

namespace WingtipToys.Models
{
  public class ProductDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
  {
    protected override void Seed(ProductContext context)
    {
      GetCategories().ForEach(c => context.Categories.Add(c));
      GetProducts().ForEach(p => context.Products.Add(p));
    }

    private static List<Category> GetCategories()
    {
      var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Rice"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Pasta"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Pizza"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Toast"
                },
                new Category
                {
                    CategoryID = 5,
                    CategoryName = "Beverage"
                },
                 new Category
                {
                    CategoryID = 6,
                    CategoryName = "Your Own Food"
                },
            };

      return categories;
    }

    private static List<Product> GetProducts()
    {
      var products = new List<Product> {
                new Product
                {
                    ProductID = 1,
                    ProductName = "Vegatable Fried Rice",
                    Description = "Rice with vegetable", 
                    ImagePath="vegetablefriedrice.jpg",
                    UnitPrice = 10.99,
                    CategoryID = 1
               },
                new Product 
                {
                    ProductID = 2,
                    ProductName = "Thai Fried Rice",
                    Description = "Rice with spicy thai cili",
                    ImagePath="friedcilithairice.jpg",
                    UnitPrice = 11.99,
                     CategoryID = 1
               },
                new Product
                {
                    ProductID = 3,
                    ProductName = "Pasta Chicken",
                    Description = "Pasta with chicken",
                    ImagePath="PastaChicken.jpg",
                    UnitPrice = 10.99,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 4,
                    ProductName = "Pasta Fish Ball",
                    Description = "Pasta with fish ball",
                    ImagePath="Pastafishball.jpg",
                    UnitPrice = 10.99,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 5,
                    ProductName = "Pizza Hot Dog",
                    Description = "Pizza with hot dog",
                    ImagePath="pizzahotdog.jpg",
                    UnitPrice = 15.99,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 6,
                    ProductName = "Pizza Vegetable",
                    Description = "Pizza with Veegetable",
                    ImagePath="pizzavetable",
                    UnitPrice = 15.99,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 7,
                    ProductName = "Butter Toast",
                    Description = "Toast with butter.",
                    ImagePath="toastbutter.jpg",
                    UnitPrice = 7.99,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 8,
                    ProductName = "Strawberry Toast",
                    Description = "Toast with strawberry",
                    ImagePath="toaststrawberry.jpg",
                    UnitPrice = 7.99,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 9,
                    ProductName = "Lemon Ice",
                    Description = "Lemon with ice",
                    ImagePath="lemonice.jpg",
                    UnitPrice = 7.99,
                    CategoryID = 5
                },
                new Product
                {
                    ProductID = 10,
                    ProductName = "CoCo-cola",
                    Description = "Coco-cola",
                    ImagePath="cococola.jpg",
                    UnitPrice = 7.99,
                    CategoryID = 5
                },
                
            };

      return products;
    }
  }
}