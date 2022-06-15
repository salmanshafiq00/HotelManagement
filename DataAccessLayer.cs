using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HotelManagement
{
    [DataObject(true)]
    public class DataAccessLayer
    {
        static string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<RoomType> GetRoomType()
        {
            List<RoomType> roomTypeList = new List<RoomType>();
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * from tblRoomType";
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                RoomType roomType = new RoomType();
                roomType.RoomTypeID = Convert.ToInt32(dr["RoomTypeID"]);
                roomType.RoomTypeName = dr["RoomTypeName"].ToString();
                roomTypeList.Add(roomType);
            }
            con.Close();
            return roomTypeList;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static RoomType GetSelectedType(int RoomTypeID)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = $"Select * from tblRoomType where RoomTypeID = {RoomTypeID}";
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            RoomType roomType = new RoomType();
            while (dr.Read())
            {
                roomType.RoomTypeID = Convert.ToInt32(dr["RoomTypeID"]);
                roomType.RoomTypeName = dr["RoomTypeName"].ToString();
            }
            con.Close();
            return roomType;
        }
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public static int InsertRoomTrype(int RoomTypeID, string RoomTypeName)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = $"Insert Into tblRoomType Values({RoomTypeID}, '{RoomTypeName}')";
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public static int UpdateRoomTrype(int RoomTypeID, string RoomTypeName)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = $"Update tblRoomType  set RoomTypeID = {RoomTypeID}, RoomTypeName ='{RoomTypeName}' where RoomTypeID = {RoomTypeID}";
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public static int DeleteGroup(int RoomTypeID)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = $"Delete from tblRoomType where RoomTypeID = {RoomTypeID}";
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }

    }
}