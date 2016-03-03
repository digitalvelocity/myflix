function pageLoad()
{
    getUser();
}

function getUser()
{
    PageMethods.GetUser(function (result) {
        if (result != null)
        {
            $("#email").val(result.EmailAddress);
            $("#password").val(result.Password);
        }
        else
        {
            alert("Error loading user!");
        }
    });
}