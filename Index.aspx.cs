using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;

namespace WebBasic
{
    public partial class Index : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();

        public int CurrentPage
        {
            get
            {
                if (ViewState["CurrentPage"] != null)
                {
                    return Convert.ToInt32(ViewState["CurrentPage"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["CurrentPage"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData(8);
            }
        }

        protected void loadData(int pageSize)
        {
            //rpChiTiet.DataSource = dt.ChiTiet_SelectHome();
            //rpChiTiet.DataBind();
            // Start paging here.
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = dt.ChiTiet_SelectHome().ToArray();
            pds.AllowPaging = true;
            // Show number of product in page
            pds.PageSize = pageSize;           

            pds.CurrentPageIndex = this.CurrentPage;
            if (pds.PageCount > 1)
            {
                repeaterPaging.Visible = true;
                ArrayList pages = new ArrayList();
                for (int i = 0; i <= pds.PageCount-1; i++)
                {
                    //if (i == CurrentPage)
                    //{
                    //    pages.Add("<strong>" + (i + 1).ToString() + "</strong>");
                    //}
                    //else
                    //{
                        pages.Add((i + 1).ToString());
                    //}
                }
                repeaterPaging.DataSource = pages;
                repeaterPaging.DataBind();
            }
            else
            {
                repeaterPaging.Visible = false;
            }
            rpChiTiet.DataSource = pds;
            rpChiTiet.DataBind();
        }

        protected void repeaterPaging_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            this.CurrentPage = Convert.ToInt32(e.CommandArgument) - 1;
            loadData(8);

            //RepeaterItem item = (RepeaterItem)e.Item;
            //string node = (string)item.DataItem;
            //LinkButton hl = (LinkButton)e.Item.FindControl("btnPage");
            //if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            //{
            //    (e.Item.FindControl("btnPage") as LinkButton).ForeColor = System.Drawing.Color.Red;
            //}
        }

        protected void repeaterPaging_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
             
        }
    }
}