using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace PROJECT_EMPLOYEES
{
    public partial class index : System.Web.UI.Page
    {
        public bool IsPostback { get; private set; }
        private Employee_Context db = new Employee_Context();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostback)
            //{
            //    Label1.Visible = false;
            //}
        }



     

            protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime dateTime = DateTime.UtcNow.Date;
            try
            {

                using (db_employeesEntities2 db = new db_employeesEntities2())
            {
                int j = 0;
                var query1 = from a in db.users
                             where a.user_na.Contains(nick.Text) && a.password.Contains(pass.Text)
                             select a;
                    foreach (var a in query1)
                    {   //implement session user with username
                        Session["user"] = nick.Text; 
                        Response.Redirect("Employees.aspx");
                      //  Response.Cookies.Add(new HttpCookie("user",nick.Text));
                       
                        j = 1;
                    }

                    if (j == 0)
                {
                        Label1.Text = "You have entered the username or password incorrectly, try again";
                    } 

                }

            }
            catch (Exception ex)
            {
                Label1.Visible = true;
                Label1.Text = "Problemas en la conexión" + ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button2.Attributes.Add("onclick", "window.close();");
          //  Response.Write("<script type=\"text/javascript\">window.close();</script>");


        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }
    }
}

//Pais pais = new Pais { Nombre = "Bolivia" };
//Ciudad ciudad = new Ciudad { Nombre = "La Paz" };
//pais.Ciudad.Add(ciudad);
//                context.Pais.AddObject(pais);
//                context.SaveChanges();