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
    
    public partial class trole
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public trole()
        {
            this.tstaffs = new HashSet<tstaff>();
        }
    
        public int Rol_RoleId { get; set; }
        public Nullable<bool> Rol_CanAdd { get; set; }
        public Nullable<bool> Rol_CanEdit { get; set; }
        public Nullable<bool> Rol_CanDelete { get; set; }
        public Nullable<bool> Rol_CanView { get; set; }
        public Nullable<bool> Rol_IsDeleted { get; set; }
        public Nullable<System.DateTime> Rol_DeletedDate { get; set; }
        public Nullable<int> Rol_DeletedBy { get; set; }
        public Nullable<System.DateTime> Rol_LastUpdatedDate { get; set; }
        public Nullable<int> Rol_LastUpdatedBy { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tstaff> tstaffs { get; set; }
    }
}
