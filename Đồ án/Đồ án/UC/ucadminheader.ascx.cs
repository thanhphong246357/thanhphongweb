using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_án.UC
{
    public partial class ucadminheader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] != null)
            {
                aDangNhap.Visible = false;
                
                lbTenDN.Visible = true;
                lbTenDN.Text = "Xin chào" + Session["TenDN"].ToString();
                lblDangXuat.Visible = true;

            }
            else
            {
                lbTenDN.Text = "";
                lbTenDN.Visible = false;
                lblDangXuat.Visible = false;
                aDangNhap.Visible = true;
                
            }
        }

        protected void lblDangXuat_Click(object sender, EventArgs e)
        {
            Session["TenDN"] = null;
            //Session["GioHang"] = null;
            Response.Redirect("admin.aspx");
        }
    }
}
       