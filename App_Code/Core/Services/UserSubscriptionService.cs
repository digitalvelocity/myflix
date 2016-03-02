using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Core.Domain;

/// <summary>
/// Summary description for UserSubscriptionService
/// </summary>
public class UserSubscriptionService
{
    public UserSubscriptionService()
    {
        
    }

    public List<view_UserSubscription> GetUserSubscriptions(int userID)
    {
        MyFlixEntities db = new MyFlixEntities();
        return db.view_UserSubscription.Where(v => v.UserID.Equals(userID)).ToList();
    }
}