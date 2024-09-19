using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Item : System.Web.UI.Page
{
    public static TimeZoneInfo timeZoneInfo = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    public static DateTime dateTime;
    Class1 cl = new Class1();
    Cls_connection cls = new Cls_connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        dateTime = TimeZoneInfo.ConvertTime(DateTime.Now, timeZoneInfo);
        if (!IsPostBack)
        {
            txtsku.Text = cl.Scalar("select isnull(max(sku), 0) + 1 as sku from ItemMaster");
            txtsku.ReadOnly = true;
            binditemdetail();
        }        
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        if(btnsave.Text=="Save")
        {
            string sku = cl.Scalar("select isnull(max(sku), 0) + 1 as sku from ItemMaster");
            if(sku==txtsku.Text)
            {
                string ins = "insert into itemMaster(sku,itemname,insdate,instime) values('"+txtsku.Text+"','"+txtitemname.Text+"','"+dateTime.ToString("yyyy-MM-dd")+"','"+dateTime.ToString("hh:mm:ss tt")+"')";
                cl.execute(ins);
                Response.Write("<script language='javascript'>window.alert('Record Saved Successfully !!');window.location=('Item.aspx');</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('Please Press F5 Button Then Save Item !!');window.location=('Item.aspx');</script>");
            }
        }
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("Item.aspx");
    }
    public void binditemdetail()
    {
        string query = "select sku,itemname from itemmaster order by id";
        SqlDataAdapter sda = new SqlDataAdapter(query,cls.con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if(dt.Rows.Count>0)
        {
            gridview.DataSource = dt;
            gridview.DataBind();
        }
    }
}