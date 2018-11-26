using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBasic
{
    public partial class BanTin1 : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            rpIDBanTin.DataSource = dt.BanTin_SelectByID(Convert.ToInt32(Request["IDBanTin"]));
            rpIDBanTin.DataBind();

            rpChiTiet.DataSource = dt.ChiTiet_SelectByBanTin(Convert.ToInt32(Request["IDBanTin"]));
            rpChiTiet.DataBind();
        }
    }
}