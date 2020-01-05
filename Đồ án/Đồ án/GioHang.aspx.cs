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
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["MaGiay"] != null)
            {
                //string MaSach = Request.QueryString["MaGiay"];
                int MaSach = int.Parse(Request.QueryString["MaGiay"]);
                DataTable dt = phong.GetData("select TenGiay,DonGia from CHITIETGIAY where MaGiay=" + MaSach);
                string TenSach = dt.Rows[0][0].ToString();
                float DonGia = float.Parse(dt.Rows[0][1].ToString());
                int SoLuong = 1;
                ThemVaoGioHang(MaSach, TenSach, DonGia, SoLuong);
                //dt = (DataTable)Session["GioHang"];
                //gvGiohang.DataSource = dt;
                //gvGiohang.DataBind();
            }
            if (Session["GioHang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                System.Decimal TongThanhTien = 0;
                foreach (DataRow r in dt.Rows)
                {
                    r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                    TongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                    lbTongThanhTIen.Text = TongThanhTien.ToString();
                }
                gvGiohang.DataSource = dt;
                gvGiohang.DataBind();
            }
        }


        public void ThemVaoGioHang(int MaGiay, string TenGiay, float DonGia, int SoLuong)
        {
            DataTable dt;
            if (Session["GioHang"] == null)
            {
                dt = new DataTable();
                dt.Columns.Add("MaGiay");
                dt.Columns.Add("TenGiay");
                dt.Columns.Add("DonGia");
                dt.Columns.Add("SoLuong");
                dt.Columns.Add("ThanhTien");
            }
            else
                dt = (DataTable)Session["GioHang"];

            int dong = SPDaCoTrongGioHang(MaGiay, dt);
            if (dong != -1)
            {
                dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + SoLuong;
            }
            else
            {
                DataRow dr = dt.NewRow();
                dr["MaGiay"] = MaGiay;
                dr["TenGiay"] = TenGiay;
                dr["DonGia"] = DonGia;
                dr["SoLuong"] = SoLuong;
                dr["ThanhTien"] = DonGia * SoLuong;
                dt.Rows.Add(dr);
            }
            Session["GioHang"] = dt;
        }

        public static int SPDaCoTrongGioHang(int MaSach, DataTable dt)
        {
            int dong = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (int.Parse(dt.Rows[i]["MaGiay"].ToString()) == MaSach)
                //if(dt.Rows[i]["MaSach"].ToString() == MaSach)
                {
                    dong = i;
                    break;
                }
            }
            return dong;
        }

        protected void btDathang_Click(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                lbThongBaoLoi.Text = "Bạn chưa đăng nhập";
                Response.Redirect("~/dangnhap.aspx");
            }
            else
            {
                Response.Redirect("~/Thanhtoan.aspx");
            }
        }

        protected void btXoagiohang_Click(object sender, EventArgs e)
        {
            Session["GioHang"] = null;
            Response.Redirect("~/Default.aspx");
        }

        protected void btTieptucmua_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void btCapnhat_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["GioHang"];
            foreach (GridViewRow r in gvGiohang.Rows)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToString(gvGiohang.DataKeys[r.DataItemIndex].Value) == dr["MaGiay"].ToString())
                    {
                        TextBox t = (TextBox)r.Cells[2].FindControl("txtSoLuong");
                        if (Convert.ToInt32(t.Text) <= 0)
                            dt.Rows.Remove(dr);
                        else
                            dr["SoLuong"] = t.Text;
                        break;
                    }
                }
            }
            Session["GioHang"] = dt;
            Response.Redirect("~/GioHang.aspx");
        }

        protected void gvGiohang_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvGiohang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                try
                {
                    DataTable dt = (DataTable)Session["GioHang"];
                    dt.Rows.RemoveAt(chiso);
                    Session["GioHang"] = dt;
                    Response.Redirect("~/GioHang.aspx");
                }
                catch
                {
                    Response.Redirect("~/GioHang.aspx");
                }
            }
        }
    }
}
       