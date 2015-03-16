using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class HomeBLL
    {
        /// <summary>
        /// 获取通告内容
        /// </summary>
        /// <returns></returns>
        public string GetNoticeBoard()
        {
            DAL.HomeDAL home = new DAL.HomeDAL();
            return home.GetNoticeBoard();
        }

        /// <summary>
        /// 获取所有食物类型名称
        /// </summary>
        /// <returns></returns>
        public List<string> GetFoodClassNames()
        {
            DAL.HomeDAL home = new DAL.HomeDAL();
            return home.GetFoodClassNames();
        }
    }
}
