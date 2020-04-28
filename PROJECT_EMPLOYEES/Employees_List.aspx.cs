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
            using (db_employeesEntities2 db = new db_employeesEntities2())
            {

                try
                {
                    var query1 = (from e in db.employees
                    select new
          { e.identification_card, e.name, e.last_name, e.email }).ToList();
                    GridView1.DataSource = query1;
                    GridView1.DataBind();
                }

                catch (Exception ex)
                {
                    Response.Write (ex.Message);
                }

                //SELECT Titulo FROM dbo.EntradasBlog
                //var selec = from e in sel.EntradasBlogs select e.Titulo;
                // var query = db.employees e select new { identification_card= e.identification_card }.to;
            }
        }

   
     

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                GridView1.PageIndex = e.NewPageIndex;

                GridView1.DataBind();

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        //protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        //{
        //    
        //}

        //protected void GridView1_PageIndexChanging((ByVal sender As Object, ByVal e As GridViewPageEventArgs)
        //{

        //    this.GridView1.PageIndex = e.NewPageIndex;

        //    this.GridView1.DataBind();
        //}
    }
}


