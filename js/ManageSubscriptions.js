function getUserSubscriptions()
{
    PageMethods.GetUserSubscriptions(function (result) {
        if (result != null && result.length > 0)
        {
            var tb = "";
            var totalNewPayment = 0;
            var totalOldPayment = 0;
            for (var i=0; i<result.length; i++)
            {
                var tr = "<tr class=\"odd gradeX\">";
                
                tr += "<td>" + result[i].SubscriptionProvider + "</td>";
                if (result[i].SubscribedDate != null) // subscribed
                {
                    tr += "<td align=\"center\">" + "<button type=\"button\" class=\"btn btn-success\"></button>" + "</td>";
                    tr += "<td align=\"center\"></td>"
                    if (result[i].NewPayment != 0)
                    {
                        tr += "<td align=\"center\">" + "<button type=\"button\" class=\"btn btn-warning btn-circle\" onclick=\"updateUserSubscription(" + result[i].UserSubscriptionID + ",false)\"><i class=\"fa fa-times\"></i></button>" + "</td>";
                    }
                    else
                    {
                        tr += "<td></td>";
                    }
                }
                else
                {
                    tr += "<td align=\"center\">" + "<button type=\"button\" class=\"btn btn-default\"></button>" + "</td>";
                    tr += "<td align=\"center\">" + "<button type=\"button\" class=\"btn btn-info btn-circle\" onclick=\"updateUserSubscription(" + result[i].UserSubscriptionID + ",true)\"><i class=\"fa fa-check\"></i></button>" + "</td>";
                    tr += "<td align=\"center\"></td>"
                }

                if (result[i].NewPayment != 0)
                {
                    tr += "<td>" + "$" + result[i].NewPayment + "</td>";
                    totalNewPayment += result[i].NewPayment;

                    if (result[i].SubscribedDate != null)
                    {
                        tr += "<td>" + "$" + result[i].OldPayment + "</td>";
                        totalOldPayment += result[i].OldPayment;
                    }
                    else
                    {
                        tr += "<td>" + "N.A.</td>";
                    }
                }
                else
                {
                    tr += "<td>Subscribed</td><td>Subscribed</td>";
                }

               


                tr += "<td>" + "<a target=\"blank\" href=\"" + result[i].PlayerURL + "\">Watch Now</a></td>"; 
                tr += "<td>" + "<a data-toggle=\"modal\" data-target=\"#contractModal\">View</a>" + "</td>";
                tb += tr;
            }
            var footer = "<tr class=\"odd gradeX\"><td></td><td></td><td></td><td></td><td><b>" + "$" + totalNewPayment.toFixed(2) + "</b></td><td><b>" + "$" + totalOldPayment.toFixed(2) + "</b></td><td></td><td></td>";
            tb += footer;

            $("#tbUserSubscriptions").html(tb);
        }
    });
}

function updateUserSubscription(userSubscriptionID, subscribed)
{
    PageMethods.UpdateUserSubscription(userSubscriptionID, subscribed, function (result) {
            getUserSubscriptions();
    });
}