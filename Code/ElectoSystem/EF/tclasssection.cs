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
    
    public partial class tclasssection
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tclasssection()
        {
            this.thousenominations = new HashSet<thousenomination>();
            this.tsenatenominations = new HashSet<tsenatenomination>();
            this.tstudents = new HashSet<tstudent>();
        }
    
        public int Csc_Id { get; set; }
        public Nullable<int> Csc_ClassId { get; set; }
        public Nullable<int> Csc_SectionId { get; set; }
        public string Csc_DisplayName { get; set; }
        public Nullable<bool> Csc_IsDeleted { get; set; }
        public Nullable<System.DateTime> Csc_DeletedDate { get; set; }
        public Nullable<int> Csc_DeletedBy { get; set; }
        public Nullable<System.DateTime> Csc_LastUpdatedDate { get; set; }
        public Nullable<int> Csc_LastUpdatedBy { get; set; }
    
        public virtual tclass tclass { get; set; }
        public virtual tsection tsection { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<thousenomination> thousenominations { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tsenatenomination> tsenatenominations { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tstudent> tstudents { get; set; }
    }
}
