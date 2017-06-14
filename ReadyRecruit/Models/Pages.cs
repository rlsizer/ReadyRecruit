using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReadyRecruit.Models
{
    public class Pages
    {
        public int LinkID { get; set; }
        public int NumPages { get; set; }
        public string[] Title { get; set; } = new string[20];
        public int[] MainID { get; set; } = new int[20];
        public int[] MStatID { get; set; } = new int[20];
        public int[] NumHeadings { get; set; } = new int[20];
        public string[,] Headings { get; set; } = new string[20,20];
        public int[,] HeadID { get; set; } = new int[20,20];
        public int[,] HStatID { get; set; } = new int[20,20];
        public int[,] NumSubsteps { get; set; } = new int[20,20];
        public string[,,] Substeps { get; set; } = new string[20,20,20];
        public int[,,] SubID { get; set; } = new int[20, 20,20];
        public int[,,] SStatID { get; set; } = new int[20,20,20];
        public Nullable<System.DateTime>[] TitleDue { get; set; } = new Nullable<System.DateTime>[20];
        public Nullable<System.DateTime>[,] HeadingsDue { get; set; } = new Nullable<System.DateTime>[20,20];
        public Nullable<System.DateTime>[,,] SubstepsDue { get; set; } = new Nullable<System.DateTime>[20,20,20];
        public bool[] IsTitleDone { get; set; } = new bool[20];
        public bool[,] IsHeadDone { get; set; } = new bool[20,20];
        public bool[,,] IsSubDone { get; set; } = new bool[20,20,20];
        public string[] TitleNotes { get; set; } = new string[20];
        public string[,] HeadNotes { get; set; } = new string[20,20];
        public string[,,] SubNotes { get; set; } = new string[20,20,20];
        public int Ihead { get; set; }    
        public int Jsub { get; set; }
    }
}