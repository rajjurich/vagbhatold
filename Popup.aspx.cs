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

public partial class Popup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void calPopup_DayRender(object sender,DayRenderEventArgs e)
{
HyperLink link = new HyperLink();
LiteralControl lc = (LiteralControl)e.Cell.Controls[0];
link.Text = lc.Text;
link.NavigateUrl = "javascript:SetDate('" +
e.Day.Date.ToShortDateString() + "');";
e.Cell.Controls.Clear();
e.Cell.Controls.Add(link);
}
}
