using System;
using System.Linq;
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
    public static bool LinkSubscription(int serviceProdiverID)
    {
        MyFlixEntities db = new MyFlixEntities();

        if (db.UserSubscriptions.Any(u=>u.UserID == SessionHandler.UserID && u.ServiceProviderID == serviceProdiverID))
        {
            return false;
        }
        else
        {
            UserSubscription us = new UserSubscription { UserID = SessionHandler.UserID, ServiceProviderID = serviceProdiverID, NewPayment = 9.99M, OldPayment = 10.99M, SubscribedDate = DateTime.UtcNow };
            db.UserSubscriptions.Add(us);
            db.SaveChanges();

            return true;
        }
    }
}