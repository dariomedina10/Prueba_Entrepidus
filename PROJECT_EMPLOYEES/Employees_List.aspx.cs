using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT_EMPLOYEES
{
    public partial class Employees_List : System.Web.UI.Page
    {
        public bool IsPostback { get; private set; }
        private Employee_Context db = new Employee_Context();
        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.Visible = true;

            if (!IsPostback)
            {
                Fill();
            }

          
    } 
        public void Fill()
        {
            //SELECT Titulo FROM dbo.EntradasBlog
            //var selec = from e in sel.EntradasBlogs select e.Titulo;
           // var query = db.employees e select new { identification_card= e.identification_card }.to;

        }
    }
}


