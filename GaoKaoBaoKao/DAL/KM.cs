using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;

using Basic;
using Entity;

namespace DAL
{
	public class KM
	{
		#region  KM
		/// <summary>
		/// 调用存储过程增加一个
		/// </summary>
		/// <param name="info">实体对象</param>
		/// <returns>正常返回大于 0 的自增id, 0代表重复，否则返回-1</returns>
		public static int KMAdd(Entity.KM info)
		{
			SqlParameter[] prams = {
				SqlDB.MakeInParam("@Title", SqlDbType.NVarChar, 1000, info.Title),
				SqlDB.MakeInParam("@ParentId", SqlDbType.Int, 4, info.ParentId),
				SqlDB.MakeInParam("@Url", SqlDbType.NVarChar, 1000, info.Url),
				SqlDB.MakeInParam("@Content1", SqlDbType.NVarChar, 0, info.Content1),
				SqlDB.MakeInParam("@LinkId", SqlDbType.Int, 4, info.LinkId),
				SqlDB.MakeInParam("@ClassTy", SqlDbType.Int, 4, info.ClassTy),
				SqlDB.MakeInParam("@Content2", SqlDbType.NVarChar, 0, info.Content2),
				SqlDB.MakeInParam("@Content3", SqlDbType.NVarChar, 0, info.Content3),
			};
			return Basic.Utils.StrToInt(SqlDB.ExecuteScalar(CommandType.StoredProcedure, "KMAdd", prams).ToString(), -1);
		}
		
		/// <summary>
		/// 调用存储过程修改一个
		/// </summary>
		/// <param name="info">实体对象</param>
		/// <returns>更新成功返回ture，否则返回false</returns>
		public static bool KMEdit(Entity.KM info)
		{
			SqlParameter[] prams = {
				SqlDB.MakeInParam("@Id", SqlDbType.Int, 4, info.Id),
				SqlDB.MakeInParam("@Title", SqlDbType.NVarChar, 1000, info.Title),
				SqlDB.MakeInParam("@ParentId", SqlDbType.Int, 4, info.ParentId),
				SqlDB.MakeInParam("@Url", SqlDbType.NVarChar, 1000, info.Url),
				SqlDB.MakeInParam("@Content1", SqlDbType.NVarChar, 0, info.Content1),
				SqlDB.MakeInParam("@LinkId", SqlDbType.Int, 4, info.LinkId),
				SqlDB.MakeInParam("@ClassTy", SqlDbType.Int, 4, info.ClassTy),
				SqlDB.MakeInParam("@Content2", SqlDbType.NVarChar, 0, info.Content2),
				SqlDB.MakeInParam("@Content3", SqlDbType.NVarChar, 0, info.Content3),
				};
			int intReturnValue = 0;
			intReturnValue = SqlDB.ExecuteNonQuery(CommandType.StoredProcedure, "KMEdit", prams);
			if(intReturnValue == 1)
				return true;
			return false;
		}
		
		/// <summary>
		/// 获取所有的的值
		/// </summary>
		/// <param name="strWhere">条件，可以为空</param>
		/// <returns>返回DataTable</returns>
		public static DataTable KMList(string strWhere)
		{
			string strSql;
			if (!string.IsNullOrEmpty(strWhere.Trim()))
				strSql = "SELECT * FROM [KM] WHERE "+ strWhere +";";
			else
				strSql = "SELECT * FROM [KM] ;";
			return SqlDB.ExecuteDataset(CommandType.Text, strSql).Tables[0];
		}
		
		
		/// <summary>
		/// 获取某一个DataTable
		/// </summary>
		/// <param name="Id">标识</param>
		/// <returns>返回DataTable</returns>
		public static DataTable KMGet(int Id)
		{
			return SqlDB.ExecuteDataset(CommandType.Text, "SELECT * FROM [KM] WHERE Id = "+Id+";").Tables[0];
		}
		
