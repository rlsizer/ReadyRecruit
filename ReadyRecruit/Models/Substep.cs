//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReadyRecruit.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Substep
    {
        public int SubstepID { get; set; }
        public decimal Number { get; set; }
        public string Name { get; set; }
        public Nullable<System.DateTime> DueDate { get; set; }
        public bool IsDone { get; set; }
        public string Notes { get; set; }
        public decimal Points { get; set; }
        public int HeadstepID { get; set; }
    
        public virtual Headstep Headstep { get; set; }
    }
}