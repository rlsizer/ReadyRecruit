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
    using System.ComponentModel.DataAnnotations;

    public partial class Mainstep
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Mainstep()
        {
            this.Headsteps = new HashSet<Headstep>();
        }
    
        public int MainstepID { get; set; }

        [Required]
        public decimal Number { get; set; }

        [Required]
        public string Name { get; set; }


        public Nullable<System.DateTime> DueDate { get; set; }

        [Required, Display(Name = "Finished?")]
        public bool IsDone { get; set; }

        public string Notes { get; set; }

        [Required]
        public decimal Points { get; set; }

        public int RoadmapID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Headstep> Headsteps { get; set; }
        public virtual Roadmap Roadmap { get; set; }
    }
}
