using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace PROJECT_EMPLOYEES
{  //in this class the models for data access 
    //with entity framework are defined


    public class Employee_Context: DbContext
    {
        public DbSet<Employees> employees { get; set; }
        public DbSet<users>users{ get; set; }
    }
}