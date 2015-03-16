using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class HomeDAL
    {
        DBHelper db = new DBHelper();

        /// <summary>
        /// 获取标记为公告中的公告信息
        /// </summary>
        /// <returns></returns>
        public string GetNoticeBoard() 
        {
            db.Open();
            string noticetext ="";
            SqlDataReader dr = db.ExecuteReader("select noticeContent from NoticeBoard where noticeStateId = 3", CommandType.Text);
            if (dr.Read())
            {
                noticetext = dr[0].ToString();
            }
            dr.Close();
            db.Close();
            return noticetext;
        }

        public List<string> GetFoodClassNames() 
        {
            db.Open();
            List<string> foodclassnames = new List<string>();
            SqlDataReader dr = db.ExecuteReader("select foodClassName from FoodClass", CommandType.Text);
            if (dr.Read())
            {
                foodclassnames.Add(dr["foodClassName"].ToString());
            }
            dr.Close();
            db.Close();
            return foodclassnames;
        }
    }
}
