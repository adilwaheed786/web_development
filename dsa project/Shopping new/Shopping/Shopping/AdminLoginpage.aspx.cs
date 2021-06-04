using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shopping
{
    public partial class AdminLoginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string id,password;
            id = TextBox1.Text;
            password = TextBox2.Text;
            if (id=="admin"&&password=="admin")
            {
                Session["username"] = TextBox1.Text;
                Response.Redirect("adminviewpage.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "andomtext", "alertme()", true);
            }
        }
    }
}