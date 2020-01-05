using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Đồ_án
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
             protected void dangnhap123(object sender, EventArgs e)
        {


            DataTable dt = phong.GetData("select TenDN,Matkhau from KHACHHANG where TenDN='" + txtTenDangNhap.Text + "' and Matkhau = '" + txtMatKhau.Text + "' ");
            if (dt.Rows.Count > 0)
            {
                Session["TenDN"] = txtTenDangNhap.Text;
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                // Response.Write("<script>alert(" + Đăng nhập thất bại. + ")");
                lblThongbaoloi.Text = "Đăng nhập thất bại.";
            }


        }


    }
}
        