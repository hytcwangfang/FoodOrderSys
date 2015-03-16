using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class FoodDetail : System.Web.UI.Page
    {
        public Model.FoodInfo foodinfo = new Model.FoodInfo();
        public int foodId;
        public List<string> similarfoodlist = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            //foodid
            if (Request.QueryString["foodid"] == null || Request.QueryString["foodid"] == "")
            {
                Response.Write(Page.ErrorPage);
            }
            else {
                foodId = Convert.ToInt32(Request.QueryString["foodid"]);
            }

            //实例化
            BLL.FoodDetailBLL fooddetailbll = new BLL.FoodDetailBLL();

            //获取当前页面食物信息
            foodinfo = fooddetailbll.GetFoodDetail(foodId);  
          
            //获取与当前页面相同类型的食物
            similarfoodlist = fooddetailbll.GetSimilarFood(foodId);
        }
    }
}