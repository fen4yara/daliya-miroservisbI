﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BooksServiceApi.Models
{
    public class Roles
    {
        [Key]
        public int Id_Role { get; set; }
        public string Name { get; set; }
    }
}
