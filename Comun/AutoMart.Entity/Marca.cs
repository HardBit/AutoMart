﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace AutoMart.Entity
{
    public class Marca
    {
        [Key]
        public int IDMarca { get; set; }
        public string Descripcion { get; set; }
    }
}
