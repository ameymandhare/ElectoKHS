//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ElectoSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class thouseelection
    {
        public thouseelection()
        {
            this.thousenominations = new HashSet<thousenomination>();
        }
    
        public int Hel_ElectionId { get; set; }
        public System.DateTime Hel_StartDate { get; set; }
        public System.DateTime Hel_EndDate { get; set; }
        public string Hel_Description { get; set; }
    
        public virtual ICollection<thousenomination> thousenominations { get; set; }
    }
}
