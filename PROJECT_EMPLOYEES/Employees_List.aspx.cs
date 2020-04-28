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

        public void Update()
        {
            using (db_employeesEntities2 db = new db_employeesEntities2())
            {
            }
        }


        public void Delete()
        {
            using (db_employeesEntities2 db = new db_employeesEntities2())
            {
            }
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Fill();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Fill();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridView1.EditIndex = -1;
            Fill();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridView1.EditIndex = -1;
            Fill();
        }
    }
}


