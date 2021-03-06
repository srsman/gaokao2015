using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;

using Basic;
using Entity;
using System.Configuration;

namespace DAL
{
	public class ShiJuan2TiMu
    {
        private static string strCon = ConfigurationManager.ConnectionStrings["ShiTi_ConnectionString"].ConnectionString;

		#region  ShiJuan2TiMu
		/// <summary>
		/// 调用存储过程增加一个
		/// </summary>
		/// <param name="info">实体对象</param>
		/// <returns>正常返回大于 0 的自增id, 0代表重复，否则返回-1</returns>
		public static int ShiJuan2TiMuAdd(Entity.ShiJuan2TiMu info)
		{
			SqlParameter[] prams = {
				SqlDB.MakeInParam("@exam_id", SqlDbType.Int, 4, info.exam_id),
				SqlDB.MakeInParam("@question_id", SqlDbType.VarChar, 64, info.question_id),
				SqlDB.MakeInParam("@q_index", SqlDbType.Int, 4, info.q_index),
				SqlDB.MakeInParam("@subject_id", SqlDbType.Int, 4, info.subject_id),
				SqlDB.MakeInParam("@Id", SqlDbType.Int, 4, info.Id),
			};
			return Basic.Utils.StrToInt(SqlDB.ExecuteScalar(strCon,CommandType.StoredProcedure, "ShiJuan2TiMuAdd", prams).ToString(), -1);
		}
		
		/// <summary>
		/// 调用存储过程修改一个
		/// </summary>
		/// <param name="info">实体对象</param>
		/// <returns>更新成功返回ture，否则返回false</returns>
		public static bool ShiJuan2TiMuEdit(Entity.ShiJuan2TiMu info)
		{
			SqlParameter[] prams = {
				SqlDB.MakeInParam("@OldId", SqlDbType.Int, 4, info.OldId),
				SqlDB.MakeInParam("@exam_id", SqlDbType.Int, 4, info.exam_id),
				SqlDB.MakeInParam("@question_id", SqlDbType.VarChar, 64, info.question_id),
				SqlDB.MakeInParam("@q_index", SqlDbType.Int, 4, info.q_index),
				SqlDB.MakeInParam("@subject_id", SqlDbType.Int, 4, info.subject_id),
				SqlDB.MakeInParam("@Id", SqlDbType.Int, 4, info.Id),
				};
			int intReturnValue = 0;
			intReturnValue = SqlDB.ExecuteNonQuery(strCon,CommandType.StoredProcedure, "ShiJuan2TiMuEdit", prams);
			if(intReturnValue == 1)
				return true;
			return false;
		}
		
		/// <summary>
		/// 获取所有的的值
		/// </summary>
		/// <param name="strWhere">条件，可以为空</param>
		/// <returns>返回DataTable</returns>
		public static DataTable ShiJuan2TiMuList(string strWhere)
		{
			string strSql;
			if (!string.IsNullOrEmpty(strWhere.Trim()))
				strSql = "SELECT * FROM [ShiJuan2TiMu] WHERE "+ strWhere +";";
			else
				strSql = "SELECT * FROM [ShiJuan2TiMu] ;";
			return SqlDB.ExecuteDataset(strCon,CommandType.Text, strSql).Tables[0];
		}
		
		
		/// <summary>
		/// 获取某一个DataTable
		/// </summary>
		/// <param name="OldId">标识</param>
		/// <returns>返回DataTable</returns>
		public static DataTable ShiJuan2TiMuGet(int OldId)
		{
			return SqlDB.ExecuteDataset(strCon,CommandType.Text, "SELECT * FROM [ShiJuan2TiMu] WHERE OldId = "+OldId+";").Tables[0];
		}
		
		/// <summary>
		/// 获取某一个实体
		/// </summary>
		/// <param name="OldId">标识</param>
		/// <returns>返回Entity</returns>
		public static Entity.ShiJuan2TiMu ShiJuan2TiMuEntityGet(int OldId)
		{
			Entity.ShiJuan2TiMu info = new Entity.ShiJuan2TiMu();
			DataTable dt = SqlDB.ExecuteDataset(strCon,CommandType.Text, "SELECT * FROM [ShiJuan2TiMu] WHERE OldId = "+OldId+";").Tables[0];
			if(dt.Rows.Count >0)
			{
				info.OldId = Basic.Utils.StrToInt(dt.Rows[0]["OldId"].ToString(),0);
				info.exam_id = Basic.Utils.StrToInt(dt.Rows[0]["exam_id"].ToString(),0);
				info.question_id = dt.Rows[0]["question_id"].ToString();
				info.q_index = Basic.Utils.StrToInt(dt.Rows[0]["q_index"].ToString(),0);
				info.subject_id = Basic.Utils.StrToInt(dt.Rows[0]["subject_id"].ToString(),0);
				info.Id = Basic.Utils.StrToInt(dt.Rows[0]["Id"].ToString(),0);
			}
			return info;
		}
		
		/// <summary>
		/// 删除一个值
		/// </summary>
		/// <param name="OldId">自增id的值</param>
		/// <returns>删除成功返回ture，否则返回false</returns>
		public static bool ShiJuan2TiMuDel(int OldId)
		{
			int intReturnValue = 0;
			intReturnValue = SqlDB.ExecuteNonQuery(strCon,CommandType.Text, "DELETE [ShiJuan2TiMu]  WHERE OldId =  " + OldId);
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
		public static DataTable ShiJuan2TiMuTopGet(string strWhere,int TopNumber)
		{
			string strSql;
			if (!string.IsNullOrEmpty(strWhere.Trim()))
				strSql = "SELECT TOP " + TopNumber.ToString() + " * FROM [ShiJuan2TiMu] WHERE "+ strWhere +";";
			else
				strSql = "SELECT TOP " + TopNumber.ToString() + " * FROM [ShiJuan2TiMu] ;";
			return SqlDB.ExecuteDataset(strCon,CommandType.Text, strSql).Tables[0];
		}
		
		///
		/// <summary>
		/// 获取前多少的值
		/// </summary>
		/// <param name="TopNumber">数量</param>
		/// <param name="PageSize">每页显示多少个</param>
		/// <param name="PageIndex">当前页码，最少为1</param>
		/// <returns>返回DataTable</returns>
		public static DataTable ShiJuan2TiMuPageList(string strWhere,int PageSize,int PageIndex)
		{
			StringBuilder sbSql = new StringBuilder();
			sbSql.Append("SELECT * FROM ShiJuan2TiMu");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				sbSql.Append(" WHERE " + strWhere);
			}
			sbSql.Append(" ORDER BY OldId DESC");
			DataSet ds = new DataSet();
			ds = SqlDB.ExecuteDataset((PageIndex-1)*PageSize, PageSize, strCon,CommandType.Text, sbSql.ToString());
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
		public static int ShiJuan2TiMuCount(string strWhere)
		{
			string strSql;
			if (!string.IsNullOrEmpty(strWhere.Trim()))
				strSql = "SELECT COUNT(*) FROM [ShiJuan2TiMu] WHERE "+ strWhere +";";
			else
				strSql = "SELECT COUNT(*)  FROM [ShiJuan2TiMu] ;";
			return Basic.Utils.StrToInt(SqlDB.ExecuteScalar(strCon,CommandType.Text, strSql).ToString(), 0);
		}
	#endregion
		
	}
}

