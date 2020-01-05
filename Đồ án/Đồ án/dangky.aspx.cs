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
    public partial class dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btDangKy_Click(object sender, EventArgs e)
        {
            //try
            // {
            string strl = @"select * from KHACHHANG where TenDN = '" + txtTenDN.Text + "' ";
            if (phong.GetData(strl).Rows.Count > 0)
            {
                lbThongBaoLoi.Text = "Tên đăng nhập đã tồn tại.";
                txtTenDN.Focus();
            }
            else
            {
                SqlConnection con = new SqlConnection(phong.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"insert into KHACHHANG(HoTenKH,DiaChiKH,DienThoai,Email,TenDN,MatKhau,NgaySinh,GioiTinh)
                    values(@HoTen,@DiaChi,@DienThoai,@Email,@TenDN,@MatKhau,@NgaySinh,@GioiTinh)";
                cmd.Parameters.Add("@HoTen", SqlDbType.NVarChar, 50);
                cmd.Parameters["@HoTen"].Value = txtHoTen.Text;
                cmd.Parameters.Add("@DiaChi", SqlDbType.NVarChar, 50);
                cmd.Parameters["@DiaChi"].Value = txtDiaChi.Text;
                cmd.Parameters.Add("@DienThoai", SqlDbType.VarChar, 10);
                cmd.Parameters["@DienThoai"].Value = txtDienThoai.Text;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                cmd.Parameters["@Email"].Value = txtEmail.Text;
                cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 15);
                cmd.Parameters["@TenDN"].Value = txtTenDN.Text;
                cmd.Parameters.Add("@MatKhau", SqlDbType.VarChar, 15);
                cmd.Parameters["@MatKhau"].Value = txtMatKhau.Text;
                cmd.Parameters.Add("@NgaySinh", SqlDbType.SmallDateTime);
                cmd.Parameters["@NgaySinh"].Value = DateTime.Parse(ddlThangSinh.Text + "/" + ddlNgaySinh.Text + "/" + txtNamSinh.Text);
                cmd.Parameters.Add("@GioiTinh", SqlDbType.Bit);
                cmd.Parameters["@GioiTinh"].Value = Convert.ToInt16(rblGioitinh.SelectedItem.Value);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Dangnhap.aspx");

            }
            //}
            /*  catch
              {
                  lbThongBaoLoi.Text = "Thất bại";
              }*/
        }
    }
}