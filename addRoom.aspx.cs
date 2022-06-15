using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication19
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {          
            var param = sdcRoomDetails.InsertParameters;
            param["RoomNo"].DefaultValue = txt_roomNo.Text;
            param["RoomType"].DefaultValue = ddType.SelectedValue;
            param["Amount"].DefaultValue = ddlAmount.SelectedItem.Text;
            param["Description"].DefaultValue = txt_desc.Text;
            param["RoomPhoto"].DefaultValue = Session["Image"].ToString();
            param["RoomStatus"].DefaultValue = ddStutus.SelectedValue;
            sdcRoomDetails.Insert();    
        }

        protected void btn_preview_Click(object sender, EventArgs e)
        {
            string fileName = System.IO.Path.GetFileName(fuPhoto.FileName);
            string localPath = Server.MapPath("~/Images/") + fileName;
            string serverPath = "~/Images/" + fileName;
            fuPhoto.PostedFile.SaveAs(localPath);

            room_img.ImageUrl = serverPath;
            Session["Image"] = serverPath;
        }
    }
}