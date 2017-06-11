using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReadyRecruit.Models
{
    public class Pages
    {
        public string Title { get; set; }
        public int NumHeadings { get; set; }
        public string[] Headings { get; set; } = new string[20];
        public int[] NumSubsteps { get; set; } = new int[20];
        public string[,] Substeps { get; set; } = new string[20,20];
        public Nullable<System.DateTime> TitleDue { get; set; }
        public Nullable<System.DateTime>[] HeadingsDue { get; set; } = new Nullable<System.DateTime>[20];
        public Nullable<System.DateTime>[,] SubstepsDue { get; set; } = new Nullable<System.DateTime>[20,20];
        public bool IsTitleDone { get; set; }
        public bool[] IsHeadDone { get; set; } = new bool[20];
        public bool[,] IsSubDone { get; set; } = new bool[20,20];
        public string TitleNotes { get; set; }
        public string[] HeadNotes { get; set; } = new string[20];
        public string[,] SubNotes { get; set; } = new string[20,20];
    }
}