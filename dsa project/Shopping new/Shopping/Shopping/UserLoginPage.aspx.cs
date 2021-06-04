using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Services.Description;

namespace Shopping
{
    public partial class UserLoginPage : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string path = @" C:\Users\Adil\Desktop\dsa project\Shopping new\Shopping\Shopping\datastore\user_signlogin_data.txt";
                StreamReader sr = new StreamReader(path);
                string lines;
                string[] data;
                string id;
                string ps;
                while ((lines = sr.ReadLine()) != null)
                {
                    data = lines.Split(',');
                    id = data[0];
                    ps = data[2];
                    if (id == TextBox1.Text && ps == TextBox2.Text)
                    {
                            Session["username"] = TextBox1.Text;
                            Response.Redirect("loginviewpage.aspx");
                         //ClientScript.RegisterStartupScript(this.GetType(), "andomtext", "alertme()", true);
                    }
                }
                ClientScript.RegisterStartupScript(GetType(), "andomtext", "alertmewrong()", true);
                sr.Close();
            }
            catch (Exception ea)
            {
                Response.Write(ea.Message);
            }
           


        }
    }
}