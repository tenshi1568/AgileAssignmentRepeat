using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using System.Web.Routing;
using WingtipToys.Models;

namespace WingtipToys.Admin
{
    public partial class EditList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grdProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("ShowProduct.aspx?Textboxvalue=" + grdProduct.SelectedRow.Cells[1].Text);
        }
    }
}