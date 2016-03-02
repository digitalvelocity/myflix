using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;
using System.Web.Services;

public partial class pages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod, ScriptMethod]
    public static bool Login(string email, string password)
    {
        return string.Compare(email,"testuser@myflix.com",true) == 0  && password.Equals("password123");
    }

}