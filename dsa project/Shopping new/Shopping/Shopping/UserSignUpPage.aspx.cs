using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shopping
{
    public partial class UserSignUpPage : System.Web.UI.Page
    {
       // public bool IsPost { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            //if (!IsPostBack)
            //{
            //    Page.ClientScript.RegisterClientScriptBlock(GetType(), "alert", "<script>$(document).ready(function(){ $('.alert-success').hide();$('.alert-danger').hide();});</script>");
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                ClientScript.RegisterStartupScript(this.GetType(), "data[]", "alertme()", true);
                string path = @" C:\Users\Adil\Desktop\dsa project\Shopping new\Shopping\Shopping\datastore\user_signlogin_data.txt";
                string[] db = new string[3];
                db[0] = TextBox1.Text;
                db[1] = TextBox3.Text;
                db[2] = TextBox2.Text;
                StreamWriter w = File.AppendText(path);
                w.WriteLine(db[0] + "," + db[1] + "," + db[2]);
                w.Close();
                //TextBox1.Text = String.Empty;
                //TextBox3.Text = String.Empty;
            }
            catch (Exception ax)
            {
                Response.Write(ax);
               
            }

        }
    }
}