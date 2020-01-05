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
    public partial class ThemNSX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                cmd.CommandText = @"insert into NHASANXUAT(MaNSX,TenNSX,DiaChi,DienThoai) values(@MaNSX,@TenNSX,@DiaChi,@DienThoai)";
                cmd.Parameters.Add("@MaNSX", SqlDbType.NVarChar, 100);
                cmd.Parameters["@MaNSX"].Value = txtMaNSX.Text;
                cmd.Parameters.Add("@TenNSX", SqlDbType.NVarChar, 100);
                cmd.Parameters["@TenNSX"].Value = txtTenNSX.Text;
                cmd.Parameters.Add("@DiaChi", SqlDbType.NVarChar, 150);
                cmd.Parameters["@DiaChi"].Value = txtDiaChi.Text;
                cmd.Parameters.Add("@DienThoai", SqlDbType.NVarChar, 15);
                cmd.Parameters["@DienThoai"].Value = txtDienThoai.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Thành công!')</script>");
            }
            catch
            {
                Response.Write("<script>alert('Thất bại!')</script>");
            }
        }
    }
}
       
       