		/// <summary>
		/// 获取某一个实体
		/// </summary>
		/// <param name="Id">标识</param>
		/// <returns>返回Entity</returns>
		public static Entity.KM KMEntityGet(int Id)
		{
			Entity.KM info = new Entity.KM();
			DataTable dt = SqlDB.ExecuteDataset(CommandType.Text, "SELECT * FROM [KM] WHERE Id = "+Id+";").Tables[0];
			if(dt.Rows.Count >0)
			{
				info.Id = Basic.Utils.StrToInt(dt.Rows[0]["Id"].ToString(),0);
				info.Title = dt.Rows[0]["Title"].ToString();
				info.ParentId = Basic.Utils.StrToInt(dt.Rows[0]["ParentId"].ToString(),0);
				info.Url = dt.Rows[0]["Url"].ToString();
				info.Content1 = dt.Rows[0]["Content1"].ToString();
				info.LinkId = Basic.Utils.StrToInt(dt.Rows[0]["LinkId"].ToString(),0);
				info.ClassTy = Basic.Utils.StrToInt(dt.Rows[0]["ClassTy"].ToString(),0);
				info.Content2 = dt.Rows[0]["Content2"].ToString();
				info.Content3 = dt.Rows[0]["Content3"].ToString();
                return info;
			}
			return null;
		}
		
		/// <summary>
		/// 删除一个值
		/// </summary>
		/// <param name="Id">自增id的值</param>
		/// <returns>删除成功返回ture，否则返回false</returns>
		public static bool KMDel(int Id)
		{
			int intReturnValue = 0;
			intReturnValue = SqlDB.ExecuteNonQuery(CommandType.Text, "DELETE [KM]  WHERE Id =  " + Id);
			if(intReturnValue == 1)
				return true;
			return false;
		}
		
		/// <summary>
		/// 获取前多少的值
		/// </summary>
		/// <param name="strWhere">条件，可以为空</param>
		/// <param name="TopNumber">数量</param>
		/// <returns>返回DataTable</returns>
		public static DataTable KMTopGet(string strWhere,int TopNumber)
		{
			string strSql;
			if (!string.IsNullOrEmpty(strWhere.Trim()))
				strSql = "SELECT TOP " + TopNumber.ToString() + " * FROM [KM] WHERE "+ strWhere +";";
			else
				strSql = "SELECT TOP " + TopNumber.ToString() + " * FROM [KM] ;";
			return SqlDB.ExecuteDataset(CommandType.Text, strSql).Tables[0];
		}
		
		///
		/// <summary>
		/// 获取前多少的值
		/// </summary>
		/// <param name="TopNumber">数量</param>
		/// <param name="PageSize">每页显示多少个</param>
		/// <param name="PageIndex">当前页码，最少为1</param>
		/// <returns>返回DataTable</returns>
		public static DataTable KMPageList(string strWhere,int PageSize,int PageIndex)
		{
			StringBuilder sbSql = new StringBuilder();
			sbSql.Append("SELECT * FROM KM");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				sbSql.Append(" WHERE " + strWhere);
			}
			sbSql.Append(" ORDER BY Id DESC");
			DataSet ds = new DataSet();
			ds = SqlDB.ExecuteDataset((PageIndex-1)*PageSize, PageSize, CommandType.Text, sbSql.ToString());
			if (ds.Tables.Count > 0)
			{
			    return ds.Tables[0];
			}
			return new DataTable();
		}
		
		/// <summary>
		/// 获取该条件下的总的数量
		/// </summary>
		/// <param name="strWhere">条件，可以为空</param>
		/// <returns>如果没有就返回0</returns>
		public static int KMCount(string strWhere)
		{
			string strSql;
			if (!string.IsNullOrEmpty(strWhere.Trim()))
				strSql = "SELECT COUNT(*) FROM [KM] WHERE "+ strWhere +";";
			else
				strSql = "SELECT COUNT(*)  FROM [KM] ;";
			return Basic.Utils.StrToInt(SqlDB.ExecuteScalar(CommandType.Text, strSql).ToString(), 0);
		}
	#endregion
		
	}
}

