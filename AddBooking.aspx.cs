using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication19
{
    public partial class AddBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            var roomSelectNo = ddRoomNo.SelectedItem.Text;
            var param = sdcAddBookings.InsertParameters;
            param["BookingID"].DefaultValue = txt_bookId.Text;
            param["CustomerID"].DefaultValue = ddCustID.SelectedItem.Value;
            param["RoomNo"].DefaultValue = roomSelectNo;
            param["BookFrom"].DefaultValue = bookFrom.Text;
            param["BookTo"].DefaultValue = bookTo.Text;
            var rowAffected = sdcAddBookings.Insert();

            string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            string query = "Update tblRoom Set RoomStatus = @rStatus where RoomNo = @slctRoomNo";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@rStatus", 2);
            cmd.Parameters.AddWithValue("@slctRoomNo", roomSelectNo);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            if (rowAffected > 0)
            {
                lblMsg.Text = " Data Inserted.";
                displayMsg.Visible = true;
            }
            Clear();

        }

        public void Clear()
        {
            txt_bookId.Text = string.Empty;
            ddCustID.SelectedItem.Value = string.Empty;
            ddRoomNo.SelectedItem.Text = string.Empty;
            bookFrom.Text = string.Empty;
            bookTo.Text = string.Empty;
        }
    }
}