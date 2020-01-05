using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_án.UC
{
    public partial class ucright : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getGiayBNN();
            }
        }
        private void getGiayBNN()
        {
            gvGiayBNN.DataSource = phong.GetData("Select top 10 SoLuongBan,MaGiay,TenGiay,HinhMinhHoa from CHITIETGIAY order by SoLuongBan desc ");
            gvGiayBNN.DataBind();
        }
    }
}
