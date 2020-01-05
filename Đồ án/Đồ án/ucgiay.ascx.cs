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
    public partial class ucgiay : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            getgiay();
            }
        }

        private void getgiay()
        {
            dtlgiay.DataSource = phong.GetData("select top 6 SoLuongBan,MaGiay,TenGiay, HinhMinhHoa, DonGia from CHITIETGIAY order by SoLuongBan desc ");
            dtlgiay.DataBind();
        }

    }
}
       