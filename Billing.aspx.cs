using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Billing : System.Web.UI.Page
{
    Class1 cl = new Class1();
    Cls_connection cls = new Cls_connection();
    DataTable sdt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindparticulars();
            tctbillindex.Text = cl.Scalar("select isnull(max([index]), 0) + 1 as [index] from Billing");
            txtbill.Text = "S0" + tctbillindex.Text;
            txtbill.ReadOnly = true;
        }
    }
    public void bindparticulars()
    {
        try
        {
            string query = "select sku,itemname from itemmaster";
            SqlDataAdapter sda = new SqlDataAdapter(query,cls.con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count>0)
            {
                ddlparticulars.DataSource = dt;
                ddlparticulars.DataBind();
                ddlparticulars.DataTextField = "itemname";
                ddlparticulars.DataValueField = "sku";
                ddlparticulars.DataBind();
            }
        }
        catch (Exception ex) { }
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            tctbillindex.Text = cl.Scalar("select isnull(max([index]), 0) + 1 as [index] from Billing");
            txtbill.Text = "S0" + tctbillindex.Text;
            txtbill.ReadOnly = true;
            DataColumn dt1 = new DataColumn("BillNo", typeof(string));
            DataColumn dt2 = new DataColumn("particulars", typeof(string));
            DataColumn dt3 = new DataColumn("rate", typeof(decimal));
            DataColumn dt4 = new DataColumn("unit", typeof(string));
            DataColumn dt5 = new DataColumn("weight", typeof(string));
            DataColumn dt6 = new DataColumn("amount", typeof(decimal));
            sdt.Columns.Add(dt1);
            sdt.Columns.Add(dt2);
            sdt.Columns.Add(dt3);
            sdt.Columns.Add(dt4);
            sdt.Columns.Add(dt5);
            sdt.Columns.Add(dt6);
            DataRow row1 = sdt.NewRow();
            row1["BillNo"] = txtbill.Text;
            row1["particulars"] = ddlparticulars.SelectedItem.Text;
            row1["rate"] = txtrate.Text;
            row1["weight"] = txtweightqty.Text;
            row1["unit"] = row1["weight"] + " " + ddlweighted.SelectedItem.Text;
            row1["amount"] = txtamount.Text;
            sdt.Rows.Add(row1);
            gridview1.DataSource = sdt;
            gridview1.DataBind();
            txtrate.Text = "";
            txtamount.Text = "";
            txtweightqty.Text = "";
        }
        catch(Exception ex) { }
    }

    protected void txtweightqty_TextChanged(object sender, EventArgs e)
    {
        decimal amt = 0;
        decimal totamt = 0;
        if (txtrate.Text != "")
        {
            amt = Convert.ToDecimal(txtrate.Text) * Convert.ToDecimal(txtweightqty.Text);
            txtamount.Text = amt.ToString("F2");
            txtamount.ReadOnly = true;
        }
        else
        {
            Response.Write("<script>alert('Please Enter Rate !!')</script>");
            txtweightqty.Text = "";
        }
    }
}