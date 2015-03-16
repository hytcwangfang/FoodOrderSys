using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;

namespace Web
{
    /// <summary>
    /// WebService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消对下行的注释。
    [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        public string connectionstring = System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString.ToString();
        

        [WebMethod(EnableSession = true)]
        public bool checklogin(string phone, string pwd)
        {
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                using (SqlCommand cmd = new SqlCommand("select userPhone from UserInfo where userPhone = '"+ phone +"' and userPwd = '"+ pwd +"'",con))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            //session
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            }

        }

        [WebMethod(EnableSession = true)]
        public string GetFoodList(int foodclassid, string minprice, string maxprice)
        {
            string html = "";
            string sql = "";
            if (foodclassid == 0)
            {
                if (minprice == "all")
	            {
                    //种类为全部，价位为全部
		            sql = "select foodClassId,foodDes,foodId,foodImg,foodName,foodPrice from FoodInfo";
	            }else if(minprice != "all" && maxprice == "all")
	            {
                    //种类为全部，价位在最高价格区间
                    int minmoney = Convert.ToInt32(minprice);
                    sql = "select foodClassId,foodDes,foodId,foodImg,foodName,foodPrice from FoodInfo where foodPrice > " + minmoney + "";
	            }
            }
            else 
            {
                if (minprice == "all") 
                { 
                    //价位为全部，种类部位全部
                    int classid = Convert.ToInt32(foodclassid);
                    sql = "select foodClassId,foodDes,foodId,foodImg,foodName,foodPrice from FoodInfo where foodClassId = " + classid + "";
                }
                else if (minprice != "all" && maxprice == "all")
                {
                    int classid = Convert.ToInt32(foodclassid);
                    int minmoney = Convert.ToInt32(minprice);
                    sql = "select foodClassId,foodDes,foodId,foodImg,foodName,foodPrice from FoodInfo where foodClassId = " + classid + " and foodPrice > " + minmoney + "";
                }
            }
            using (SqlConnection con = new SqlConnection(connectionstring) )
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql,con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataSet ds = new DataSet();
                        da.Fill(ds,"foodlist");
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            int foodId = Convert.ToInt32(ds.Tables[0].Rows[i]["foodId"]); 
                            string foodImg = ds.Tables[0].Rows[i]["foodImg"].ToString();
                            string foodName = ds.Tables[0].Rows[i]["foodName"].ToString();
                            Double foodPrice = Convert.ToDouble(ds.Tables[0].Rows[i]["foodPrice"]);
                            html += "<li>";
                            html += "   <a href='FoodDetail.aspx?foodid="+foodId+"' target='_blank'><img src='"+foodImg+"' class='foodimg' /></a>";
                            html += "   <div class='fooddes'>";
                            html += "       <strong>名称：</strong>";
                            html += "       <span>"+foodName+"</span>";
                            html += "   </div>";
                            html += "   <div class='fooddes'>";
                            html += "       <strong>价格：</strong>";
                            html += "       <span>￥"+foodPrice+"</span>";
                            html += "   </div>";
                            html += "   <div class='fooddes'>";
                            html += "       <strong>已售：</strong>";
                            html += "       <img src='images_tool/qiyifaith2.jpg' class='likestar' />";
                            html += "   </div>";
                            html += "</li>";
                        }
                    }
                }
            }
            return html;
        }
    }
}
