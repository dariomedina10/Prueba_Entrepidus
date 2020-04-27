using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PROJECT_EMPLOYEES
{
    public partial class Employees : System.Web.UI.Page
    {

        public bool IsPostback { get; private set; }
        private Employee_Context db = new Employee_Context();
        public bool flag;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostback) 
            {
                
                Label1.Text = Label1.Text + "   " + Session["user"];
                //id.Text = "V-";
                //TextBox3.Text = "1234-";
                Label2.Visible = false;
             
                //TextBox3.Visible = false;
                  }
        }

        protected void Radio1_CheckedChanged(object sender, EventArgs e)
        {
            Radio2.Checked = false;
            flag = true;
            //TextBox3.Visible = true;
        }

        protected void Radio2_CheckedChanged(object sender, EventArgs e)
        {
            Radio1.Checked = false;
            flag = false;
            TextBox5.Text = "0";
        }


        void Add_Employees()
        {
            // crear objetos del tipo Articulo
            var emp = new employees()
            {
                identification_card = "V-" + id.Text,
                name=TextBox7.Text,
                last_name = TextBox2.Text,
                adress =TextBox1.Text,
                email = TextBox4.Text,
                phone = "1234-" + TextBox3.Text,
                contract_date_from =Convert.ToDateTime (txtDate.Text),
                date_of_birth  = txtDate2.Text,
                freelace =flag,
                hourly_rate = Convert.ToDecimal (TextBox5.Text)
            };

             using (db_employeesEntities2 db = new db_employeesEntities2())
            {
                //    // Add employees to DbSet
                db.employees.Add(emp);
                db.SaveChanges();
                Label2.Visible = true;
                Label2.Text = "!!!Successfull Record!!!";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                  Add_Employees();
                db.SaveChanges();
                Limpiar();
                   // Label2.Visible = false;
            }

            catch (Exception ex)
            {
                Label2.Visible = true;
                Label2.Text = "Have problems adding employees" + ex.Message;
            }

            Label1.Text = "";
            Label1.Text = "Welcome" + "   " + Session["user"];
             TextBox3.Text = "";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("hola");
        }



        public void Limpiar()
        {
           id.Text = "";
           TextBox7.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            
            txtDate.Text = "";
            txtDate2.Text = "";
            TextBox3.Text = "";
            Radio1.Checked = false;
            Radio2.Checked = false;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void id_TextChanged(object sender, EventArgs e)
        {
           // id.Text += id.Text;
        }

       
        protected void Calendar1_SelectionChanged2(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = true;
            Label1.Text = "Welcome" + "   " + Session["user"];

            //if (id.Text == "V-")
            //{
            //    id.Text = "";
            //    id.Text = "V-";
            //}else
            //{
            //    String tmp;
            //    tmp = id.Text;
            //    id.Text = "";
            //    id.Text = tmp;
            //}


            //if (TextBox3.Text == "1234-")
            //{
            //    TextBox3.Text = "";
            //    TextBox3.Text = "1234-";
            //}
            //else
            //{
            //    String tmp2;
            //    tmp2 = TextBox3.Text;
            //    TextBox3.Text = "";
            //    TextBox3.Text = tmp2;
            //}

            //id.Text = id.Text;
            //TextBox3.Text = TextBox3.Text;
            
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtDate2.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = true;
        }
    }
}