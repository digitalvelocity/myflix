function createAccount()
{
    if (validateFields())
    {
        alert("pass");
    }
    else
    {
        alert("fail");
    }
}

function validateFields()
{
    (".form-control").each(function ()
    {
        if (($this).val() == "")
        {
            return false;
        }
    });
    return true;
}