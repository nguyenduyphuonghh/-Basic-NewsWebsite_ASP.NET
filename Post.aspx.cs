using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBasic
{
    public partial class Post : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                drBantin.DataTextField = "TieuDe";
                drBantin.DataValueField = "IDBanTin";
                drBantin.DataSource = dt.Bantin_SelectAll();
                drBantin.DataBind();
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            dt.ChiTiet_Insert(txtTieuDe.Text, txtNoiDung.Text, DateTime.Now, Convert.ToInt32(drBantin.SelectedValue), Session["user"].ToString(),txtTrichDan.Text);
            Response.Redirect("Index.aspx");
        }
    }
}