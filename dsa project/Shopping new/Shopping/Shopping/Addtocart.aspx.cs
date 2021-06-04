using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Shopping
{
    
    public partial class Addtocart : System.Web.UI.Page
    {
        Queue<string> ss = new Queue<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                string path = @" C:\Users\Adil\Desktop\dsa project\Shopping new\Shopping\Shopping\datastore\user_signlogin_data.txt";
                StreamReader sre = new StreamReader(path);
                string lines;
                string[] data;
                string id;
                for (int i = 0; i < 5; i++)
                {
                    lines = sre.ReadLine();
                    data = lines.Split(',');
                    id = data[0];
                    ss.Enqueue(id);
                }
                sre.Close();

                LinkButton lnkLogout = this.Master.FindControl("LinkButton3") as LinkButton;
                lnkLogout.Visible = true;
                LinkButton admin = this.Master.FindControl("LinkButton4") as LinkButton;
                admin.Visible = false;
                LinkButton login = this.Master.FindControl("LinkButton1") as LinkButton;
                login.Visible = false;
                LinkButton sign = this.Master.FindControl("LinkButton2") as LinkButton;
                sign.Visible = false;

                if (Session["username"] != null)
                {
                    LinkButton user = this.Master.FindControl("LinkButton7") as LinkButton;
                    user.Text = "Welcome " + Session["username"];
                }
                if (!IsPostBack)
                {

                    DataTable dt = new DataTable();
                    DataRow dr;
                    dt.Columns.Add("sno");
                    dt.Columns.Add("productid");
                    dt.Columns.Add("productname");
                    dt.Columns.Add("price");
                    dt.Columns.Add("productimage");
                    dt.Columns.Add("quantity");
                    dt.Columns.Add("totalprice");
                    if (Request.QueryString["id"] != null)
                    {

                        if (Session["Buyitems"] == null)
                        {

                            dr = dt.NewRow();
                            String mycon = "Data Source=DESKTOP-7BNIILF\\SQLEXPRESS;Initial Catalog=AdminTable;Integrated Security=True";
                            SqlConnection scon = new SqlConnection(mycon);
                            String myquery = "select * from adminProduct where id=" + Request.QueryString["id"];
                            SqlCommand cmd = new SqlCommand();
                            cmd.CommandText = myquery;
                            cmd.Connection = scon;
                            SqlDataAdapter da = new SqlDataAdapter();
                            da.SelectCommand = cmd;
                            DataSet ds = new DataSet();
                            da.Fill(ds);
                            dr["sno"] = 1;
                            dr["productid"] = ds.Tables[0].Rows[0]["id"].ToString();
                            dr["productname"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                            dr["productimage"] = ds.Tables[0].Rows[0]["product_images"].ToString();
                            dr["quantity"] = Request.QueryString["quantity"];
                            dr["price"] = ds.Tables[0].Rows[0]["product_price"].ToString();
                            int price = Convert.ToInt32(ds.Tables[0].Rows[0]["product_price"].ToString());
                            int quantity = Convert.ToInt32(Request.QueryString["quantity"]);
                            int totalprice = price * quantity;
                            dr["totalprice"] = totalprice;

                            dt.Rows.Add(dr);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                            Session["buyitems"] = dt;
                            GridView1.FooterRow.Cells[1].Text = "Discount 0 %";
                            GridView1.FooterRow.Cells[3].Text = "Sub ToTal";
                            GridView1.FooterRow.Cells[4].Text = "$" + grandtotal().ToString();
                            GridView1.FooterRow.Cells[6].Text = "Tax 5 %=$" + tax();
                            if (ss.Peek() == Session["username"].ToString())
                            {
                                GridView1.FooterRow.Cells[1].Text = "Discount 10 %";
                                Label2.Text = "Grand Total=$" + ((grandtotal() + tax()) - discount());
                            }
                            else
                            {
                                Label2.Text = "Grand Total==$" + (grandtotal() + tax());
                            }

                            Response.Redirect("Addtocart.aspx");
                        }
                        else
                        {
                            dt = (DataTable)Session["buyitems"];
                            int sr;
                            sr = dt.Rows.Count;
                            dr = dt.NewRow();
                            String mycon = "Data Source=DESKTOP-7BNIILF\\SQLEXPRESS;Initial Catalog=AdminTable;Integrated Security=True";
                            SqlConnection scon = new SqlConnection(mycon);
                            String myquery = "select * from adminProduct where id=" + Request.QueryString["id"];
                            SqlCommand cmd = new SqlCommand();
                            cmd.CommandText = myquery;
                            cmd.Connection = scon;
                            SqlDataAdapter da = new SqlDataAdapter();
                            da.SelectCommand = cmd;
                            DataSet ds = new DataSet();
                            da.Fill(ds);
                            dr["sno"] = sr + 1;
                            dr["productid"] = ds.Tables[0].Rows[0]["id"].ToString();
                            dr["productname"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                            dr["productimage"] = ds.Tables[0].Rows[0]["product_images"].ToString();
                            dr["quantity"] = Request.QueryString["quantity"];
                            dr["price"] = ds.Tables[0].Rows[0]["product_price"].ToString();
                            int price = Convert.ToInt32(ds.Tables[0].Rows[0]["product_price"].ToString());
                            int quantity = Convert.ToInt32(Request.QueryString["quantity"]);
                            int totalprice = price * quantity;
                            dr["totalprice"] = totalprice;
                            dt.Rows.Add(dr);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                            Session["buyitems"] = dt;
                            GridView1.FooterRow.Cells[1].Text = "Discount 0 %";
                            GridView1.FooterRow.Cells[3].Text = "Sub ToTal ";
                            GridView1.FooterRow.Cells[4].Text = "$" + grandtotal().ToString();
                            GridView1.FooterRow.Cells[6].Text = "Tax 5 %=$" + tax();
                            if (ss.Peek() == Session["username"].ToString())
                            {
                                GridView1.FooterRow.Cells[1].Text = "Discount 10 %";
                                Label2.Text = "Grand Total=$" + ((grandtotal() + tax()) - discount());
                            }
                            else
                            {
                                Label2.Text = "Grand Total==$" + (grandtotal() + tax());
                            }
                            Response.Redirect("Addtocart.aspx");
                        }
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        if (GridView1.Rows.Count > 0)
                        {
                            GridView1.FooterRow.Cells[1].Text = "Discount 0 %";
                            GridView1.FooterRow.Cells[3].Text = "Sub ToTal";
                            GridView1.FooterRow.Cells[4].Text = "$" + grandtotal().ToString();
                            GridView1.FooterRow.Cells[6].Text = "Tax 5 %=$" + tax();
                            if (ss.Peek() == Session["username"].ToString())
                            {
                                GridView1.FooterRow.Cells[1].Text = "Discount 10 %";
                                Label2.Text = "Grand Total=$" + ((grandtotal() + tax()) - discount());
                            }
                            else
                            {
                                Label2.Text = "Grand Total==$" + (grandtotal() + tax());
                            }
                        }

                    }
                    Label1.Text = GridView1.Rows.Count.ToString();


                }
            }
            
            catch (Exception ax)
            {
                Response.Write(ax);

            }

}

        public double grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            double gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i++;
            }
            return gtotal;
        }
        public double tax()
        {
            double a = grandtotal();
            double tax;
            tax = a *(0.05);
            return tax;
        }
        public double discount()
        {
            double a = grandtotal();
            double dicount;
            dicount = a * (0.10);
            return dicount;
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            

        }
       
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {

                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Labell.Text = "Item Has Been Deleted From Shopping Cart
                    break;
                }
            }
            for (int i = 1; i <=dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("Addtocart.aspx");
        } 
        protected void Button1_Click(object sender, EventArgs e)
        {
            ss.Dequeue();
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            dt.Clear();
            GridView1.DataSource = null;
            GridView1.DataBind();
            Label1.Text = "0";
            Label2.Text = null;
            //Response.Redirect("Home.aspx");

        }
        protected void GridView1_RowCreated1(object sender, GridViewRowEventArgs e)
        {
          
        }
      
    }
} 