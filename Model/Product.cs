using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication21.Model
{
    public class Product
    {
        public int mid { get; set; }
        public string mname { get; set; }
        public float mprice { get; set; }
        public int quantity  { get; set; }

        public string info { get; set; }

        public int c_id { get; set; }

        public string img_link { get; set; }
    }
}