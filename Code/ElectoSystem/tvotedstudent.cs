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
    
    public partial class tvotedstudent
    {
        public int Vst_Id { get; set; }
        public string Vst_StudentKey { get; set; }
        public Nullable<bool> Vst_IVFHouse { get; set; }
        public Nullable<bool> Vst_IVFSenate { get; set; }
    
        public virtual tstudent tstudent { get; set; }
    }
}
