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
    public partial class Suagiay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("DangnhapAdmin.aspx");
            }
        }

        private void getGiay()
        {
            string maGiay = Request.QueryString["Ma"];
            DataTable dt = new DataTable();
            dt = phong.GetData("select MaGiay,TenGiay,DonViTinh,DonGia,MoTa,HinhMinhHoa,MaSan,MaNSX,NgayCapNhat,SoLuongBan,SoLuongXem from CHITIETGIAY where MaGiay = '" + maGiay + "' ");
            if (dt.Rows.Count > 0)
            {
                txtTenGiay.Text = dt.Rows[0][1].ToString();
                txtDonViTinh.Text = dt.Rows[0][2].ToString();
                txtDonGia.Text = dt.Rows[0][3].ToString();
                txtMoTa2.InnerText = dt.Rows[0][4].ToString();
                //HInhMinhHoa
                txtMaSan.Text = dt.Rows[0][6].ToString();
                txtMaNSX.Text = dt.Rows[0][7].ToString();
                //Ngay
                txtSoLuong.Text = dt.Rows[0][9].ToString();
                txtSoLuongXem.Text = dt.Rows[0][10].ToString();
            }
        }

        protected void btLuu_Click1(object sender, EventArgs e)
        {
            try
            {
                string TenGiay = txtTenGiay.Text;
                string DonViTinh = txtDonViTinh.Text;
                string DonGia = txtDonGia.Text;
                string MoTa = txtMoTa2.InnerText;
                string MaSan = txtMaSan.Text;
                string MaNSX = txtMaNSX.Text;
                string SoLuongBan = txtSoLuong.Text;
                string SoLuongXem = txtSoLuongXem.Text;
                int maGiay = int.Parse(Request.QueryString["Ma"].ToString());
                phong.Execute(@"update CHITIETGIAY set TenGiay='" + TenGiay + "',DonViTinh='" + DonViTinh + "',DonGia='" + DonGia + "',MoTa='" + MoTa + "',HinhMinhHoa='" + fileHinh.FileName + "',MaSan='" + MaSan + "',MaNSX='" + MaNSX + "',NgayCapNhat='" + cldNgay.SelectedDate.ToString() + "',SoLuongBan='" + SoLuongBan + "',SoLuongXem='" + SoLuongXem + "' where MaGiay=" + maGiay);
                Response.Write("<script>alert('Thành công!!!')</script>");

            }
            catch
            {
                Response.Write("<script>alert('Thất bại!!')</script>");
            }
        }

        protected void bthien_Click(object sender, EventArgs e)
        {
            getGiay();
        }
    }
}
        
        