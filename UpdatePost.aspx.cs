using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBasic
{
    public partial class UpdatePost : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request["ID"]);
                int idbantin = Convert.ToInt32(Request["IDBanTin"]);
                // show data to DropDownList
                drBantin.DataTextField = "TieuDe";
                drBantin.DataValueField = "IDBanTin";
                drBantin.DataSource = dt.BanTin_SelectByID(idbantin);
                drBantin.DataBind();

                // show data from db to Textbox & CKEditor
                loadNoiDung();
            }
        }

        protected void btnUpdatePost_Click(object sender, EventArgs e)
        {
            dt.ChiTiet_Update(txtTieuDe.Text, txtNoiDung.Text, DateTime.Now, Convert.ToInt32(Request["ID"]),txtTrichDan.Text);
            Response.Redirect("Index.aspx");
        }

        protected void loadNoiDung()
        {
            using (SqlConnection con1 = new SqlConnection("Data Source=PHUONG-IT\\SQLEXPRESS;Initial Catalog=BtlTinTuc;Integrated Security=True"))
            {
                DataTable datatable = new DataTable();
                con1.Open();
                SqlDataReader myReader = null;
                SqlCommand myCommand = new SqlCommand("select * from ChiTiet where IDChiTiet=" + Convert.ToInt32(Request["ID"]), con1);

                myReader = myCommand.ExecuteReader();

                while (myReader.Read())
                {
                    txtTieuDe.Text = myReader["TieuDe"].ToString();
                    txtNoiDung.Text = myReader["NoiDung"].ToString();
                    txtTrichDan.Text = myReader["TrichDan"].ToString();
                }
                con1.Close();
            }
        }
    }
}