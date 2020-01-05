using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Đồ_án.UC
{
    public partial class ucleft : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getLoaiSan();
                getNhaSanXuat();
            }
        }

        private void getLoaiSan()
        {
            gvLoaiSan.DataSource = phong.GetData("select MaSan, TenSan from s");
            gvLoaiSan.DataBind();
        }

        private void getNhaSanXuat()
        {
            gvNSX.DataSource = phong.GetData("select MaNSX, TenNSX from NHASANXUAT");
            gvNSX.DataBind();
        }


    }
}
        