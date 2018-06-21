using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using AutoMart.DA;
using AutoMart.Entity;

namespace AutoMart.API.Products.Controllers
{
    [Route("api/[controller]")]
    public class CategoriaController : Controller
    {
        private readonly DataBaseContextDbContext _context;

        public CategoriaController(DataBaseContextDbContext context)
        {
            _context = context;
        }

        public List<Categoria> Index()
        {
            var categorias = _context.Categoria.ToList();

            return categorias;
        }
    }
}