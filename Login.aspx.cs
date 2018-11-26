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
    public partial class Login : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (txtPassWord.Text.Length < 5)
            {
                
                lblThongBao.Text = "Mat khau phai lon hon 5 ky tu";
            }
            else
            {
                var dl = dt.DangNhap_Search(txtUserName.Text, txtPassWord.Text);
                int kt = dl.Count();
                if (kt > 0)
                {
                    Session["admin"] = true;
                    Session["user"] = txtUserName.Text;
                    Response.Redirect("Index.aspx");

                }
                else
                {
                    lblThongBao.Text = "Đăng nhập thất bại. Mời bạn nhập lại";
                    txtUserName.Text = "";
                    txtPassWord.Text = "";
                    txtUserName.Focus();
                }
            }            
        }

        protected void txtPassWord_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}