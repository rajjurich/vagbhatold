using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(Request.QueryString["ty"]);
        //string ty = Request.QueryString["ty"].ToString();
        Session.Abandon();
       if (Request.QueryString["ty"] == "t")
       {
           Label1.Text = "Details Added";
       }
       if (Request.QueryString["ty"] == "u")
       {
           Label1.Text = "Details Updated";
       }
    }
    
}
