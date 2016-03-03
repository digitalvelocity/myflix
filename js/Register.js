function createAccount()
{
    if (validateFields())
    {
        PageMethods.CreateAccount($("#email").val(), $("#password").val(), function (result) {
            if (result)
            {
                document.location.href = "Login.aspx";
            }
            else
            {
                $("#divEmail").addClass("has-error");
                $("#divPassword").addClass("has-error");
                alert("Error creating account!")
            }
        });
    }
    else
    {
        alert("Please enter required fields.");
    }
}

function validateFields()
{
    return $("#email").val().length > 0 && $("#password").val().length > 0;
}