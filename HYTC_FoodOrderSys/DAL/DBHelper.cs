//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Data.Common;
//using System.Data;
//using System.Data.SqlClient;

//namespace DAL
//{
//    public static class DBHelper
//    {
//        private static readonly string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString.ToString();
//        private static readonly string providerName = "System.Data.SqlClient";
//        /// <summary>
//        /// GetConnection 用于获取连接数据库的 connection 对象
//        /// </summary>
//        /// <returns></returns>
//        private static DbConnection GetConnection()
//        {
//            DbProviderFactory _factory = DbProviderFactories.GetFactory(providerName);
//            DbConnection connection = _factory.CreateConnection();
//            connection.ConnectionString = connectionString;
//            return connection;
//        }
//        /// <summary>
//        /// GetCommand 获取命令参数 command 对象
//        /// </summary>
//        /// <param name="commandText"></param>
//        /// <param name="commandType"></param>
//        /// <param name="connection"></param>
//        /// <returns></returns>
//        private static DbCommand GetCommand(string commandText, CommandType commandType, DbConnection connection)
//        {
//            DbCommand command = connection.CreateCommand();
//            command.CommandText = commandText;
//            command.CommandType = commandType;
//            return command;
//        }

//        /// <summary>
//        /// GetCommand 方法重载
//        /// </summary>
//        /// <param name="commandText">sql语句</param>
//        /// <param name="connection"></param>
//        /// <returns></returns>
//        private static DbCommand GetCommand(string commandText, DbConnection connection)
//        {
//            DbCommand command = connection.CreateCommand();
//            command.CommandText = commandText;
//            command.CommandType = CommandType.Text;
//            return command;
//        }
//        /// <summary>
//        /// GetParameter 用于为命令设置参数
//        /// </summary>
//        /// <param name="paramName"></param>
//        /// <param name="paramValue"></param>
//        /// <param name="command"></param>
//        /// <returns></returns>
//        private static DbParameter GetParameter(string paramName, object paramValue, DbCommand command)
//        {
//            DbParameter parameter = command.CreateParameter();
//            parameter.ParameterName = paramName;
//            parameter.Value = paramValue;
//            return parameter;
//        }
//        public static DataTable ExecuteTableSP(string sql, params SqlParameter[] param)
//        {
//            return ExecuteTable(sql, CommandType.StoredProcedure, param);
//        }
//        /// <summary>
//        /// 执行查询
//        /// </summary>
//        /// <param name="text">查询用的sql语句或存储过程</param>
//        /// <param name="ct">CommanType</param>
//        /// <param name="param">参数</param>
//        /// <returns></returns>
//        public static DataTable ExecuteDataTable(string text, CommandType ct)
//        {
//            using (SqlConnection conn = new SqlConnection(connectionString))
//            {
//                DataTable dt = new DataTable();
//                using (SqlCommand cmd = new SqlCommand(text, conn))
//                {

//                    cmd.CommandType = ct;
//                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
//                    {
//                        sda.Fill(dt);
//                    }
//                }
//                return dt;
//            }
//        }

//        public static DataTable ExecuteTableSql(string sql, params SqlParameter[] param)
//        {
//            return ExecuteTable(sql, CommandType.Text, param);
//        }

//        private static DataTable ExecuteTable(string txt, CommandType ct, params SqlParameter[] param)
//        {
//            using (SqlConnection conn = new SqlConnection(connectionString))
//            {
//                SqlCommand cmd = new SqlCommand(txt, conn);
//                cmd.CommandType = ct;
//                cmd.Parameters.AddRange(param);
//                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
//                {
//                    DataTable dt = new DataTable();
//                    sda.Fill(dt);
//                    return dt;
//                }

