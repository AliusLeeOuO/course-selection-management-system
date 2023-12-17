using System.Data;
using System.Data.SqlClient;


namespace WebApplication2
{
    public class Database
    {
        // private string connstr = WebApplication2.Properties.Settings.Default.con;
        private string connstr = WebApplication2.utilities.JsonConfigReader.GetConnectionString();
        //用于添加、删除、修改的sql语句执行
        public  void ExecSQL(string sql)
        {
            SqlConnection con = new SqlConnection(connstr);
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = sql;
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
        public DataTable SelectSQL(string sql)
        {
            SqlConnection con = new SqlConnection(connstr);
            con.Open();
            DataTable ds = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sql,con);

            da.Fill(ds);
            con.Close();
            return ds;
        }

    }
}