using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_án
{
    public partial class Giaytheoloaisanthidau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getGiay();
            }
        }

        private void getGiay()
        {
            string maCD = Request.QueryString["MaSan"];
            dtlSach.DataSource = phong.GetData("select * from CHITIETGIAY  where MaSan = '" + maCD + "' ");
            dtlSach.DataBind();
        }


        protected void dtlSach_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
        