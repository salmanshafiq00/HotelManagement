using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

            string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void btn_login_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from UserData where UserName = @uname and Password  = @upass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@uname", txt_user.Text);
            cmd.Parameters.AddWithValue("@upass", txt_password.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["username"] = txt_user.Text;
                Response.Redirect("default.aspx");
            }
            else
            {
                lblmsg.Visible = true;
            }
            con.Close();
        }
    }
}