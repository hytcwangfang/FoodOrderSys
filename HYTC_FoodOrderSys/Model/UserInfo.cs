using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class UserInfo
    {
        /// <summary>
        /// 用户昵称
        /// </summary>
        public string UserName { get; set; }

        /// <summary>
        /// 用户密码
        /// </summary>
        public string UserPwd { get; set; }

        /// <summary>
        /// 用户状态编号
        /// </summary>
        public int UserStateId { get; set; }

        /// <summary>
        /// 用户手机号（主键）
        /// </summary>
        public string UserPhone { get; set; }

        /// <summary>
        /// 用户地址
        /// </summary>
        public string UserAddress { get; set; }

        /// <summary>
        /// 用户QQ
        /// </summary>
        public int UserQQ { get; set; }

        /// <summary>
        /// 用户邮件地址
        /// </summary>
        public string UserMail { get; set; }
    }
}
