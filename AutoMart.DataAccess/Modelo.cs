﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace AutoMart.DataAccess
{
    public class Modelo
    {
        [Key]
        public int IDModelo { get; set; }
        public string Descripcion { get; set; }
    }
}
