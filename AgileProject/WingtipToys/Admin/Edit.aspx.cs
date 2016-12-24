using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using WingtipToys.Logic;
using System.Web.ModelBinding;
using System.Collections;
using System.IO;

namespace WingtipToys.Admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var _db = new ProductContext();
            if (!IsPostBack)
            {


                string selectedValue = ddlImage.SelectedValue;
                ShowImages();
                ddlImage.SelectedValue = selectedValue;

                if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    FillForm(id);
                }

            }


        }
        private void FillForm(int id)
        {
            try
            {

                EditProducts editproduct = new EditProducts();
              

               Product product= editproduct.GetProduct(id);

               txtDescription.Text = product.Description;
               txtName.Text = product.ProductName;
               txtPrice.Text = product.UnitPrice.ToString();

               ddlImage.SelectedValue = product.ImagePath;
               ddlType.SelectedIndex = Convert.ToInt32(product.CategoryID.ToString());
            }
            catch (Exception ex)
            {
                LabelStatus.Text = ex.ToString();
            }
        }

        
        private void ShowImages()
        {
            //Get all filepaths
            string[] images = Directory.GetFiles(Server.MapPath("~/Catalog/Images/"));

            //Get all filenames and add them to an arraylist
            ArrayList imageList = new ArrayList();

            foreach (string image in images)
            {
                string imageName = image.Substring(image.LastIndexOf(@"\") + 1);
                imageList.Add(imageName);
            }

            //Set the arrayList as the dropdownview's datasource and refresh
            ddlImage.DataSource = imageList;
            ddlImage.DataBind();
        }



        protected void btnEdit_Click(object sender, EventArgs e)
        {

            var _db = new ProductContext();

            btnEdit.OnClientClick = "Confirm()";
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked YES!')", true);
               
                EditProducts editproduct = new EditProducts();
                Product product = CreateFood();

                if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    LabelStatus.Text = editproduct.UpdateFood(id, product);
                }
                else
                {
                    LabelStatus.Text = editproduct.InsertFood(product);
                }

                Response.Redirect("~/Admin/EditList.aspx");
            }
            else
            {

            }


        }


        protected void btnUploadImage_Click(object sender, EventArgs e)
        {
            try
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/Images/") + filename);
                LabelStatus.Text = "Image " + filename + " succesfully uploaded!";
                Page_Load(sender, e);
            }
            catch (Exception)
            {
                LabelStatus.Text = "Upload failed!";
            }
        }

        private Product CreateFood()
        {
            Product product = new Product();


            product.ProductName = txtName.Text;
            product.UnitPrice = Convert.ToDouble(txtPrice.Text);
            product.CategoryID = Convert.ToInt32(ddlType.SelectedValue);
            product.Description = txtDescription.Text;
            product.ImagePath = ddlImage.SelectedValue;

            return product;
        }
    }

}