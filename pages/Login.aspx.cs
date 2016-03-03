using System;
using System.Linq;
using System.Web.Script.Services;
using System.Web.Services;
using Core.Domain;

public partial class pages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod, ScriptMethod]
    public static bool Login(string email, string password)
    {
        MyFlixEntities db = new MyFlixEntities();

        User user = db.Users.FirstOrDefault(u => email.ToLower().Equals(email) && u.Password.Equals(password));
        SessionHandler.UserID = user != null ? user.UserID : 0;

        return user != null;
    }

}