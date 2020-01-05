using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_án
{
    public partial class Giaytheonhasanxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getNXB();
            }
        }

        private void getNXB()
        {
            string maNXB = Request.QueryString["MaNSX"];
            dtlGiay.DataSource = phong.GetData("select * from CHITIETGIAY  where MaNSX = '" + maNXB + "' ");
            dtlGiay.DataBind();
        }

        protected void dtlSach_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
       