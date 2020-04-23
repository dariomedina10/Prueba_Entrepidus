using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace PROJECT_EMPLOYEES
{
    public class Employee_Context: DbContext
    {
        public DbSet<employees> employees { get; set; }
        public DbSet<users> users { get; set; }
    }
}