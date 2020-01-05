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
    public partial class Themgiay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("DangnhapAdmin.aspx");
            }

            DataTable dt = new DataTable();
            dt = phong.GetData("select MaSan, TenSan from s");
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlMaSan.Items.Add("i");
                    ddlMaSan.Items[i].Text = dt.Rows[i][0].ToString() + ": " + dt.Rows[i][1].ToString();
                    ddlMaSan.Items[i].Value = dt.Rows[i][0].ToString();
                }
            }

            DataTable dr = new DataTable();
            dr = phong.GetData("select MaNSX, TenNSX from NHASANXUAT");
            if (dr.Rows.Count > 0)
            {
                for (int j = 0; j < dr.Rows.Count; j++)
                {
                    ddlMaNSX.Items.Add("i");
                    ddlMaNSX.Items[j].Text = dr.Rows[j][0].ToString() + ": " + dr.Rows[j][1].ToString();
                    ddlMaNSX.Items[j].Value = dr.Rows[j][0].ToString();
                }
            }


        }

        protected void btLuu_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(phong.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"insert into CHITIETGIAY(TenGiay,DonViTinh,DonGia,MoTa,HinhMinhHoa,MaSan,MaNSX,NgayCapNhat,SoLuongBan,SoLuongXem) values(@TenGiay,@DonViTinh,@DonGia,@MoTa,@HinhMinhHoa,@MaSan,@MaNSX,@NgayCapNhat,@SoLuongBan,@SoLuongXem)";
                cmd.Parameters.Add("@TenGiay", SqlDbType.NVarChar, 100);
                cmd.Parameters["@TenGiay"].Value = txtTenGiay.Text;
                cmd.Parameters.Add("@DonViTinh", SqlDbType.NVarChar, 50);
                cmd.Parameters["@DonViTinh"].Value = txtDonViTinh.Text;
                cmd.Parameters.Add("@DonGia", SqlDbType.Money);
                cmd.Parameters["@DonGia"].Value = txtDonGia.Text;
                cmd.Parameters.Add("@MoTa", SqlDbType.NText);
                cmd.Parameters["@MoTa"].Value = txtMoTa.InnerText;
                cmd.Parameters.Add("@HinhMinhHoa", SqlDbType.VarChar, 50);
                cmd.Parameters["@HinhMinhHoa"].Value = fileHinh.FileName;
                cmd.Parameters.Add("@MaSan", SqlDbType.Int);
                cmd.Parameters["@MaSan"].Value = ddlMaSan.SelectedValue.ToString();
                cmd.Parameters.Add("@MaNSX", SqlDbType.Int);
                cmd.Parameters["@MaNSX"].Value = ddlMaNSX.SelectedValue.ToString();
                cmd.Parameters.Add("@NgayCapNhat", SqlDbType.SmallDateTime);
                cmd.Parameters["@NgayCapNhat"].Value = cldNgay.SelectedDate.ToString();
                cmd.Parameters.Add("@SoLuongBan", SqlDbType.Int);
                cmd.Parameters["@SoLuongBan"].Value = txtSoLuong.Text;
                cmd.Parameters.Add("@SoLuongXem", SqlDbType.Int);
                cmd.Parameters["@SoLuongXem"].Value = txtSoLuongXem.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Thành công!')</script>");
            }
            catch
            {
                Response.Write("<script>alert('Thất bại!')</script>");
            }
            //txtTenSach.Text = cldNgay.SelectedDate.ToString();
        }
    }
}
        