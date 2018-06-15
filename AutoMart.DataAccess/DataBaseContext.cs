using System;
using Microsoft.EntityFrameworkCore;

namespace AutoMart.DataAccess
{
    public class DataBaseContextDbContext : DbContext
    {
        public DataBaseContextDbContext(DbContextOptions<DataBaseContextDbContext> options)
            : base(options)
        { }

        public DbSet<Categoria> Categoria { get; set; }
    }
}
