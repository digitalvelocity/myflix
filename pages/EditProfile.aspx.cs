﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;
using System.Web.Services;
using Core.Domain;

public partial class EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (SessionHandler.UserID == 0)
            {
                Response.Redirect("Login.aspx");
                Response.End();
            }
        }
    }

    [WebMethod,ScriptMethod]
    public static User GetUser()
    {
        MyFlixEntities db = new MyFlixEntities();

        return db.Users.FirstOrDefault(u => u.UserID == SessionHandler.UserID);
    }
}