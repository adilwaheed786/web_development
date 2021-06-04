using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Shopping
{
    public partial class adminviewpage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["AdminTableConnectionString"].ConnectionString;
        string imagepath;
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton lnkLogout = this.Master.FindControl("LinkButton3") as LinkButton;
            lnkLogout.Visible = true;
            LinkButton admin = this.Master.FindControl("LinkButton4") as LinkButton;
            admin.Visible = false;
            LinkButton login = this.Master.FindControl("LinkButton1") as LinkButton;
            login.Visible = false;
            LinkButton sign = this.Master.FindControl("LinkButton2") as LinkButton;
            sign.Visible = false;
            LinkButton user = this.Master.FindControl("LinkButton7") as LinkButton;
            user.Text = "Welcome Dear Admin";
         

        }
        protected void b1_Click(object sender, EventArgs e)
        {
            

                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    f1.SaveAs(Request.PhysicalApplicationPath + "/Product_images/" + f1.FileName.ToString());
                    imagepath = "Product_images/" + f1.FileName.ToString();
                    SqlCommand cmd = new SqlCommand("insert into adminProduct values('" + txt1.Text + "','" + txt2.Text + "','" + txt3.Text + "','" + txt5.Text + "','" + txt4.Text + "','" + imagepath.ToString() + "')", con);
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        ClientScript.RegisterStartupScript(GetType(), "randomtext", "alertme()", true);
                    }
                    clear();
                    con.Close();
                }

                Response.Redirect("adminviewpage.aspx");
          
        }
        public void clear()
        {
            txt1.Text = "";
            txt2.Text = "";
            txt3.Text = "";
            txt4.Text = "";
            txt5.Text = "";
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "randomtext", "alertmedel()", true);     

        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
                ClientScript.RegisterStartupScript(GetType(), "randomtext", "alertmeup()", true);
            

        }
        
    }
    }

    
