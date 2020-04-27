using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT_EMPLOYEES
{
    public partial class Users : System.Web.UI.Page
    {

        public bool IsPostback { get; private set; }
        private Employee_Context db = new Employee_Context();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostback)
            {

                Label1.Text = Label1.Text + "   " + Session["user"];
                Label2.Visible = false;
                Label4.Visible = false;

            }
        }


        void Add_Users()
        {
            // crear objetos del tipo Articulo
            var usu = new users()
            {
                user_na = nick.Text,
                password = nick.Text,
                name = name.Text,
                last_name = Last_Name.Text
               
              
            };

            using (db_employeesEntities2 db = new db_employeesEntities2())
            {
                //    // Add employees to DbSet
                db.users.Add(usu);
                db.SaveChanges();
                Label2.Visible = true;
                Label2.Text = "!!!Successfull Record!!!";
                Label4.Text = "";
                Limpiar();
            }
        }

        public void Limpiar()
        {
            name.Text = "";
            Last_Name.Text = "";
            nick.Text = "";
            pass.Text = "";
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Add_Users();
                db.SaveChanges();
                Limpiar();
            
            }

            catch (Exception ex)
            {
                Label4.Visible = true;
                Label4.Text = "Have problems adding user" + ex.Message;
            }

            Label1.Text = "";
            Label1.Text = "Welcome" + "   " + Session["user"];
        }
    }
}