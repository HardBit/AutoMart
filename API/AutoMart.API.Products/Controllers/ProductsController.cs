using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using AutoMart.DA;
using AutoMart.Entity;

namespace AutoMart.API.Products.Controllers
{
    
    public class ProductsController : Controller
    {
        private readonly DataBaseContextDbContext _context;

        public ProductsController(DataBaseContextDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        [Route("api/products/getByCategory/{categoria}")]
        public List<Producto> ObtenerProductosPorCategoria(int categoria)
        {
            List<Producto> productos = null;
            if (categoria == -1)
            {
                productos = _context.Producto.ToList();
            }
            else
            {
                productos = _context.Producto.Where(p => p.IDCategoria == categoria).ToList();
            }

            foreach (var producto in productos)
            {
                _context.Entry(producto).Reference(p => p.Categoria).Load();
                _context.Entry(producto).Reference(p => p.Marca).Load();
                _context.Entry(producto).Reference(p => p.Modelo).Load();
            }

            return productos;
        }
    }
}