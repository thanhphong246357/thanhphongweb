using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_án
{
    public partial class cachchonsize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getsize();
            }
        }

        private void getsize()
        {
            dtlsize.DataSource = phong.GetData("select  hinhvd from size  ");
            dtlsize.DataBind();
        }

    }
}
       