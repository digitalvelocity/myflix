using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Domain;
using System.Web.Script.Services;
using System.Web.Services;


public partial class ManageSubscriptions : System.Web.UI.Page
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

    [ScriptMethod, WebMethod]
    public static bool UpdateUserSubscription(int userID, int serviceProviderID, bool subscribed)
    {
        MyFlixEntities db = new MyFlixEntities();
        UserSubscription us = db.UserSubscriptions.FirstOrDefault(u => u.UserID.Equals(userID) && u.ServiceProviderID.Equals(serviceProviderID));
        if (us != null)
        {
            if (subscribed)
            {
                us.SubscribedDate = DateTime.UtcNow;
            }
            else
            {
                us.SubscribedDate = null;
            }

            db.UserSubscriptions.Attach(us);
            db.Entry(us).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();

            return true;
        }

        return false;
    }
}