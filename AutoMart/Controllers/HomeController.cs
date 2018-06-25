using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using AutoMart.Models;
using AutoMart.DataAccess;

namespace AutoMart.Controllers
{
    public class HomeController : Controller
    {
        private readonly DataBaseContextDbContext _context;

        public HomeController(DataBaseContextDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            //_context.Categoria.Add(new Categoria { IDCategoria = 0, Descripcion = "ummmm" });
            //_context.SaveChanges();

            var categorias = _context.Categoria.ToList();

            ViewBag.categorias = categorias;

            return View();
        }

        public IActionResult Carrito()
        {

            return View();
        }

        public IActionResult Pago()
        {

            return View();
        }

        [HttpGet]
        public IActionResult ObtenerProductosPorCategoria(int categoria)
        {
            List<Producto> productos = null;
            if (categoria == -1) {
                productos = _context.Producto.ToList();
            } else {
                productos = _context.Producto.Where(p => p.IDCategoria == categoria).ToList();
            }

            foreach (var producto in productos)
            {
                _context.Entry(producto).Reference(p => p.Categoria).Load();
                _context.Entry(producto).Reference(p => p.Marca).Load();
                _context.Entry(producto).Reference(p => p.Modelo).Load();
            }

            return Json(productos);
        }

        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
