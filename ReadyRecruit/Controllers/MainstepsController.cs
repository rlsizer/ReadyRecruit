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
                            select pr).FirstOrDefault();
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
            int mcount = 0;
            int count = 0;
            int subcount = 0;
            Pages pages = new Pages();
            pages.PointsTotal = 0;
            pages.PointsEarned = 0;
            int maincount = mainsteps.Count();
            pages.NumPages = maincount;
            foreach (var m in mainsteps)        //loop through mainsteps - prepare pages 1, 2, 3
            {
                mcount += 1;
                //if (m.Number > 3) continue;
                pages.Title[mcount] = m.Name;                                //send title
                pages.MainID[mcount] = m.MainstepID;                         //send MainstepID

                mainStats = (from ms in db.MainStats
                             where ms.LinkID == userLinkID &&
                             ms.MainstepID == m.MainstepID
                             select ms).ToList();
                if (mainStats.Count() > 0)
                {
                    pages.MStatID[mcount] = (from ms in db.MainStats
                                     where ms.LinkID == userLinkID &&
                                     ms.MainstepID == m.MainstepID
                                     select ms.MainStatID).FirstOrDefault();     //send title status id
                    pages.TitleDue[mcount] = (from ms in db.MainStats
                                      where ms.LinkID == userLinkID &&
                                      ms.MainstepID == m.MainstepID
                                      select ms.DueDate).FirstOrDefault();        //send title due date
                    pages.IsTitleDone[mcount] = (from ms in db.MainStats
                                         where ms.LinkID == userLinkID &&
                                         ms.MainstepID == m.MainstepID
                                         select ms.IsDone).FirstOrDefault();       //send title isDone status
                    pages.TitleNotes[mcount] = (from ms in db.MainStats
                                        where ms.LinkID == userLinkID &&
                                        ms.MainstepID == m.MainstepID
                                        select ms.Notes).FirstOrDefault();         //send title notes
                }
                else   //must create status table
                {
                    var lastStat = (from ms in db.MainStats
                                    select ms.MainStatID).ToList();
                    var lastStatID = -1;
                    if (lastStat.Count() < 1)
                    {
                        lastStatID = 1;
                    }
                    else
                    {
                        lastStatID = lastStat[lastStat.Count - 1];
                    }

                    //set table values and save new stat entry to database
                    MainStat newStat = new MainStat();
                    newStat.MainStatID = lastStatID + 1;
                    newStat.IsDone = false;
                    newStat.MainstepID = m.MainstepID;
                    newStat.LinkID = userLinkID;
                    db.MainStats.Add(newStat);
                    db.SaveChanges();
                    pages.MStatID[mcount] = newStat.MainStatID;
                }
                headsteps = (from h in db.Headsteps
                             where h.MainstepID == m.MainstepID
                             orderby h.Number
                             select h).ToList();
                pages.NumHeadings[mcount] = headsteps.Count();
                if (pages.NumHeadings[mcount] > 0)
                {
                    count = 0;
                    foreach (var h in headsteps)
                    {
                        count += 1;
                        pages.Headings[mcount,count] = h.Name;            //send heading name
                        pages.HeadID[mcount,count] = h.HeadstepID;        //send HeadstepID

                        headStats = (from hs in db.HeadStats
                                     where hs.LinkID == userLinkID &&
                                     hs.HeadstepID == h.HeadstepID
                                     select hs).ToList();
                        if (headStats.Count() > 0)
                        {
                            pages.HStatID[mcount,count] = (from hs in db.HeadStats
                                             where hs.LinkID == userLinkID &&
                                             hs.HeadstepID == h.HeadstepID
                                             select hs.HeadStatID).FirstOrDefault();     //send heaing status id
                            pages.HeadingsDue[mcount,count] = (from hs in db.HeadStats
                                              where hs.LinkID == userLinkID &&
                                              hs.HeadstepID == h.HeadstepID
                                              select hs.DueDate).FirstOrDefault();        //send heading due date
                            pages.IsHeadDone[mcount,count] = (from hs in db.HeadStats
                                                 where hs.LinkID == userLinkID &&
                                                 hs.HeadstepID == h.HeadstepID
                                                 select hs.IsDone).FirstOrDefault();       //send heading isDone status
                            pages.HeadNotes[mcount,count] = (from hs in db.HeadStats
                                                where hs.LinkID == userLinkID &&
                                                hs.HeadstepID == h.HeadstepID
                                                select hs.Notes).FirstOrDefault();         //send heading notes
                        }
                        else   //must create status table
                        {
                            var lastStat = (from hs in db.HeadStats
                                            select hs.HeadStatID).ToList();
                            var lastStatID = -1;
                            if (lastStat.Count() < 1)
                            {
                                lastStatID = 1;
                            }
                            else
                            {
                                lastStatID = lastStat[lastStat.Count - 1];
                            }

                            //set table values and save new stat entry to database
                            HeadStat newStat = new HeadStat();
                            newStat.HeadStatID = lastStatID + 1;
                            newStat.IsDone = false;
                            newStat.HeadstepID = h.HeadstepID;
                            newStat.LinkID = userLinkID;
                            db.HeadStats.Add(newStat);
                            db.SaveChanges();
                            pages.HStatID[mcount,count] = newStat.HeadStatID;
                        }
                        substeps = (from s in db.Substeps
                                    where s.HeadstepID == h.HeadstepID
                                    orderby s.Number
                                    select s).ToList();
                        pages.NumSubsteps[mcount,count] = substeps.Count();
                        if (pages.NumSubsteps[mcount,count] > 0)
                        {
                            subcount = 0;
                            foreach (var s in substeps)
                            {
                                subcount += 1;
                                pages.Substeps[mcount,count, subcount] = s.Name;    //send substep name
                                pages.SubID[mcount,count, subcount] = s.SubstepID; //send SubstepID
                                pages.PointsTotal += s.Points;

                                subStats = (from ss in db.SubStats
                                            where ss.LinkID == userLinkID &&
                                            ss.SubstepID == s.SubstepID
                                            select ss).ToList();
                                if (subStats.Count() > 0)
                                {
                                    pages.SStatID[mcount,count,subcount] = (from ss in db.SubStats
                                                            where ss.LinkID == userLinkID &&
                                                            ss.SubstepID == s.SubstepID
                                                            select ss.SubStatID).FirstOrDefault();     //send substep status id
                                    pages.SubstepsDue[mcount,count,subcount] = (from ss in db.SubStats
                                                                where ss.LinkID == userLinkID &&
                                                                ss.SubstepID == s.SubstepID
                                                                select ss.DueDate).FirstOrDefault();        //send substep due date
                                    pages.IsSubDone[mcount,count,subcount] = (from ss in db.SubStats
                                                               where ss.LinkID == userLinkID &&
                                                               ss.SubstepID == s.SubstepID
                                                               select ss.IsDone).FirstOrDefault();       //send substep isDone status
                                    pages.SubNotes[mcount,count,subcount] = (from ss in db.SubStats
                                                              where ss.LinkID == userLinkID &&
                                                              ss.SubstepID == s.SubstepID
                                                              select ss.Notes).FirstOrDefault();         //send substep notes
                                    if (pages.IsSubDone[mcount, count, subcount] == true) pages.PointsEarned += s.Points; 
                                }
                                else   //must create status table
                                {
                                    var lastStat = (from ss in db.SubStats
                                                    select ss.SubStatID).ToList();
                                    var lastStatID = -1;
                                    if (lastStat.Count() < 1)
                                    {
                                        lastStatID = 1;
                                    }
                                    else
                                    {
                                        lastStatID = lastStat[lastStat.Count - 1];
                                    }

                                    //set table values and save new stat entry to database
                                    SubStat newStat = new SubStat();
                                    newStat.SubStatID = lastStatID + 1;
                                    newStat.IsDone = false;
                                    newStat.SubstepID = s.SubstepID;
                                    newStat.LinkID = userLinkID;
                                    db.SubStats.Add(newStat);
                                    db.SaveChanges();
                                    pages.SStatID[mcount,count, subcount] = newStat.SubStatID;
                                }

                            }
                        }

                    }
                }
            }

            profiles.PointsTotal = pages.PointsTotal;
            profiles.PointsEarned = pages.PointsEarned;
            if(pages.PointsTotal <=0)
            {
                pages.PointsTotal = 1;
                profiles.PointsTotal = 1;
            }
            pages.LinkID = userLinkID;
            pages.Ihead = 0;
            pages.Jsub = 0;

            ViewData["Pages"] = pages;

            return View();

        }

        // GET: Items/ToggleDone/5   (Add ability to toggle the IsDone box from the view)
        public ActionResult ToggleDoneSub(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var currentUserId = User.Identity.GetUserId();

            //get profileID for that user
            var userProfileID = (from pr in db.Profiles
                                 where pr.Id == currentUserId
                                 select pr.ProfileID).FirstOrDefault();

            SubStat item = db.SubStats.Find(id);
            Profile user = db.Profiles.Find(userProfileID);
        
            if (item == null || user == null)
            {
                return HttpNotFound();
            }

            var substep = (from ss in db.Substeps
                           where ss.SubstepID == item.SubstepID
                           select ss).FirstOrDefault();

            if (item.IsDone == true)
            {
                item.IsDone = false;
                user.PointsEarned -= substep.Points;
            }
            else
            {
                item.IsDone = true;
                user.PointsEarned += substep.Points;
            }
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/ToggleDone/5   (Add ability to toggle the IsDone box from the view)
        public ActionResult ToggleDoneHead(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HeadStat item = db.HeadStats.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }

            if (item.IsDone == true)
            {
                item.IsDone = false;
            }
            else
            {
                item.IsDone = true;
            }
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/ToggleDone/5   (Add ability to toggle the IsDone box from the view)
        public ActionResult ToggleDoneMain(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MainStat item = db.MainStats.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }

            if (item.IsDone == true)
            {
                item.IsDone = false;
            }
            else
            {
                item.IsDone = true;
            }
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/Army/5   (Change user's military branch to Army)
        public ActionResult Army(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Link item = db.Links.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            Profile user = db.Profiles.Find(item.ProfileID);
            user.Branch = "Army";
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/Airforce/5   (Change user's military branch to Airforce)
        public ActionResult Airforce(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Link item = db.Links.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            Profile user = db.Profiles.Find(item.ProfileID);
            user.Branch = "Airforce";
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }


        // GET: Items/Navy/5   (Change user's military branch to Navy)
        public ActionResult Navy(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Link item = db.Links.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            Profile user = db.Profiles.Find(item.ProfileID);
            user.Branch = "Navy";
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/Marines/5   (Change user's military branch to Marines)
        public ActionResult Marines(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Link item = db.Links.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            Profile user = db.Profiles.Find(item.ProfileID);
            user.Branch = "Marines";
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/CoastGuard/5   (Change user's military branch to Coast Guard)
        public ActionResult CoastGuard(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Link item = db.Links.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            Profile user = db.Profiles.Find(item.ProfileID);
            user.Branch = "Coast Guard";
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/NoBranch/5   (Change user's military branch to undecided)
        public ActionResult NoBranch(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Link item = db.Links.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            Profile user = db.Profiles.Find(item.ProfileID);
            user.Branch = null;
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/Enlisted/5   (Change user's military title to enlisted)
        public ActionResult Enlisted(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Link item = db.Links.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            Profile user = db.Profiles.Find(item.ProfileID);
            user.Title = "enlisted";
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/Commissioned/5   (Change user's military title to commissioned)
        public ActionResult Commissioned(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Link item = db.Links.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            Profile user = db.Profiles.Find(item.ProfileID);
            user.Title = "commissioned";
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/Warrant/5   (Change user's military title to warrant officer)
        public ActionResult Warrant(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Link item = db.Links.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            Profile user = db.Profiles.Find(item.ProfileID);
            user.Title = "a warrant officer";
            db.SaveChanges();

            return RedirectToAction("StepPage");
        }

        // GET: Items/NoTitle/5   (Change user's military title to undecided)
        public ActionResult NoTitle(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Link item = db.Links.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            Profile user = db.Profiles.Find(item.ProfileID);
            user.Title = null;
            db.SaveChanges();

            return RedirectToAction("StepPage");
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
            if (branch == "Army" && title == "enlisted")
            {
                RoadmapID = 1;
            }
            else if (branch == "Airforce" && title == "enlisted")
            {
                RoadmapID = 2;
            }
            else if (branch == "Navy" && title == "enlisted")
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
