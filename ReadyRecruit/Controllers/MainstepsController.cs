using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ReadyRecruit.Models;
using Microsoft.AspNet.Identity;

namespace ReadyRecruit.Controllers
{
    public class MainstepsController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: Mainsteps
        public ActionResult Index()
        {
            var mainsteps = db.Mainsteps.Include(m => m.Roadmap);
            return View(mainsteps.ToList());
        }

        public ActionResult StepPage()
        {
            //get userid
            var currentUserId = User.Identity.GetUserId();

            //get profileID for that user
            var userProfileID = (from pr in db.Profiles
                                 where pr.Id == currentUserId
                                 select pr.ProfileID).FirstOrDefault();
            //var profiles = db.Profiles.Include(p => p.Education).Include(p => p.Gender).Include(p => p.MaritalStat).Include(p => p.PriorService).Include(p => p.AspNetUser);

            //get users roadmaps (from the link table)
            var userLinks = (from l in db.Links
                             where l.ProfileID == userProfileID
                             select l.LinkID);

            //if they don't have a link yet or their title or branch is still undecided,
            //create link to the undecided roadmap (ID=6) unless it already exists
            var undRoadmapID = 6;
            var userRoadmapID = -1;
            var userLinkID = -1;
            //check profile for branch selection
            var userBranch = (from pr in db.Profiles
                              select pr.Branch).FirstOrDefault();
            //check profile for title selection
            var userTitle = (from pr in db.Profiles
                             select pr.Title).FirstOrDefault();

            //user has no links and has no title or branch specified:    create undecided branch
            if (userLinks.IsNullOrEmpty() && (userBranch.IsNullOrEmpty() || userTitle.IsNullOrEmpty()))
            {
                userRoadmapID = undRoadmapID;
                //find the last LinkID
                var lastLink = (from l in db.Links
                                select l.LinkID).ToList();
                var lastLinkID = lastLink[lastLink.Count - 1];
                //set table values and save new Link entry to database
                Link newlink = new Link();
                newlink.LinkID = lastLinkID + 1;
                newlink.ProfileID = userProfileID;
                newlink.RoadmapID = userRoadmapID;
                db.Links.Add(newlink);
                db.SaveChanges();
                userLinkID = newlink.LinkID;
            }
            else if (userLinks.IsNullOrEmpty())
            {
                //user has no links but has decided on title AND branch: create link
                userRoadmapID = GetRoadmapID(userBranch, userTitle);
                //find the last LinkID
                var lastLink = (from l in db.Links
                                select l.LinkID).ToList();
                var lastLinkID = lastLink[lastLink.Count - 1];
                //set table values and save new Link entry to database
                Link newlink = new Link();
                newlink.LinkID = lastLinkID + 1;
                newlink.ProfileID = userProfileID;
                newlink.RoadmapID = userRoadmapID;
                db.Links.Add(newlink);
                db.SaveChanges();
                userLinkID = newlink.LinkID;
            }
            else
            //user has link -- if it is not the right one, create it
            {
                if (userBranch.IsNullOrEmpty() || userTitle.IsNullOrEmpty())
                {
                    userRoadmapID = undRoadmapID;
                }
                else
                {
                    userRoadmapID = GetRoadmapID(userBranch, userTitle);
                }
                //see if link exists
                userLinks = (from l in db.Links
                             where l.ProfileID == userProfileID &&
                                   l.RoadmapID == userRoadmapID
                             select l.LinkID);
                //if not, create it
                if (userLinks.IsNullOrEmpty())
                {
                    var lastLink = (from l in db.Links
                                    select l.LinkID).ToList();
                    var lastLinkID = lastLink[lastLink.Count - 1];
                    //set table values and save new Link entry to database
                    Link newlink = new Link();
                    newlink.LinkID = lastLinkID + 1;
                    newlink.ProfileID = userProfileID;
                    newlink.RoadmapID = userRoadmapID;
                    db.Links.Add(newlink);
                    db.SaveChanges();
                    userLinkID = newlink.LinkID;
                }
                //if so, save LinkID
                else
                {
                    userLinkID = userLinks.FirstOrDefault();
                }
            }

            //now, put data in the viewModel
            //profile of current user
            var profiles = (from pr in db.Profiles
                            where pr.Id == currentUserId
                            select pr);
            //Link table for current user and roadmap selection
            var links = (from l in db.Links
                         where l.ProfileID == userProfileID &&
                               l.RoadmapID == userRoadmapID
                         select l);
            //Mainsteps for Roadmap selected
            var mainsteps = (from m in db.Mainsteps
                             where m.RoadmapID == userRoadmapID
                             orderby m.Number
                             select m).ToList();

            //Headsteps
            var headsteps = (from h in db.Headsteps
                             select h).ToList();
            //Substeps
            var substeps = (from s in db.Substeps
                            select s).ToList();
            //MainStats for LinkID (user/roadmap)
            var mainStats = (from ms in db.MainStats
                             where ms.LinkID == userLinkID
                             select ms).ToList();
            //HeadStats for current Headsteps and LinkID (user/roadmap)
            var headStats = (from hs in db.HeadStats
                             where hs.LinkID == userLinkID
                             select hs).ToList();
            //SubStats for current Substeps and LinkID (user/roadmap)
            var subStats = (from ss in db.SubStats
                            where ss.LinkID == userLinkID
                            select ss).ToList();


            //var viewModel = new StepsViewModel
            //{
            ////    profile = profiles.Last(),
            //    link = links.Last(),
            //    Mainsteps = mainsteps,
            //    Headsteps = headsteps,
            //    Substeps = substeps,
            //    MainStats = mainStats,
            //    HeadStats = headStats,
            //    SubStats = subStats
            //};
            int count = 0;
            int subcount = 0;
            Pages pages = new Pages();
            Pages one = new Pages();
            Pages two = new Pages();
            Pages three = new Pages();

            foreach (var m in mainsteps)        //loop through mainsteps - prepare pages 1, 2, 3
            {
                if (m.Number > 3) continue;
                pages.Title = m.Name;                                //send title
                pages.MainID = m.MainstepID;                         //send MainstepID

                mainStats = (from ms in db.MainStats
                             where ms.LinkID == userLinkID &&
                             ms.MainstepID == m.MainstepID
                             select ms).ToList();
                if (mainStats.Count() > 0)
                {
                    pages.TitleDue = mainStats[0].DueDate;             //send title due date
                    pages.IsTitleDone = mainStats[1].IsDone;           //send title isDone status
                    pages.TitleNotes = mainStats[2].Notes;             //send title notes
                }
                headsteps = (from h in db.Headsteps
                             where h.MainstepID == m.MainstepID
                             orderby h.Number
                             select h).ToList();
                pages.NumHeadings = headsteps.Count();
                if (pages.NumHeadings > 0)
                {
                    count = 0;
                    foreach (var h in headsteps)
                    {
                        count += 1;
                        pages.Headings[count] = h.Name;            //send heading name
                        pages.HeadID[count] = h.HeadstepID;        //send HeadstepID

                        headStats = (from hs in db.HeadStats
                                     where hs.LinkID == userLinkID &&
                                     hs.HeadstepID == h.HeadstepID
                                     select hs).ToList();
                        if (headStats.Count() > 0)
                        {
                            pages.HeadingsDue[count] = headStats[0].DueDate;   //send heading due date
                            pages.IsHeadDone[count] = mainStats[1].IsDone;     //send heading isDone status
                            pages.HeadNotes[count] = mainStats[2].Notes;       //send heading notes
                        }
                        substeps = (from s in db.Substeps
                                    where s.HeadstepID == h.HeadstepID
                                    orderby s.Number
                                    select s).ToList();
                        pages.NumSubsteps[count] = substeps.Count();
                        if (pages.NumSubsteps[count] > 0)
                        {
                            subcount = 0;
                            foreach (var s in substeps)
                            {
                                subcount += 1;
                                pages.Substeps[count, subcount] = s.Name;    //send substep name
                                pages.SubID[count, subcount] = s.SubstepID; //send SubstepID

                                subStats = (from ss in db.SubStats
                                            where ss.LinkID == userLinkID &&
                                            ss.SubstepID == s.SubstepID
                                            select ss).ToList();
                                if (subStats.Count() > 0)
                                {
                                    pages.SubstepsDue[count, subcount] = subStats[0].DueDate; //send substep due date
                                    pages.IsSubDone[count, subcount] = subStats[1].IsDone;    //send substep isDone status
                                    pages.SubNotes[count, subcount] = subStats[2].Notes;      //send substep notes
                                }
                            }
                        }

                    }
                }
                if (m.Number == 1)
                {
                    //name = name + m.Number.ToString();
                    one = new Pages
                    {
                        LinkID = userLinkID,
                        Title = pages.Title,
                        MainID = pages.MainID,
                        NumHeadings = pages.NumHeadings,
                        Headings = pages.Headings,
                        HeadID = pages.HeadID,
                        NumSubsteps = pages.NumSubsteps,
                        Substeps = pages.Substeps,
                        SubID = pages.SubID,
                        TitleDue = pages.TitleDue,
                        HeadingsDue = pages.HeadingsDue,
                        SubstepsDue = pages.SubstepsDue,
                        IsTitleDone = pages.IsTitleDone,
                        IsHeadDone = pages.IsHeadDone,
                        IsSubDone = pages.IsSubDone,
                        TitleNotes = pages.TitleNotes,
                        HeadNotes = pages.HeadNotes,
                        SubNotes = pages.SubNotes
                    };
                }
                if (m.Number == 2)
                {
                    two = new Pages
                    {
                        LinkID = userLinkID,
                        Title = pages.Title,
                        MainID = pages.MainID,
                        NumHeadings = pages.NumHeadings,
                        Headings = pages.Headings,
                        HeadID = pages.HeadID,
                        NumSubsteps = pages.NumSubsteps,
                        Substeps = pages.Substeps,
                        SubID = pages.SubID,
                        TitleDue = pages.TitleDue,
                        HeadingsDue = pages.HeadingsDue,
                        SubstepsDue = pages.SubstepsDue,
                        IsTitleDone = pages.IsTitleDone,
                        IsHeadDone = pages.IsHeadDone,
                        IsSubDone = pages.IsSubDone,
                        TitleNotes = pages.TitleNotes,
                        HeadNotes = pages.HeadNotes,
                        SubNotes = pages.SubNotes
                    };
                }

                if (m.Number == 3) three = pages;
                {
                    three = new Pages
                    {
                        LinkID = userLinkID,
                        Title = pages.Title,
                        MainID = pages.MainID,
                        NumHeadings = pages.NumHeadings,
                        Headings = pages.Headings,
                        HeadID = pages.HeadID,
                        NumSubsteps = pages.NumSubsteps,
                        Substeps = pages.Substeps,
                        SubID = pages.SubID,
                        TitleDue = pages.TitleDue,
                        HeadingsDue = pages.HeadingsDue,
                        SubstepsDue = pages.SubstepsDue,
                        IsTitleDone = pages.IsTitleDone,
                        IsHeadDone = pages.IsHeadDone,
                        IsSubDone = pages.IsSubDone,
                        TitleNotes = pages.TitleNotes,
                        HeadNotes = pages.HeadNotes,
                        SubNotes = pages.SubNotes
                    };
                }

            }

            ViewData["PageOne"] = one;
            ViewData["PageTwo"] = two;
            ViewData["PageThree"] = three;

            return View();

        }

