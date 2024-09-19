using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public static TimeZoneInfo timeZoneInfo = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    public static DateTime dateTime;
    Class1 cl = new Class1();
    Cls_connection cls = new Cls_connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
