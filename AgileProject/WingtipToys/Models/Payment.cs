
using System.ComponentModel.DataAnnotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace WingtipToys.Models
{
    public class Payment
    {
         [ScaffoldColumn(false)]
        public int Id { get; set; }
        public System.DateTime Date { get; set; }
        public string Username { get; set; }
        public string CardType { get; set; }
        public string CardNo { get; set; }
        public string Amount { get; set; }
    }
}