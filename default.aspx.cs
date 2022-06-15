﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagement
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                
                lblMsg.Text = " Welcome to dashboard Mr/Mrs " + Session["username"];

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}