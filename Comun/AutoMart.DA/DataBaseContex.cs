using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.EntityFrameworkCore;
using AutoMart.Entity;

namespace AutoMart.DA
{
    public class DataBaseContextDbContext : DbContext
    {
        public DataBaseContextDbContext(DbContextOptions<DataBaseContextDbContext> options)
            : base(options)
        { }

        public DbSet<Categoria> Categoria { get; set; }
        public DbSet<Producto> Producto { get; set; }
        public DbSet<Marca> Marca { get; set; }
        public DbSet<Modelo> Modelo { get; set; }
    }
}
