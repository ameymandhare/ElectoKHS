//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ElectoSystem.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class thousedesignation
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public thousedesignation()
        {
            this.thousenominations = new HashSet<thousenomination>();
        }
    
        public int Hsd_Id { get; set; }
        public Nullable<int> Hsd_HouseId { get; set; }
        public string Hsd_Name { get; set; }
        public string Hsd_Description { get; set; }
        public string Hsd_DesCode { get; set; }
        public Nullable<int> Hsd_Gender { get; set; }
        public Nullable<bool> Hsd_IsDeleted { get; set; }
        public Nullable<System.DateTime> Hsd_DeletedDate { get; set; }
        public Nullable<int> Hsd_DeletedBy { get; set; }
        public Nullable<System.DateTime> Hsd_LastUpdatedDate { get; set; }
        public Nullable<int> Hsd_LastUpdatedBy { get; set; }
    
        public virtual tgender tgender { get; set; }
        public virtual thous thous { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<thousenomination> thousenominations { get; set; }
    }
}
