using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;
using System.Web.Services;
using Core.Domain;

public partial class Register : System.Web.UI.Page
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

    [WebMethod, ScriptMethod]
    public static bool CreateAccount(string email, string password)
    {
        MyFlixEntities db = new MyFlixEntities();

        if (db.Users.Any(u=>u.EmailAddress.ToLower().Equals(email.ToLower())))
        {
            return false;
        }
        else
        {
            User user = new User
            {
                EmailAddress = email,
                Password = password,
                DateCreated = DateTime.UtcNow,
                IsActive = true,
                ProfilePhotoPath = "",
             };
            db.Users.Add(user);
            db.SaveChanges();

            return true;
        }
    }
}