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

            }
        }


        void Add_Users()
        {
            // crear objetos del tipo Articulo
            var usu = new users()
            {
                name = name.Text,
                last_name = Last_Name.Text,
                user_na = nick.Text,
                password = nick.Text
             
             
            };

            using (db_employeesEntities1 db = new db_employeesEntities1())
            {
                //    // Add employees to DbSet
                db.users.Add(usu);
                db.SaveChanges();
                Label2.Visible = true;
                Label2.Text = "!!!Successfull Record!!!";
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
                Limpiar();
                Label2.Visible = false;
            }

            catch (Exception ex)
            {
                Label1.Visible = true;
                Label1.Text = "Have problems adding user" + ex.Message;
            }
        }
    }
}