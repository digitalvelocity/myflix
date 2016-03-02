var userID = 1;

function getUserSubscriptions()
{
    PageMethods.GetUserSubscriptions(userID, function (result) {
        if (result != null && result.length > 0)
        {
            var tb = "";
            for (var i=0; i<result.length; i++)
            {
                var tr = "<tr class=\"odd gradeX\">";
                
                tr += "<td>" + result[i].SubscriptionProvider + "</td>";
                if (result[i].SubscribedDate != null) // subscribed
                {
                    tr += "<td align=\"center\">" + "<button type=\"button\" class=\"btn btn-success\"></button>" + "</td>";
                    tr += "<td align=\"center\"></td>"
                    tr += "<td align=\"center\">" + "<button type=\"button\" class=\"btn btn-warning btn-circle\"><i class=\"fa fa-times\"></i></button>" + "</td>";
                }
                else
                {
                    tr += "<td align=\"center\">" + "<button type=\"button\" class=\"btn btn-default\"></button>" + "</td>";
                    tr += "<td align=\"center\">" + "<button type=\"button\" class=\"btn btn-info btn-circle\"><i class=\"fa fa-check\"></i></button>" + "</td>";
                    tr += "<td align=\"center\"></td>"
                }

                tr += "<td>" + "$" + result[i].NewPayment + "</td>";
                tr += "<td>" + "$" + result[i].OldPayment + "</td>";
                tb += tr;
            }
            $("#tbUserSubscriptions").html(tb);
        }
        else
        {
            alert("nothing");
        }
    });
}