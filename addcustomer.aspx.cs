using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication19
{
    public partial class addcustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {      
            var param = sdcCustomer.InsertParameters;
            param["CustomerID"].DefaultValue = txt_cusID.Text;
            param["CustomerName"].DefaultValue = txt_cusName.Text;
            param["Address"].DefaultValue = txt_cusAddr.Text;
            param["IsMarried"].DefaultValue = ck_married.Checked ? "true" : "false";
            param["MobileNo"].DefaultValue = txt_cusMob.Text;
            param["NumberOfMember"].DefaultValue = txt_cusMem.Text;
            param["CustomerPhoto"].DefaultValue = Session["Image"].ToString();
            sdcCustomer.Insert();
        }

        protected void btn_preview_Click(object sender, EventArgs e)
        {
            string fileName = System.IO.Path.GetFileName(fuUpload.FileName);
            string localPath = Server.MapPath("~/Images/") + fileName;
            string serverPath = "~/Images/" + fileName;
            fuUpload.PostedFile.SaveAs(localPath);
            Session["Image"] = serverPath;
            cust_img.ImageUrl = serverPath;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Convert.ToInt32(args.Value) > 1000)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}