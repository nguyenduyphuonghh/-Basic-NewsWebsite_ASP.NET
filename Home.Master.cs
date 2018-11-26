using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBasic
{
    public partial class Home : System.Web.UI.MasterPage
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
                rpBanTin.DataSource = dt.Bantin_SelectAll();
                rpBanTin.DataBind();
            }
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
            Label1.Text = System.DateTime.Now.ToString();
        }
    }
}