        // GET: Items/ToggleDone/5   (Add ability to toggle the IsDone box from the view)
        public ActionResult ToggleDone(int linkID, int stepID, int key)
        {
            var userStatID = -1;

            //create stat table if it doesn't already exist (for linkID and stepID)
            //if (key == 1)
            //{
            //    var stats = (from m in db.MainStats
            //                 where m.LinkID == linkID &&
            //                 m.MainstepID == stepID
            //                 select m).ToList();
            //    if (stats.IsNullOrEmpty())
            //    {
            //        var lastStat = (from m in db.MainStats
            //                        select m.LinkID).ToList();
            //        var lastStatID = lastStat[lastStat.Count - 1];
            //        //set table values and save new Stat entry to database
            //        MainStat newStat = new MainStat();
            //        newStat.LinkID = lastStatID + 1;
            //        newStat.IsDone = false;
            //        newStat.MainstepID = stepID;
            //        newStat.LinkID = linkID;
            //        db.MainStats.Add(newStat);
            //        db.SaveChanges();
            //        userStatID = newStat.LinkID;
            //    }
            //    else
            //    {
            //        var statID = (from m in db.MainStats
            //                      where m.LinkID == linkID &&
            //                      m.MainstepID == stepID
            //                      select m.MainStatID);
            //        userStatID = statID.FirstOrDefault();
            //    }
            //    //toggle isDone now that we know it exists!
            //    MainStat item = db.MainStats.Find(userStatID);
            //    if (item.IsDone==true)
            //    {
            //        item.IsDone = false;
            //    }
            //    else
            //    {
            //        item.IsDone = true;
            //    }
            //    db.SaveChanges();   //saves change to the database
            //}
            //else if (key == 2)
            //{
            //    var stats = (from h in db.HeadStats
            //                 where h.LinkID == linkID &&
            //                 h.HeadstepID == stepID
            //                 select h).ToList();
            //    if (stats.IsNullOrEmpty())
            //    {
            //        var lastStat = (from h in db.HeadStats
            //                        select h.LinkID).ToList();
            //        var lastStatID = lastStat[lastStat.Count - 1];
            //        //set table values and save new Stat entry to database
            //        HeadStat newStat = new HeadStat();
            //        newStat.LinkID = lastStatID + 1;
            //        newStat.IsDone = false;
            //        newStat.HeadstepID = stepID;
            //        newStat.LinkID = linkID;
            //        db.HeadStats.Add(newStat);
            //        db.SaveChanges();
            //        userStatID = newStat.LinkID;
            //    }
            //    else
            //    {
            //        var statID = (from s in db.HeadStats
            //                      where s.LinkID == linkID &&
            //                      s.HeadstepID == stepID
            //                      select s.HeadStatID);
            //        userStatID = statID.FirstOrDefault();
            //    }
            //    //toggle isDone now that we know it exists!
            //    HeadStat item = db.HeadStats.Find(userStatID);
            //    if (item.IsDone == true)
            //    {
            //        item.IsDone = false;
            //    }
            //    else
            //    {
            //        item.IsDone = true;
            //    }
            //    db.SaveChanges();   //saves change to the database
            //}
            //else if (key == 3)
            //{
                var stats = (from s in db.SubStats
                             where s.LinkID == linkID &&
                             s.SubstepID == stepID
                             select s);
                if (stats.IsNullOrEmpty())
                {
                    var lastStat = (from s in db.SubStats
                                    select s.LinkID).ToList();
                    var lastStatID = lastStat[lastStat.Count - 1];
                    //set table values and save new Stat entry to database
                    SubStat newStat = new SubStat();
                    newStat.LinkID = lastStatID + 1;
                    newStat.IsDone = false;
                    newStat.SubstepID = stepID;
                    newStat.LinkID = linkID;
                    db.SubStats.Add(newStat);
                    db.SaveChanges();
                    userStatID = newStat.LinkID;
                }
                else
                {
                    var statID = (from s in db.SubStats
                                 where s.LinkID == linkID &&
                                 s.SubstepID == stepID
                                 select s.SubStatID);
                    userStatID = statID.FirstOrDefault();
                }
                //toggle isDone now that we know it exists!
                SubStat item = db.SubStats.Find(userStatID);
                if (item.IsDone == true)
                {
                    item.IsDone = false;
                }
                else
                {
                    item.IsDone = true;
                }
                db.SaveChanges();   //saves change to the database             
            //}
            //else
            //{
            //    //error!!!!! key must be 1, 2 or 3
            //}

             return View();
            //return RedirectToAction("Index");  //this goes to the method above and calls the View   
    }


