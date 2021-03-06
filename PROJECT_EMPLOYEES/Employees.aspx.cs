﻿using System;
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
            //cookie validation

            //Assuming user comes back after several hours. several < 12.
            //Read the cookie from Request.
            //HttpCookie myCookie = Request.Cookies["myCookie"];
            //if ((myCookie == null) && (Session["user"]==null))
            //{
            //    Response.Redirect("index.aspx");
            //    //No cookie found or cookie expired.
            //    //Handle the situation here, Redirect the user or simply return;
            //}

            ////ok - cookie is found.
            ////Gracefully check if the cookie has the key-value as expected.
            //if (!string.IsNullOrEmpty(myCookie.Values["userid"]))
            //{
            //    string userId = myCookie.Values["userid"].ToString();
            //    Response.Redirect("Employees.aspx");
            //}


            if (!IsPostback) 
            {
                Label1.Text = Label1.Text + "   " + Session["user"];
                Label2.Visible = false;
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
                Clean();
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



        public void Clean()
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
            Clean();
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

           
            
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtDate2.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = true;
        }
    }
}