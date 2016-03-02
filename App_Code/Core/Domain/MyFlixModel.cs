﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class CreditCard
    {
        public int CreditCardID { get; set; }
        public int UserID { get; set; }
        public string CardNumber { get; set; }
        public string NameOnCard { get; set; }
        public string SecurityCode { get; set; }
        public string ExpMonth { get; set; }
        public string ExpYear { get; set; }
        public string BillingAddress1 { get; set; }
        public string BillingAddress2 { get; set; }
        public string BillingCity { get; set; }
        public string BillingState { get; set; }
        public string BillingZip { get; set; }
        public string BillingCountry { get; set; }
    }
}
namespace Core.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class ServiceProvider
    {
        public int ServiceProviderID { get; set; }
        public string Name { get; set; }
        public string PlayerURL { get; set; }
        public string APIUserName { get; set; }
        public string APIPassword { get; set; }
    }
}
namespace Core.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public int UserID { get; set; }
        public string EmailAddress { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string ProfilePhotoPath { get; set; }
        public System.DateTime DateCreated { get; set; }
        public bool IsActive { get; set; }
    }
}
namespace Core.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserProfile
    {
        public int UserID { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string Zip { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public string Phone { get; set; }
    }
}
namespace Core.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserSubscription
    {
        public int UserID { get; set; }
        public int ServiceProviderID { get; set; }
        public Nullable<decimal> OldPayment { get; set; }
        public Nullable<decimal> NewPayment { get; set; }
        public Nullable<System.DateTime> SubscribedDate { get; set; }
    }
}
namespace Core.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class view_UserSubscription
    {
        public string SubscriptionProvider { get; set; }
        public int UserID { get; set; }
        public int ServiceProviderID { get; set; }
        public Nullable<decimal> OldPayment { get; set; }
        public Nullable<decimal> NewPayment { get; set; }
        public Nullable<System.DateTime> SubscribedDate { get; set; }
    }
}