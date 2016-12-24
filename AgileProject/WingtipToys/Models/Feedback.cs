using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace WingtipToys.Models
{
    public class Feedback
    {
         [ScaffoldColumn(false)]
        public string ID { get; set; }
        public string Name{ get; set; }
        public string Email{ get; set; }
        public string Comments{ get; set; }


    }
}