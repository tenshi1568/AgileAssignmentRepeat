using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.ComponentModel;

namespace WingtipToys.Models
{
  public class Order
  {
    public int OrderId { get; set; }

    public System.DateTime OrderDate { get; set; }

    public string Username { get; set; }

    [Required(ErrorMessage = "First Name is required")]
    [DisplayName("First Name")]
    [StringLength(160)]
    public string FirstName { get; set; }

    [Required(ErrorMessage = "Last Name is required")]
    [DisplayName("Last Name")]
    [StringLength(160)]
    public string LastName { get; set; }

    [Required(ErrorMessage = "Address is required")]
    [StringLength(70)]
    public string Address { get; set; }
    public string City { get; set; }
  
    public string State { get; set; }

   
    public string PostalCode { get; set; }

  
    public string Country { get; set; }

    [StringLength(24)]
    public string Phone { get; set; }

    public string Email { get; set; }

    [ScaffoldColumn(false)]
    public string Total { get; set; }

    [ScaffoldColumn(false)]
    public string PaymentTransactionId { get; set; }

    [ScaffoldColumn(false)]
    public bool HasBeenShipped { get; set; }

    public List<OrderDetail> OrderDetails { get; set; }
  }
}