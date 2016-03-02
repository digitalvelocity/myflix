function login()
{
    PageMethods.Login($("#email").val(), $("#password").val(), function (result) {
        if (result)
        {
            location.href = "ManageSubscriptions.aspx";
        }
        else
        {
            alert("login failure!");
        }
    })
}