//            }
//        }
//        /// <summary>
//        /// 执行无参的存储过程
//        /// </summary>
//        /// <param name="sqlCommand">存储过程名</param>
//        /// <returns></returns>
//        public static int ExecuteNonQueryProc(string sqlCommand)
//        {
//            int result = 0;
//            using (DbConnection connection = GetConnection())
//            {
//                DbCommand command = GetCommand(sqlCommand, CommandType.StoredProcedure, connection);
//                connection.Open();
//                result = command.ExecuteNonQuery();
//                command.Parameters.Clear();
//            }
//            return result;
//        }
//        /// <summary>
//        /// 执行无返回值有参数的存储过程
//        /// </summary>
//        /// <param name="sqlCommand">存储过程名</param>
//        /// <param name="parameters">参数</param>
//        /// <returns></returns>
//        public static int ExecuteNonQueryProc(string sqlCommand, Dictionary<string, object> parameters)
//        {
//            int result = 0;
//            using (DbConnection connection = GetConnection())
//            {
//                DbCommand command = GetCommand(sqlCommand, CommandType.StoredProcedure, connection);
//                foreach (KeyValuePair<string, object> p in parameters)
//                {
//                    command.Parameters.Add(GetParameter(p.Key, p.Value, command));
//                }
//                connection.Open();
//                result = command.ExecuteNonQuery();
//                command.Parameters.Clear();
//            }
//            return result;
//        }

//        /// <summary>
//        /// 执行无返回值的sql语句
//        /// </summary>
//        /// <param name="sqlCommand"></param>
//        /// <param name="parameters"></param>
//        public static int ExecuteNonQuery(string sqlCommand)
//        {
//            int result = 0;
//            using (DbConnection connection = GetConnection())
//            {
//                DbCommand command = GetCommand(sqlCommand, CommandType.Text, connection);
//                connection.Open();
//                result = command.ExecuteNonQuery();
//                command.Parameters.Clear();
//                return result;
//            }
//        }
//        /// <summary>
//        /// 执行有参数的sql语句
//        /// </summary>
//        /// <param name="sqlCommand"></param>
//        /// <param name="para"></param>
//        /// <returns></returns>
//        public static int ExecuteNonQuery(string sqlCommand, Dictionary<string, object> para)
//        {
//            int result = 0;
//            using (DbConnection connection = GetConnection())
//            {
//                DbCommand command = GetCommand(sqlCommand, CommandType.Text, connection);
//                foreach (KeyValuePair<string, object> p in para)
//                {
//                    command.Parameters.Add(GetParameter(p.Key, p.Value, command));
//                }
//                connection.Open();
//                result = command.ExecuteNonQuery();
//                command.Parameters.Clear();
//                return result;
//            }
//        }

//        /// <summary>
//        /// 执行增删改
//        /// </summary>
//        /// <param name="txt"></param>
//        /// <param name="ct"></param>
//        /// <param name="param"></param>
//        /// <returns></returns>
//        public static int ExecuteNonQuery(string txt, CommandType ct, params SqlParameter[] param)
//        {
//            using (SqlConnection conn = new SqlConnection(connectionString))
//            {
//                using (SqlCommand cmd = new SqlCommand(txt, conn))
//                {
//                    cmd.CommandType = ct;
//                    cmd.Parameters.AddRange(param);

