using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    Class1 cl = new Class1();
    Cls_connection cls = new Cls_connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string username;
        string pass;
        try
        {
            //string deac = cl.Scalar("select deactive from EmployeeMaster where userid='" + txtuserid.Text.Trim() + "' and Password ='" + txtpass.Text.Trim() + "' and deactive='0'");
            //if (deac!="0")
            //{
            //    Response.Write("<script>alert('Your Login ID is Locked By Admin!!')</script>");
            //}
            //else
            //{
            SqlCommand cmd = new SqlCommand("select * from EmployeeMaster where userid='" + txtuserid.Text.Trim() + "' and Password ='" + txtpass.Text.Trim() + "' and deactive='0'", cls.con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                username = dt.Rows[0]["userid"].ToString();
                pass = dt.Rows[0]["Password"].ToString();
                Session["Admin"] = txtuserid.Text;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Login Details!!')</script>");
            }
        }

        catch (Exception Ex)
        {
            //Response.Write(Ex);
        }
    }
}