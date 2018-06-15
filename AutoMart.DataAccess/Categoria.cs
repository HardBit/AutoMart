using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace AutoMart.DataAccess
{
    public class Categoria
    {
        [Key]
        public int IDCategoria { get; set; }
        public string Descripcion { get; set; }
    }
}