//                    conn.Open();
//                    return cmd.ExecuteNonQuery();
//                }
//            }
//        }
//        /// <summary>
//        /// 执行有返回值无参数的存储过程
//        /// </summary>
//        /// <param name="cmdText"></param>
//        /// <returns></returns>
//        public static object ExecuteScalarProc(string cmdText)
//        {
//            using (DbConnection connection = GetConnection())
//            {
//                DbCommand command = GetCommand(cmdText, CommandType.StoredProcedure, connection);
//                connection.Open();
//                object val = command.ExecuteScalar();
//                command.Parameters.Clear();
//                return val;
//            }
//        }
//        /// <summary>
//        /// 执行有返回值的有参数的存储过程
//        /// </summary>
//        /// <param name="cmdText">存储过程名</param>
//        /// <param name="para">参数</param>
//        /// <returns></returns>
//        public static object ExecuteScalarProc(string cmdText, Dictionary<string, object> para)
//        {
//            using (DbConnection connection = GetConnection())
//            {
//                DbCommand command = GetCommand(cmdText, CommandType.StoredProcedure, connection);
//                foreach (KeyValuePair<string, object> p in para)
//                {
//                    command.Parameters.Add(GetParameter(p.Key, p.Value, command));
//                }
//                connection.Open();
//                object val = command.ExecuteScalar();
//                command.Parameters.Clear();
//                return val;
//            }
//        }
//        /// <summary>
//        /// 执行有返回值的sql语句
//        /// </summary>
//        /// <param name="cmdText"></param>
//        /// <returns></returns>
//        public static object ExecuteScalar(string cmdText)
//        {
//            using (DbConnection connection = GetConnection())
//            {
//                DbCommand command = GetCommand(cmdText, CommandType.Text, connection);
//                connection.Open();
//                object val = command.ExecuteScalar();
//                command.Parameters.Clear();
//                return val;
//            }
//        }
//        /// <summary>
//        /// 执行有返回值有参数的sql语句
//        /// </summary>
//        /// <param name="cmdText"></param>
//        /// <param name="para"></param>
//        /// <returns></returns>
//        public static object ExecuteScalar(string cmdText, Dictionary<string, object> para)
//        {
//            using (DbConnection connection = GetConnection())
//            {
//                DbCommand command = GetCommand(cmdText, CommandType.Text, connection);
//                foreach (KeyValuePair<string, object> p in para)
//                {
//                    command.Parameters.Add(GetParameter(p.Key, p.Value, command));
//                }
//                connection.Open();
//                object val = command.ExecuteScalar();
//                command.Parameters.Clear();
//                return val;
//            }
//        }
//        /// <summary>
//        /// 执行无参数的存储过程,返回DbDataReader对象
//        /// </summary>
//        /// <param name="sqlCommand">存储过程名</param>
//        /// <returns></returns>
//        public static DbDataReader GetReaderProc(string sqlCommand)
//        {
//            try
//            {
//                DbConnection connection = GetConnection();
//                DbCommand command = GetCommand(sqlCommand, CommandType.StoredProcedure, connection);
//                connection.Open();
//                DbDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
//                return reader;
//            }
//            catch (Exception ex)
//            {
//                Console.Write("" + ex.Message);
//                return null;
//            }
//        }
//        /// <summary>
//        /// 执行有参数的存储过程,返回DbDataReader对象
//        /// </summary>
//        /// <param name="sqlCommand"></param>
//        /// <param name="parameters"></param>
//        /// <returns></returns>
//        public static DbDataReader GetReaderProc(string sqlCommand, Dictionary<string, object> parameters)
//        {
//            try
//            {
//                DbConnection connection = GetConnection();
//                DbCommand command = GetCommand(sqlCommand, CommandType.StoredProcedure, connection);
//                foreach (KeyValuePair<string, object> p in parameters)
//                {
//                    command.Parameters.Add(GetParameter(p.Key, p.Value, command));
//                }
//                connection.Open();
//                DbDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
//                command.Parameters.Clear();
//                return reader;
//            }
//            catch
//            {
//                return null;
//            }
//        }
//        #region
//        /// <summary>
//        /// 执行无参数的sql语句,返回DbDataReader对象
//        /// </summary>
//        /// <param name="sqlCommand"></param>
//        /// <returns></returns>
//        public static DbDataReader GetReader(string sqlCommand)
//        {
//            try
//            {
//                DbConnection connection = GetConnection();
//                DbCommand command = GetCommand(sqlCommand, CommandType.Text, connection);
//                connection.Open();
//                DbDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
//                command.Parameters.Clear();
//                return reader;
//            }
//            catch (Exception ex)
//            {
//                Console.Write("" + ex.Message);
//                return null;
//            }
//        }
//        #endregion
//        /// <summary>
//        /// 执行有参数的sql语句,返回DbDataReader对象
//        /// </summary>
//        /// <param name="sqlCommand"></param>
//        /// <param name="parameters"></param>
//        /// <returns></returns>
//        public static DbDataReader GetReader(string sqlCommand, Dictionary<string, object> parameters)
//        {
//            try
//            {
//                DbConnection connection = GetConnection();
//                DbCommand command = GetCommand(sqlCommand, CommandType.Text, connection);
//                foreach (KeyValuePair<string, object> p in parameters)
//                {
//                    command.Parameters.Add(GetParameter(p.Key, p.Value, command));
//                }
//                connection.Open();
//                DbDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
//                command.Parameters.Clear();
//                return reader;
//            }
//            catch (Exception ex)
//            {
//                Console.Write("" + ex.Message);
//                return null;
//            }
//        }
//        /// <summary>
//        /// 返回DataTable对象
//        /// </summary>
//        /// <param name="safeSql"></param>
//        /// <returns></returns>
//        public static DataTable GetDataSet(string safeSql)
//        {
//            using (DbConnection connection = GetConnection())
//            {
//                DbProviderFactory _factory = DbProviderFactories.GetFactory(providerName);
//                DbCommand command = GetCommand(safeSql, CommandType.Text, connection);
//                connection.Open();
//                DbDataAdapter da = _factory.CreateDataAdapter();
//                da.SelectCommand = command;
//                DataTable datatable = new DataTable();
//                da.Fill(datatable);
//                return datatable;
//            }
//        }
//    }
//}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class DBHelper
    {
        private SqlConnection Connection;
        private SqlCommand Command;

        #region 构造函数
        public DBHelper()
        {
            Connection = new SqlConnection();
            //Connection.ConnectionString = "server=.;database=FoodOrder;uid=sa;pwd=123;";
            Connection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString.ToString();
            Command = Connection.CreateCommand();
        }
        #endregion

        #region 打开数据库连接
        /// <summary>
        /// 打开数据库连接
        /// </summary>
        public void Open()
        {
            if (Connection.State != ConnectionState.Open)
            {
                Connection.Open();
            }
        }
        #endregion

        #region 关闭数据库连接
        /// <summary>
        /// 关闭数据库连接
        /// </summary>
        public void Close()
        {
            if (Connection.State != ConnectionState.Closed)
            {
                Connection.Close();
            }
        }
        #endregion

        #region 添加参数
        /// <summary>
        /// 添加参数
        /// </summary>
        /// <param name="direction">参数方向</param>
        /// <param name="parameterName">参数名称</param>
        /// <param name="sqlDbType">参数类型</param>
        /// <param name="size">参数长度</param>
        /// <param name="value">参数值</param>
        public void AddParameter(ParameterDirection direction, string parameterName, SqlDbType sqlDbType, int size, object value)
        {
            SqlParameter para = new SqlParameter();
            para.Direction = direction;
            para.ParameterName = parameterName;
            para.SqlDbType = sqlDbType;
            if (size > 0)
            {
                para.Size = size;
            }
            if (value != null)
            {
                para.Value = value;
            }

            Command.Parameters.Add(para);
        }
        #endregion

        #region 获取参数值
        /// <summary>
        /// 获取参数值
        /// </summary>
        /// <param name="parameterName">参数名称</param>
        /// <returns></returns>
        public object GetParameterValue(string parameterName)
        {
            return Command.Parameters[parameterName].Value;
        }
        #endregion

        #region 清除参数
        /// <summary>
        /// 清除参数
        /// </summary>
        public void ClearParameter()
        {
            Command.Parameters.Clear();
        }
        #endregion

        #region 获取DataReader 对象
        /// <summary>
        /// 获取DataReader 对象
        /// </summary>
        /// <param name="sql">T-SQL语句</param>
        /// <param name="commandType">语句类型</param>
        /// <returns></returns>
        public SqlDataReader ExecuteReader(string sql, CommandType commandType)
        {                         
            Command.CommandText = sql;
            Command.CommandType = commandType;
            Open();
            return Command.ExecuteReader();
        }
        #endregion

        #region 执行T-SQL语句
        /// <summary>
        /// 执行T-SQL语句
        /// </summary>
        /// <param name="sql">T-SQL语句</param>
        /// <param name="commandType">语句类型</param>
        /// <returns></returns>
        public int ExecuteNonQuery(string sql, CommandType commandType)
        {
            Command.CommandText = sql;
            Command.CommandType = commandType;
            Open();
            int i = Command.ExecuteNonQuery();
            Close();
            return i;
        }
        #endregion

        #region 返回第一行第一列的值
        /// <summary>
        /// 返回第一行第一列的值
        /// </summary>
        /// <param name="sql">T-SQL语句</param>
        /// <param name="commandType">语句类型</param>
        /// <returns></returns>
        public object ExecuteScalar(string sql, CommandType commandType)
        {
            Command.CommandText = sql;
            Command.CommandType = commandType;
            Open();
            object obj = Command.ExecuteScalar();
            Close();
            return obj;
        }
        #endregion
    }
}

