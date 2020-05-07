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


        public void Update(String id, String name, String Last_name, String email)
        {
            int j = 0;
            using (db_employeesEntities2 db = new db_employeesEntities2())
            {
                
                db.update_employees(id, name, Last_name, email);
                db.SaveChanges();

                //var query = (from e in db.employees
                //             where e.identification_card.Contains(id)
                //             select e);


                //           foreach (var e in query)
                //           {
                //               j = 1;
                //           }


                //if (j == 1) {
                //               var emp = new employees()
                //               {

                //                   name = name,
                //                   last_name = Last_name,
                //                   email = email

                //               };

                //               db.employees.Add(emp);
                //              
                //           }

            }
        }


        public void Delete(String id)
        {
            int j = 0;
            using (db_employeesEntities2 db = new db_employeesEntities2()) 
          {

              

              //implementing data access with entity framework and stores procedures  
                db.delete_employees(id);

                //var query = (from e in db.employees
                //             where e.identification_card.Contains(id)
                //             select e).Single();

                // db.DeleteObject(query);
                db.SaveChanges();
                //    }

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

            GridViewRow row = GridView1.Rows[e.RowIndex];
            string id = ((TextBox)(row.Cells[2].Controls[0])).Text ;
            string name = ((TextBox)(row.Cells[3].Controls[0])).Text; ;
            string lastname = ((TextBox)(row.Cells[4].Controls[0])).Text;
            string email = ((TextBox)(row.Cells[5].Controls[0])).Text; ;
            Update(id, name, lastname,email );
            GridView1.EditIndex = -1;
            Fill();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.Rows[e.RowIndex].Cells[2].Text;

          

            Delete(id);
            GridView1.EditIndex = -1;
            Fill();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // LinkButton objDelete = e.Row.Cells[2].Controls[0] as LinkButton; objDelete.Attributes.Add("onclick", "javascript:return confirm('Do you want to delete this item?');");

        //    if (e.Row.RowType == DataControlRowType.DataRow)
        ////    {
        //   LinkButton Lb = 

        //           Lb.Attributes.Add("onclick", "javascript:return confirm('¿Está seguro de que desea eliminar el registro con ID=" + DataBinder.Eval(e.Row.DataItem, "id") + "?')");
        //       }

        }

        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        LinkButton Lb = 

        //        Lb.Attributes.Add("onclick", "javascript:return confirm('¿Está seguro de que desea eliminar el registro con ID=" + DataBinder.Eval(e.Row.DataItem, "id") + "?')");
        //    }
        //}
    }
}


