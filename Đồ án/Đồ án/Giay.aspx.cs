using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_án
{
    public partial class Giay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("DangnhapAdmin.aspx");
            }
            if (!IsPostBack)
            {
                getGiay();
            }
        }

        private void getGiay()
        {
            gvGiay.DataSource = phong.GetData("select MaGiay,TenGiay,DonViTinh,DonGia,NgayCapNhat,SoLuongBan,SoLuongXem from CHITIETGIAY");
            gvGiay.DataBind();
        }

        protected void gvGiay_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int maGiay = int.Parse(gvGiay.Rows[chiso].Cells[0].Text);
                    phong.Execute("delete from CHITIETGIAY where MaGiay=" + maGiay);
                    Response.Redirect("Giay.aspx");

                }
                catch
                {
                    Response.Write("<script>alert('Xóa thất bại!!!')</script>");
                }
            }
        }

        protected void gvGiay_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvGiay.PageIndex = e.NewPageIndex;
            getGiay();
            gvGiay.DataBind();
        }
    }
}