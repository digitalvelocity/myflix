using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Domain;
using System.Web.Script.Services;
using System.Web.Services;


public partial class pages_ManageSubscriptions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [ScriptMethod,WebMethod]
    public static List<view_UserSubscription> GetUserSubscriptions(int userID)
    {
        MyFlixEntities db = new MyFlixEntities();
        return db.view_UserSubscription.Where(v => v.UserID.Equals(userID)).ToList();
    }
}