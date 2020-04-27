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
               
               
            }
        }

       
    }
}