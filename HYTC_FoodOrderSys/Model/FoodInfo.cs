using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class FoodInfo
    {
        /// <summary>
        /// 食物编号
        /// </summary>
        public int FoodId { get; set; }
        
        /// <summary>
        /// 食物名称
        /// </summary>
        public string FoodName { get; set; }

        /// <summary>
        /// 食物价格
        /// </summary>
        public double FoodPrice { get; set; }

        /// <summary>
        /// 食物类别编号
        /// </summary>
        public int FoodClassId { get; set; }

        /// <summary>
        /// 食物图片
        /// </summary>
        public string FoodImg { get; set; }
        
        /// <summary>
        /// 食物描述
        /// </summary>
        public string FoodDes { get; set; }
    }
}
