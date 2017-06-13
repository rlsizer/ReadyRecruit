using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReadyRecruit.Models
{
    public class StepsViewModel
    {

        public string Title { get; set; }
        public int NumHeadings { get; set; }
        public string[] Headings { get; set; }
        public int NumSubsteps { get; set; }
        public string[] Substeps { get; set; }
        public Nullable<System.DateTime> TitleDue { get; set; }
        public Nullable<System.DateTime>[] HeadingsDue { get; set; }
        public Nullable<System.DateTime>[] SubstepsDue { get; set; }
        public bool IsTitleDone { get; set; }
        public bool[] IsHeadDone { get; set; }
        public bool[] IsSubDone { get; set; }
        public string TitleNotes { get; set; }
        public string[] HeadNotes { get; set; }
        public string[] SubNotes { get; set; }

        //public Profile profile { get; set; }
        //public Link link { get; set; }

        //public virtual ICollection<Mainstep> Mainsteps { get; set; }
        //public virtual ICollection<Headstep> Headsteps { get; set; }
        //public virtual ICollection<Substep> Substeps { get; set; }
        //public virtual ICollection<MainStat> MainStats { get; set; }
        //public virtual ICollection<HeadStat> HeadStats { get; set; }
        //public virtual ICollection<SubStat> SubStats { get; set; }



        //public Mainstep mainstep { get; set; }
        //public Headstep headstep { get; set; }
        //public Substep substep { get; set; }
        //public MainStat mainStat { get; set; }
        //public HeadStat headStat { get; set; }
        //public SubStat subStat { get; set; }
    }
}