    // GET: Mainsteps/Details/5
    public ActionResult Details(int? id)
    {
        if (id == null)
        {
            return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        }
        Mainstep mainstep = db.Mainsteps.Find(id);
        if (mainstep == null)
        {
            return HttpNotFound();
        }
        return View(mainstep);
    }



    // GET: Mainsteps/Create
    public ActionResult Create()
    {
        ViewBag.RoadmapID = new SelectList(db.Roadmaps, "RoadmapID", "RoadmapName");
        return View();
    }


    // POST: Mainsteps/Create
    // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
    // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
    [HttpPost]
    [ValidateAntiForgeryToken]
    public ActionResult Create([Bind(Include = "MainstepID,Number,Name,DueDate,IsDone,Notes,Points,RoadmapID")] Mainstep mainstep)
    {
        if (ModelState.IsValid)
        {
            db.Mainsteps.Add(mainstep);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        ViewBag.RoadmapID = new SelectList(db.Roadmaps, "RoadmapID", "RoadmapName", mainstep.RoadmapID);
        return View(mainstep);
    }

    // GET: Mainsteps/Edit/5
    public ActionResult Edit(int? id)
    {
        if (id == null)
        {
            return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        }
        Mainstep mainstep = db.Mainsteps.Find(id);
        if (mainstep == null)
        {
            return HttpNotFound();
        }
        ViewBag.RoadmapID = new SelectList(db.Roadmaps, "RoadmapID", "RoadmapName", mainstep.RoadmapID);
        return View(mainstep);
    }

    // POST: Mainsteps/Edit/5
    // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
    // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
    [HttpPost]
    [ValidateAntiForgeryToken]
    public ActionResult Edit([Bind(Include = "MainstepID,Number,Name,DueDate,IsDone,Notes,Points,RoadmapID")] Mainstep mainstep)
    {
        if (ModelState.IsValid)
        {
            db.Entry(mainstep).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        ViewBag.RoadmapID = new SelectList(db.Roadmaps, "RoadmapID", "RoadmapName", mainstep.RoadmapID);
        return View(mainstep);
    }

    // GET: Mainsteps/Delete/5
    public ActionResult Delete(int? id)
    {
        if (id == null)
        {
            return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        }
        Mainstep mainstep = db.Mainsteps.Find(id);
        if (mainstep == null)
        {
            return HttpNotFound();
        }
        return View(mainstep);
    }

    // POST: Mainsteps/Delete/5
    [HttpPost, ActionName("Delete")]
    [ValidateAntiForgeryToken]
    public ActionResult DeleteConfirmed(int id)
    {
        Mainstep mainstep = db.Mainsteps.Find(id);
        db.Mainsteps.Remove(mainstep);
        db.SaveChanges();
        return RedirectToAction("Index");
    }

    protected override void Dispose(bool disposing)
    {
        if (disposing)
        {
            db.Dispose();
        }
        base.Dispose(disposing);
    }
    public int GetRoadmapID(string branch, string title)
    {
        int RoadmapID = 6;
        if (branch == "in the Army" && title == "enlisted")
        {
            RoadmapID = 1;
        }
        else if (branch == "in the Airforce" && title == "enlisted")
        {
            RoadmapID = 2;
        }
        else if (branch == "in the Navy" && title == "enlisted")
        {
            RoadmapID = 3;
        }

        return RoadmapID;
    }
}

public static class IsNullOrEmptyExtension
{
    public static bool IsNullOrEmpty(this IEnumerable source)
    {
        if (source != null)
        {
            foreach (object obj in source)
            {
                return false;
            }
        }
        return true;
    }

    public static bool IsNullOrEmpty<T>(this IEnumerable<T> source)
    {
        if (source != null)
        {
            foreach (T obj in source)
            {
                return false;
            }
        }
        return true;
    }
}
}
