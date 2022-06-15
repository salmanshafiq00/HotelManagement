using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagement
{
    public partial class EditCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btn_preview_Click(object sender, EventArgs e)
        {
            FileUpload fu1 = (FileUpload)LVListCustomer.EditItem.FindControl("fuCustPhoto");
          
            if (fu1.HasFile)
            {
                string fileName = System.IO.Path.GetFileName(fu1.FileName);
                string localPath = Server.MapPath("~/Images") + "/" + fileName;
                string serverPath = "~/Images" + "/" + fileName;

                if (System.IO.File.Exists(localPath))
                {
                    System.IO.File.Delete(localPath);
                }
                else
                {
                    fu1.PostedFile.SaveAs(localPath);

                }

                Image img = (Image)LVListCustomer.EditItem.FindControl("editImage");
                img.ImageUrl = serverPath;
            }
        }
    }
}