using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class FoodDetailBLL
    {
        DAL.FoodDetailDAL fooddetaildal = new DAL.FoodDetailDAL();

        public Model.FoodInfo GetFoodDetail(int foodid) 
        {
            return fooddetaildal.GetFoodDetail(foodid);
        }

        public List<string> GetSimilarFood(int foodid)
        {
            return fooddetaildal.GetSimilarFood(foodid);
        }
    }
}
