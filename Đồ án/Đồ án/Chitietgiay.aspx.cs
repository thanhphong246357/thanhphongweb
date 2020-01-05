using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_án
{
    public partial class Chitietgiay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getchitietgiay();
            }
        }

        private void getchitietgiay()
        {
            int maGiay = int.Parse(Request.QueryString["MaGiay"]);
            dtchitietgiay.DataSource = phong.GetData("select TenGiay,HinhMinhHoa,TenNSX, TenSan, MoTa, DonGia from CHITIETGIAY S inner join NHASANXUAT N on S.MaNSX = N.MaNSX inner join s C on S.MaSan = C.MaSan where MaGiay = " + maGiay);
            dtchitietgiay.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dtchitietsach_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            //int maSach = Convert.ToInt32(((DataRowView)e.Item.DataItem).Row.ItemArray[0].ToString());
            //DataTable dt = XLDL.GetData("select VaiTro,TenTG from VIETSACH join TACGIA on VIETSACH.MaTG=TACGIA.MaTG where VIETSACH.MaSach =  '"+ maSach +"' ");
            //BulletedList bllTacGia = (BulletedList)e.Item.FindControl("bllTacGia");
            //for (int i = 0; i < dt.Rows.Count; i++)
            //  bllTacGia.Items.Add(dt.Rows[i][0].ToString() + ": " + dt.Rows[i][1].ToString());


        }
    }
}
        