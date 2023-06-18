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
    
    public partial class tstudent
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tstudent()
        {
            this.thousenominations = new HashSet<thousenomination>();
            this.tsenatenominations = new HashSet<tsenatenomination>();
            this.tvotedstudents = new HashSet<tvotedstudent>();
        }
    
        public int stud_Id { get; set; }
        public string stud_Key { get; set; }
        public string stud_FirstName { get; set; }
        public string stud_MiddleName { get; set; }
        public string stud_LastName { get; set; }
        public Nullable<System.DateTime> stud_DoB { get; set; }
        public Nullable<int> stud_GenderId { get; set; }
        public Nullable<int> stud_ClassSectionId { get; set; }
        public Nullable<int> stud_HouseId { get; set; }
        public Nullable<bool> stud_IsActive { get; set; }
        public string stud_Password { get; set; }
        public Nullable<System.DateTime> stud_CreatedDate { get; set; }
        public Nullable<int> stud_CreatedBy { get; set; }
        public Nullable<bool> stud_IsDeleted { get; set; }
        public Nullable<System.DateTime> stud_DeletedDate { get; set; }
        public Nullable<int> stud_DeletedBy { get; set; }
        public Nullable<System.DateTime> stud_LastUpdatedDate { get; set; }
        public Nullable<int> stud_LastUpdatedBy { get; set; }
        public string stud_Photo { get; set; }
        public string tstudentcol { get; set; }
    
        public virtual tclasssection tclasssection { get; set; }
        public virtual tgender tgender { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<thousenomination> thousenominations { get; set; }
        public virtual thous thous { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tsenatenomination> tsenatenominations { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tvotedstudent> tvotedstudents { get; set; }
    }
}
