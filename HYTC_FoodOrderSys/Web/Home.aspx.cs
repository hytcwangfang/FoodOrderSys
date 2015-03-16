using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class Home : System.Web.UI.Page
    {
        public string noticetext;
        public List<string> foodclassnames;
        protected void Page_Load(object sender, EventArgs e)
        {
            BLL.HomeBLL home = new BLL.HomeBLL();
            noticetext = home.GetNoticeBoard();
            //foodclassnames = home.GetFoodClassNames();
            //this.refoodclass.DataSource = foodclassnames;
            //this.refoodclass.DataBind();
        }
    }
}