using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBasic
{
    public partial class Register : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "" || txtPassWord.Text == "")
            {
                lblThongBao.Text = "Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu!";
                txtUserName.Text = "";
                txtPassWord.Text = "";
                txtUserName.Focus();
            }
            else
            {
                dt.DangNhap_Insert(txtUserName.Text, txtPassWord.Text);
                Response.Redirect("Index.aspx");
            }
        }
    }
}