using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Đồ_án
{
    public partial class Nhasanxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
                Response.Redirect("DangnhapAdmin.aspx");
            if (!IsPostBack)
            {
                getNSX();
            }
        }

        private void getNSX()
        {
            gvNhasanxuat.DataSource = phong.GetData("select MaNSX,TenNSX,DiaChi,DienThoai from NHASANXUAT");
            gvNhasanxuat.DataBind();
        }

        protected void gvNhasanxuat_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(gvNhasanxuat.Rows[chiso].Cells[0].Text);
                    DataTable dt = new DataTable();
                    dt = phong.GetData("select MaGiay from CHITIETGIAY where MaNSX=" + ma + "");
                    if (dt.Rows.Count > 0)
                    {
                        lbThongBaoLoi.Text = "Nhà sản xuất này đã sản xuất giày nên không thể xóa.<br /> Bạn cần xóa hết tất cả giày của nhà sản xuất này trước!";
                    }
                    else
                    {
                        string str = "delete from NHASANXUAT where MaNSX =" + ma;
                        phong.Execute(str);
                        Response.Redirect("Nhasanxuat.aspx");
                    }
                }
                catch
                {
                    lbThongBaoLoi.Text = "Thất bại!!";
                }
            }
        }

        protected void gvNhasanxuat_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvNhasanxuat.EditIndex = e.NewEditIndex;
            getNSX();
        }

        protected void gvNhasanxuat_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int MaNXB = int.Parse(gvNhasanxuat.DataKeys[e.RowIndex].Value.ToString());
            string TenNSX = (gvNhasanxuat.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            string DiaChi = (gvNhasanxuat.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string DienThoai = (gvNhasanxuat.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            if (TenNSX == "")
            {
                Response.Write("<script>alert('Tên không được rỗng!')</script>");
            }
            else
            {
                phong.Execute(@"update NHASANXUAT set TenNSX=N'" + TenNSX + "',DiaChi=N'" + DiaChi + "',DienThoai='" + DienThoai + "' where MaNSX='" + MaNXB + "' ");
                gvNhasanxuat.EditIndex = -1;
                getNSX();
            }
        }

        protected void gvNhasanxuat_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvNhasanxuat.EditIndex = -1;
            getNSX();
        }
    }
}

        
       