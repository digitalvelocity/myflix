using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for SessionHandler
/// </summary>
public static class SessionHandler
{
    
    private static string _userIDKey = "UserID";

    public static int UserID
    {
        get
        {
            if (HttpContext.Current.Session[_userIDKey] == null)
            {
                HttpContext.Current.Session[_userIDKey] = 0;
            }
            return (int)HttpContext.Current.Session[_userIDKey];
        }
        set
        {
            HttpContext.Current.Session[_userIDKey] = value;
        }
    }
    
}
