using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBasic
{
    public partial class ChiTiet1 : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                if ((Boolean)Session["admin"] == false)
                {
                    rpAdminUpdate.Visible = false;
                    btnXoa.Visible = false;
                }
                else
                {
                    rpAdminUpdate.Visible = true;
                    btnXoa.Visible = true;
                }
                loadData();  
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            xoa();
        }

        public void xoa()
        {
            string nd = Request["nd"];
            string ses = Session["user"].ToString();

            if (nd != ses)
            {
                lblTB.Text = "ban ko phai chu bai viet nay";
            }
            else
            {
                lblTB.Text = "Xoa thanh cong";
                dt.ChiTiet_Delete(Convert.ToInt32(Request["ID"]));
            }
        }

        protected void loadData()
        {
            int? so = null;
            
            int id = Convert.ToInt32(Request["ID"]);
            int idbantin = Convert.ToInt32(Request["IDBanTin"]);
            // Tăng số lượt xem
            // lấy dữ liệu trong sql
            dt.ChiTiet_SoLanXem(id, ref so);
            if (so == null)
            {
                so = 0;
            }
            int gt = Convert.ToInt32(so) + 1;
            // tăng
            dt.ChiTiet_UpdateSLX(gt, id);
            rpBanTin.DataSource = dt.BanTin_SelectByID(idbantin);
            rpBanTin.DataBind();

            rpChiTiet.DataSource = dt.ChiTiet_SelectByID(id);
            rpChiTiet.DataBind();

            rpRandom.DataSource = dt.ChiTiet_SelectRandom();
            rpRandom.DataBind();

            rpAdminUpdate.DataSource = dt.ChiTiet_SelectByID(id);
            rpAdminUpdate.DataBind();  
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
                 
        }

        protected void Timer3_Tick(object sender, EventArgs e)
        {
            lbltest.Text = "he"; 
        }
    }
}