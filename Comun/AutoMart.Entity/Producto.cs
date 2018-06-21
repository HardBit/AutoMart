using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace AutoMart.Entity
{
    public class Producto
    {
        [Key]
        public int IDProducto { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public double Precio { get; set; }
        //[ForeignKey("Marca")]
        //public Marca Marca { get; set; }
        //[ForeignKey("Modelo")]
        //public Modelo Modelo { get; set; }
        [ForeignKey("Categoria")]
        public int IDCategoria { get; set; }
        public virtual Categoria Categoria { get; set; }
        public int Año { get; set; }
    }
}
