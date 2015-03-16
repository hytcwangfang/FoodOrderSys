using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class FoodDetailDAL
    {
        DBHelper db = new DBHelper();
        SqlDataReader dr;

        /// <summary>
        /// 获取当前食物详情信息
        /// </summary>
        /// <param name="foodid">当前食物的ID</param>
        /// <returns></returns>
        public Model.FoodInfo GetFoodDetail(int foodid) 
        {
            db.Open();
            Model.FoodInfo foodinfo = new Model.FoodInfo();
            //SqlDataReader dr = db.ExecuteReader("select foodClassId,foodDes,foodId,foodImg,foodName,foodPrice from FoodInfo where foodId = " + foodid + "", CommandType.Text);
            dr = db.ExecuteReader("select foodClassId,foodDes,foodId,foodImg,foodName,foodPrice from FoodInfo where foodId = '1'", CommandType.Text);
            if (dr.Read())
            {
                foodinfo.FoodClassId = Convert.ToInt32(dr["foodClassId"]);
                foodinfo.FoodDes = dr["foodDes"].ToString();
                foodinfo.FoodId = Convert.ToInt32(dr["foodId"]);
                foodinfo.FoodImg = dr["foodImg"].ToString();
                foodinfo.FoodName = dr["foodName"].ToString();
                foodinfo.FoodPrice = Convert.ToDouble(dr["foodPrice"]);
            }
            dr.Close();
            db.Close();
            return foodinfo;
        }

        /// <summary>
        /// 获取与当前食物相同类型的食物名称（不多于20条）
        /// </summary>
        /// <param name="foodid">当前食物的ID</param>
        /// <returns></returns>
        public List<string> GetSimilarFood(int foodid)
        {
            List<string> similarfoodlist = new List<string>();
            db.Open();
            //dr = db.ExecuteReader("select top 20 foodName from FoodInfo where foodClassId in (select foodClassId from FoodInfo where foodId = " + foodid + ")", CommandType.Text);
            dr = db.ExecuteReader("select top 20 foodName from FoodInfo where foodClassId in (select foodClassId from FoodInfo where foodId = 1)", CommandType.Text);
            if (dr.Read())
            {
                similarfoodlist.Add(dr["foodName"].ToString());
            }
            dr.Close();
            db.Close();
            return similarfoodlist;
        }
    }
}
