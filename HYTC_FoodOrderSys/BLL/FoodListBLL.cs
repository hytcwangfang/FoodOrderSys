using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class FoodListBLL
    {
        /// <summary>
        /// 获取所有食物列表
        /// </summary>
        /// <returns></returns>
        public List<Model.FoodInfo> GetFoodList() 
        {
            DAL.FoodListDAL foodlistdal = new DAL.FoodListDAL();
            return foodlistdal.GetFoodList();
        }

        /// <summary>
        /// 获取X类型的食物列表
        /// </summary>
        /// <param name="classname">类型</param>
        /// <returns></returns>
        public List<Model.FoodInfo> GetFoodList(string classname)
        {
            DAL.FoodListDAL foodlistdal = new DAL.FoodListDAL();
            return foodlistdal.GetFoodList(classname);
        }

        /// <summary>
        /// 获取价位在x与X之间的食物列表
        /// </summary>
        /// <param name="minprice">最低价格</param>
        /// <param name="maxprice">最高价格</param>
        /// <returns></returns>
        public List<Model.FoodInfo> GetFoodList(Double minprice, Double maxprice)
        {
            DAL.FoodListDAL foodlistdal = new DAL.FoodListDAL();
            return foodlistdal.GetFoodList(minprice, maxprice);
        }

        /// <summary>
        /// 获取X类型并且在x-X价位的食物列表
        /// </summary>
        /// <param name="classname">类型</param>
        /// <param name="minprice">最低价格</param>
        /// <param name="maxprice">最高价格</param>
        /// <returns></returns>
        public List<Model.FoodInfo> GetFoodList(string classname, Double minprice, Double maxprice)
        {
            DAL.FoodListDAL foodlistdal = new DAL.FoodListDAL();
            return foodlistdal.GetFoodList(classname, minprice, maxprice);
        }

    }
}
