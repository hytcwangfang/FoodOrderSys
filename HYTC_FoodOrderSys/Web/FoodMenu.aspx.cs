using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Web
{
    public partial class FoodMenu : System.Web.UI.Page
    {
        public List<Model.FoodInfo> foodlist = new List<Model.FoodInfo>();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            BLL.FoodListBLL foodlistbll = new BLL.FoodListBLL();
            foodlist = foodlistbll.GetFoodList();
            string html = "";
            for (int i = 0; i < foodlist.Count; i++)
            {
                html += "<li class='foodli'>";
                html += "   <img src='images_tool/comtype.jpg' class='noclickimg' clickstate='no' />";
                html += "   <a href='FoodDetail.aspx?foodid=" + foodlist[i].FoodId + "' target='_blank'><img src='" + foodlist[i].FoodImg + "' class='foodimg' /></a>";
                html += "   <div class='fooddes'>";
                html += "       <strong>名称：</strong>";
                html += "       <span>" + foodlist[i].FoodName + "</span>";
                html += "   </div>";
                html += "   <div class='fooddes'>";
                html += "       <strong>价格：</strong>";
                html += "       <span>￥" + foodlist[i].FoodPrice + "</span>";
                html += "   </div>";
                html += "   <div class='fooddes'>";
                html += "       <strong>已售：</strong>";
                html += "       <img src='images_tool/qiyifaith2.jpg' class='likestar' />";
                html += "   </div>";
                html += "</li>";
            }
            this.foodmenulist.InnerHtml = html;
            

        }
        
    }
}