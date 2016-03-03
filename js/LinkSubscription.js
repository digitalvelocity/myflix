function linkSubscription()
{
    var serviceProviderID = $("#serviceprovider").val();

    PageMethods.LinkSubscription(serviceProviderID, function (result) {
        if (result)
        {
            location.href = "ManageSubscriptions.aspx";
        }
        else
        {
            alert("You have already subscribed to this service provider.")
        }
    });
}