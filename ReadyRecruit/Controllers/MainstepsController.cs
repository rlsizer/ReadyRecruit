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

        // GET: Populate Database
        public ActionResult Populate()
        {
            var mainsteps = db.Mainsteps.Include(m => m.Roadmap);

            //populates mainsteps for roadmaps 2 through 5 (1 and 6 already exist
            //Mainstep newitem = new Mainstep();
            //for (int road = 2; road < 6; road++)
            //{
            //    for (int m = 1; m <= 7; m++)
            //    {
            //        newitem.Number = (from ms in db.Mainsteps
            //                          where ms.RoadmapID == 1 &&
            //                          ms.Number == m
            //                          select ms.Number).FirstOrDefault();
            //        newitem.Name = (from ms in db.Mainsteps
            //                        where ms.RoadmapID == 1 &&
            //                        ms.Number == m
            //                        select ms.Name).FirstOrDefault();
            //        newitem.IsDone = false;
            //        newitem.Points = 0;
            //        newitem.RoadmapID = road;
            //        db.Mainsteps.Add(newitem);
            //        db.SaveChanges();
            //    }
            //}

            //must populate roadmaps next
            //Roadmap rditem = new Roadmap();

            //rditem.RoadmapName = "a commissioned officer in the Army";
            //db.Roadmaps.Add(rditem);
            //db.SaveChanges();
            //rditem.RoadmapName = "a commissioned officer in the Air Force";
            //db.Roadmaps.Add(rditem);
            //db.SaveChanges();
            //rditem.RoadmapName = "a commissioned officer in the Navy";
            //db.Roadmaps.Add(rditem);
            //db.SaveChanges();
            //rditem.RoadmapName = "a commissioned officer in the Marines";
            //db.Roadmaps.Add(rditem);
            //db.SaveChanges();
            //rditem.RoadmapName = "a commissioned officer in the Coast Guard";
            //db.Roadmaps.Add(rditem);
            //db.SaveChanges();
            //rditem.RoadmapName = "a warrant officer in the Army";
            //db.Roadmaps.Add(rditem);
            //db.SaveChanges();
            //rditem.RoadmapName = "a warrant officer in the Air Force";
            //db.Roadmaps.Add(rditem);
            //db.SaveChanges();
            //rditem.RoadmapName = "a warrant officer in the Navy";
            //db.Roadmaps.Add(rditem);
            //db.SaveChanges();
            //rditem.RoadmapName = "a warrant officer in the Marines";
            //db.Roadmaps.Add(rditem);
            //db.SaveChanges();
            //rditem.RoadmapName = "a warrant officer in the Coast Guard";
            //db.Roadmaps.Add(rditem);
            //db.SaveChanges();


            //populates mainsteps for roadmaps 7 through 16 (1 through 6 already exist)
            //Mainstep newitem = new Mainstep();
            //for (int road = 7; road < 17; road++)
            //{
            //    for (int m = 1; m <= 7; m++)
            //    {
            //        newitem.Number = (from ms in db.Mainsteps
            //                          where ms.RoadmapID == 1 &&
            //                          ms.Number == m
            //                          select ms.Number).FirstOrDefault();
            //        newitem.Name = (from ms in db.Mainsteps
            //                        where ms.RoadmapID == 1 &&
            //                        ms.Number == m
            //                        select ms.Name).FirstOrDefault();
            //        newitem.IsDone = false;
            //        newitem.Points = 0;
            //        newitem.RoadmapID = road;
            //        db.Mainsteps.Add(newitem);
            //        db.SaveChanges();
            //    }
            //}
            //populates headsteps for roadmaps 2 through 5
            //Headstep newheadstep = new Headstep();
            //for (int road = 2; road < 6; road++)
            //{
            //    //select first 17 headsteps (for roadmap 1, mainsteps 1 through 7)
            //    var headsteps = (from step in db.Headsteps
            //                     where step.MainstepID <= 7
            //                     select step).ToList();
            //    foreach (var h in headsteps)
            //    {
            //        newheadstep.Number = h.Number;
            //        newheadstep.Name = h.Name;
            //        newheadstep.IsDone = false;
            //        newheadstep.Points = 0;
            //        newheadstep.MainstepID = road * 7 + h.MainstepID;
            //        db.Headsteps.Add(newheadstep);
            //        db.SaveChanges();
            //    }
            //}

            //populates headsteps for roadmaps 7 through 16
            //Headstep newheadstep = new Headstep();
            //for (int road = 7; road < 17; road++)
            //{
            //    //select first 17 headsteps (for roadmap 1, mainsteps 1 through 7)
            //    var headsteps = (from step in db.Headsteps
            //                     where step.MainstepID <= 7
            //                     select step).ToList();
            //    foreach (var h in headsteps)
            //    {
            //        newheadstep.Number = h.Number;
            //        newheadstep.Name = h.Name;
            //        newheadstep.IsDone = false;
            //        newheadstep.Points = 0;
            //        newheadstep.MainstepID = (road-1) * 7 + 1 + h.MainstepID;
            //        db.Headsteps.Add(newheadstep);
            //        db.SaveChanges();
            //    }
            //}

            //populates substeps for roadmap 6
            //Substep newsubstep = new Substep();
            //int road = 6;
            ////select first 45 substeps (for roadmap 1, mainsteps 1 through 7, headsteps 1-18)
            //var substeps = (from step in db.Substeps
            //                where step.HeadstepID <= 18
            //                select step).ToList();
            //foreach (var s in substeps)
            //{
            //    newsubstep.Number = s.Number;
            //    newsubstep.Name = s.Name;
            //    newsubstep.IsDone = false;
            //    newsubstep.Points = 0;
            //    newsubstep.HeadstepID = GetID(road, s);
            //    db.Substeps.Add(newsubstep);
            //    db.SaveChanges();
            //}

            //populates substeps for roadmap 2 through 5
            //Substep newsubstep = new Substep();
            //for (int road = 2; road < 6; road++)
            //{
            //    //select first 45 substeps (for roadmap 1, mainsteps 1 through 7, headsteps 1-18)
            //    var substeps = (from step in db.Substeps
            //                    where step.HeadstepID <= 18
            //                    select step).ToList();
            //    foreach (var s in substeps)
            //    {
            //        newsubstep.Number = s.Number;
            //        newsubstep.Name = s.Name;
            //        newsubstep.IsDone = false;
            //        newsubstep.Points = 0;
            //        newsubstep.HeadstepID = GetID(road, s);
            //        db.Substeps.Add(newsubstep);
            //        db.SaveChanges();
            //    }
            //}

            //populates substeps for roadmap 7 through 16
            //Substep newsubstep = new Substep();
            //for (int road = 7; road < 17; road++)
            //{
            //    //select first 45 substeps (for roadmap 1, mainsteps 1 through 7, headsteps 1-18)
            //    var substeps = (from step in db.Substeps
            //                    where step.HeadstepID <= 18
            //                    select step).ToList();
            //    foreach (var s in substeps)
            //    {
            //        newsubstep.Number = s.Number;
            //        newsubstep.Name = s.Name;
            //        newsubstep.IsDone = false;
            //        newsubstep.Points = 2;
            //        newsubstep.HeadstepID = GetID(road, s);
            //        db.Substeps.Add(newsubstep);
            //        db.SaveChanges();
            //    }
            //}

            //set points to 2 for substeps 46 to 260
            //    var substeps = (from step in db.Substeps
            //                    where step.SubstepID >= 46 &&
            //                    step.SubstepID <= 260
            //                    select step).ToList();
            //    foreach (var s in substeps)
            //    {
            //        s.Points = 2;
            //        db.SaveChanges();
            //    }
            //    return RedirectToAction("StepPage");
            //}

            //delete unused headings (must delete their stat tables first) --isn't working
            //var headsteps = (from step in db.Headsteps
            //                 where step.Name == "???"
            //                 select step);
            //var headstep = headsteps.FirstOrDefault();

            //foreach (var h in headsteps)
            //{
            //    var headstats = (from stat in db.HeadStats
            //                     where stat.HeadstepID == h.HeadstepID
            //                     select stat);
            //    var headstat = headstats.FirstOrDefault();
            //    foreach (var s in headstats)
            //    {
            //        headstat = db.HeadStats.Find(s.HeadStatID);
            //        db.HeadStats.Remove(headstat);
            //        db.SaveChanges();
            //    }
            //    headstep = db.Headsteps.Find(h.HeadstepID);
            //    db.Headsteps.Remove(headstep);
            //    db.SaveChanges();
            //}

            //populates new substeps
            //Substep newsubstep = new Substep();
            // var headsteps = (from step in db.Headsteps
            //                where step.Name == "Are You Qualified?"
            //                select step).ToList();
            //foreach (var h in headsteps)
            //{
            //    newsubstep.Number = 2;
            //    newsubstep.Name = "Height/Weight Requirements";
            //    newsubstep.IsDone = false;
            //    newsubstep.Points = 2;
            //    newsubstep.HeadstepID = h.HeadstepID;
            //    db.Substeps.Add(newsubstep);
            //    db.SaveChanges();
            //}

            //couldn't get this one to work -- exception thrown
            //changes "Choose Your Army Career Path headstep and substeps for Air Force
            //var mainstep = (from m in db.Mainsteps
            //                 where m.Name == "Recruiting Phase" &&
            //                      (m.RoadmapID == 2 || m.RoadmapID == 8 || m.RoadmapID == 13)
            //                 select m);
            //foreach(var m in mainstep)
            //{
            //    var headstepIDs = (from h in db.Headsteps
            //                    where h.Name == "Choose Your Army Career Path" &&
            //                    h.MainstepID == m.MainstepID
            //                    select h.HeadstepID).ToList();
            //    foreach(var ID in headstepIDs)
            //    {
            //        Headstep step = db.Headsteps.Find(ID);
            //        step.Name = "Choose Your Air Force Career Path";
            //        db.SaveChanges();
            //        var substep = (from s in db.Substeps
            //                       where s.Name == "Active Duty Army"
            //                       select s).FirstOrDefault();
            //        substep.Name = "Active Duty Air Force";
            //        db.SaveChanges();
            //        substep = (from s in db.Substeps
            //                       where s.Name == "Army National Guard"
            //                       select s).FirstOrDefault();
            //        substep.Name = "Air Guard";
            //        db.SaveChanges();
            //        substep = (from s in db.Substeps
            //                       where s.Name == "Army Reserve"
            //                       select s).FirstOrDefault();
            //        substep.Name = "Air Force Reserve";
            //        db.SaveChanges();
            //    }

            //}

            return RedirectToAction("StepPage");
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
                              where pr.ProfileID == userProfileID
                              select pr.Branch).FirstOrDefault();
            //check profile for title selection
            var userTitle = (from pr in db.Profiles
                             where pr.ProfileID == userProfileID
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
            //Roadmap Name for displaying on outline pages
            var roadmapName = (from r in db.Roadmaps
                               where r.RoadmapID == userRoadmapID
                               select r.RoadmapName).FirstOrDefault();
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
            pages.RoadmapName = roadmapName;
            pages.RoadmapID = userRoadmapID;
            int maincount = mainsteps.Count();
            pages.NumPages = maincount;
            foreach (var m in mainsteps)        //loop through mainsteps - prepare pages 1, 2, 3
            {
                mcount += 1;
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
                             where h.MainstepID == m.MainstepID &&
                                   h.Name != "???"
                             orderby h.Number
                             select h).ToList();
                pages.NumHeadings[mcount] = headsteps.Count();
                if (pages.NumHeadings[mcount] > 0)
                {
                    count = 0;
                    foreach (var h in headsteps)
                    {
                        count += 1;
                        pages.Headings[mcount, count] = h.Name;            //send heading name
                        pages.HeadID[mcount, count] = h.HeadstepID;        //send HeadstepID

                        headStats = (from hs in db.HeadStats
                                     where hs.LinkID == userLinkID &&
                                     hs.HeadstepID == h.HeadstepID
                                     select hs).ToList();

                        //create stat tables if they don't exist
                        if(headStats.Count<=0)
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
                            //copy any notes from a previous roadmap for pages 1, 2 or 3
                            if (mcount >= 1 && mcount <= 3)
                            {
                                var oldlink = (from link in db.Links
                                               where link.ProfileID == userProfileID &&
                                               link.RoadmapID != userRoadmapID
                                               select link);
                                if (!oldlink.IsNullOrEmpty())
                                {
                                    var oldlinkfirst = oldlink.FirstOrDefault();
                                    var oldmainstep = (from old in db.Mainsteps
                                                       where old.RoadmapID == oldlinkfirst.RoadmapID
                                                       && old.Number == m.Number
                                                       select old).FirstOrDefault();
                                    var oldheadstep = (from hs in db.Headsteps
                                                       where hs.MainstepID == oldmainstep.MainstepID
                                                       && hs.Number == h.Number
                                                       select hs).FirstOrDefault();
                                    var oldheadstat = (from stat in db.HeadStats
                                                       where stat.LinkID == oldlinkfirst.LinkID &&
                                                       stat.HeadstepID == oldheadstep.HeadstepID
                                                       select stat).FirstOrDefault();
                                    newStat.Notes = oldheadstat.Notes;
                                }
                            }
                            db.HeadStats.Add(newStat);
                            db.SaveChanges();
                            //pages.HStatID[mcount, count] = newStat.HeadStatID;
                        }

                    pages.HStatID[mcount, count] = (from hs in db.HeadStats
                                                            where hs.LinkID == userLinkID &&
                                                            hs.HeadstepID == h.HeadstepID
                                                            select hs.HeadStatID).FirstOrDefault();     //send heading status id
                            pages.HeadingsDue[mcount, count] = (from hs in db.HeadStats
                                                                where hs.LinkID == userLinkID &&
                                                                hs.HeadstepID == h.HeadstepID
                                                                select hs.DueDate).FirstOrDefault();        //send heading due date
                            pages.IsHeadDone[mcount, count] = (from hs in db.HeadStats
                                                               where hs.LinkID == userLinkID &&
                                                               hs.HeadstepID == h.HeadstepID
                                                               select hs.IsDone).FirstOrDefault();       //send heading isDone status
                            pages.HeadNotes[mcount, count] = (from hs in db.HeadStats
                                                              where hs.LinkID == userLinkID &&
                                                              hs.HeadstepID == h.HeadstepID
                                                              select hs.Notes).FirstOrDefault();         //send heading notes

                          substeps = (from s in db.Substeps
                                    where s.HeadstepID == h.HeadstepID
                                    orderby s.Number
                                    select s).ToList();
                        pages.NumSubsteps[mcount, count] = substeps.Count();
                        if (pages.NumSubsteps[mcount, count] > 0)
                        {
                            subcount = 0;
                            foreach (var s in substeps)
                            {
                                subcount += 1;
                                pages.Substeps[mcount, count, subcount] = s.Name;    //send substep name
                                pages.SubID[mcount, count, subcount] = s.SubstepID; //send SubstepID
                                pages.PointsTotal += s.Points;

                                subStats = (from ss in db.SubStats
                                            where ss.LinkID == userLinkID &&
                                            ss.SubstepID == s.SubstepID
                                            select ss).ToList();

                                //create status table if it doesn't exist
                                if(subStats.Count <= 0)
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

                                    //copy IsDone status from a previous roadmap for pages 1, 2, and 3
                                    if (mcount >= 1 && mcount <= 3)
                                    {
                                        var oldlink = (from link in db.Links
                                                       where link.ProfileID == userProfileID &&
                                                       link.RoadmapID != userRoadmapID
                                                       select link);
                                        if (!oldlink.IsNullOrEmpty())
                                        {
                                            var oldlinkfirst = oldlink.FirstOrDefault();
                                            var oldmainstep = (from old in db.Mainsteps
                                                               where old.RoadmapID == oldlinkfirst.RoadmapID
                                                               && old.Number == m.Number
                                                               select old).FirstOrDefault();
                                            var oldheadstep = (from head in db.Headsteps
                                                               where head.MainstepID == oldmainstep.MainstepID &&
                                                               head.Number == h.Number
                                                               select head).FirstOrDefault();
                                            var oldsubstep = (from old in db.Substeps
                                                              where old.HeadstepID == oldheadstep.HeadstepID
                                                               && old.Number == s.Number
                                                              select old).FirstOrDefault();
                                            var oldstat = (from old in db.SubStats
                                                           where old.LinkID == oldlinkfirst.LinkID &&
                                                           old.SubstepID == oldsubstep.SubstepID
                                                           select old).FirstOrDefault();
                                            newStat.IsDone = oldstat.IsDone;
                                        }
                                    }
                                    db.SubStats.Add(newStat);
                                    db.SaveChanges();
                                    //pages.SStatID[mcount, count, subcount] = newStat.SubStatID;

                                }


                                    pages.SStatID[mcount, count, subcount] = (from ss in db.SubStats
                                                                              where ss.LinkID == userLinkID &&
                                                                              ss.SubstepID == s.SubstepID
                                                                              select ss.SubStatID).FirstOrDefault();     //send substep status id
                                    pages.SubstepsDue[mcount, count, subcount] = (from ss in db.SubStats
                                                                                  where ss.LinkID == userLinkID &&
                                                                                  ss.SubstepID == s.SubstepID
                                                                                  select ss.DueDate).FirstOrDefault();        //send substep due date
                                    pages.IsSubDone[mcount, count, subcount] = (from ss in db.SubStats
                                                                                where ss.LinkID == userLinkID &&
                                                                                ss.SubstepID == s.SubstepID
                                                                                select ss.IsDone).FirstOrDefault();       //send substep isDone status
                                    pages.SubNotes[mcount, count, subcount] = (from ss in db.SubStats
                                                                               where ss.LinkID == userLinkID &&
                                                                               ss.SubstepID == s.SubstepID
                                                                               select ss.Notes).FirstOrDefault();         //send substep notes
                                    if (pages.IsSubDone[mcount, count, subcount] == true) pages.PointsEarned += s.Points;

                            }
                        }

                    }
                }
            }

            profiles.PointsTotal = pages.PointsTotal;
            profiles.PointsEarned = pages.PointsEarned;
            if (pages.PointsTotal <= 0)
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
            var headstep = (from hs in db.Headsteps
                            where hs.HeadstepID == substep.HeadstepID
                            select hs).FirstOrDefault();
            var mainstep = (from ms in db.Mainsteps
                            where ms.MainstepID == headstep.MainstepID
                            select ms).FirstOrDefault();
            int main = Decimal.ToInt32(mainstep.Number);
            string pageID = "#Step" + main.ToString();


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

            //Since the first 3 steps in each roadmap are the same, assign the IsDone status to all existing
            //roadmaps with the same Substep

            if (main >= 1 && main <= 3)
            {

                var substepNumber = substep.Number;
                var headstepNumber = headstep.Number;
                var currentRoadmapID = mainstep.RoadmapID;

                //First find all links for this user
                var links = (from l in db.Links
                             where l.ProfileID == userProfileID
                             select l).ToList();
                //For each link, find the roadmap id
                var roadmapID = -1;
                var mainstepID = -1;
                var thisHeadstepID = -1;
                var thisSubstepID = -1;
                SubStat newitem = db.SubStats.Find(id);
                foreach (Link l in links)
                {
                    roadmapID = l.RoadmapID;
                    //if it is the current roadmap, skip over
                    if (l.RoadmapID == currentRoadmapID) continue;
                    //find the mainstepID for this new roadmap and the same mainstep number
                    mainstepID = (from m in db.Mainsteps
                                  where m.RoadmapID == l.RoadmapID &&
                                  m.Number == main
                                  select m.MainstepID).FirstOrDefault();
                    //find the headstepID for the headstep with this mainstepID and the same
                    //headstep.Number as the IsDone status was entered for
                    thisHeadstepID = (from hs in db.Headsteps
                                      where hs.MainstepID == mainstepID &&
                                      hs.Number == headstepNumber
                                      select hs.HeadstepID).FirstOrDefault();
                    //find the substepID for the substep with this headstepID and the same
                    //substep.Number as the IsDone status was entered for
                    thisSubstepID = (from ss in db.Substeps
                                     where ss.HeadstepID == thisHeadstepID &&
                                     ss.Number == substepNumber
                                     select ss.SubstepID).FirstOrDefault();
                    //find SubStatID with this substepID and the link l
                    //var newitemID = (from s in db.SubStats
                    //           where s.SubstepID == thisSubstepID &&
                    //           s.LinkID == l.LinkID
                    //           select s.SubStatID).FirstOrDefault();
                    //newitem = db.SubStats.Find(newitemID);
                    //newitem.IsDone = item.IsDone;
                    //db.SaveChanges();
                    newitem = (from s in db.SubStats
                               where s.SubstepID == thisSubstepID &&
                               s.LinkID == l.LinkID
                               select s).FirstOrDefault();
                    newitem.IsDone = item.IsDone;
                    db.SaveChanges();
                }
            }

            return Redirect(Url.Action("StepPage", "Mainsteps") + pageID);
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

        // POST: Items/SaveNotes/5   (Add ability to save user notes from the view)
        [HttpPost]
        public ActionResult SaveNotes(int? id, int? id2, int? id3, string Notes)
        {
            //id = HeadStatID, id2 = Mainstep.Number, id3 = RoadmapID

            if (id == null || id2 == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            //var currentUserId = User.Identity.GetUserId();

            ////get profileID for that user
            //var userProfileID = (from pr in db.Profiles
            //                     where pr.Id == currentUserId
            //                     select pr.ProfileID).FirstOrDefault();

            HeadStat item = db.HeadStats.Find(id);
            //Profile user = db.Profiles.Find(userProfileID);

            if (item == null)
            {
                return HttpNotFound();
            }

            string pageID = "#Step" + id2.ToString();
            //set item.Notes equal to user input and save to database  
            item.Notes = Notes;

            db.SaveChanges();

            //Since the first 3 steps in each roadmap are the same, assign the notes to all existing
            //roadmaps with the same Headstep

            //find the HeadstepID and then the Headstep.Number for this Stat
            var headstepID = item.HeadstepID;
            var headstep = db.Headsteps.Find(headstepID);
            var headstepNumber = headstep.Number;

            if (id2 >= 1 && id2 <= 3)
            {
                //First find all links for this user
                var currentUserId = User.Identity.GetUserId();
                var userProfileID = (from pr in db.Profiles
                                     where pr.Id == currentUserId
                                     select pr.ProfileID).FirstOrDefault();
                var links = (from l in db.Links
                             where l.ProfileID == userProfileID
                             select l).ToList();
                //For each link, find the roadmap id
                var roadmapID = -1;
                var mainstepID = -1;
                var thisHeadstepID = -1;
                HeadStat newitem = db.HeadStats.Find(id);
                foreach (Link l in links)
                {
                    roadmapID = l.RoadmapID;
                    //if it is the current roadmap, skip over
                    if (l.RoadmapID == id3) continue;
                    //find the mainstepID for this new roadmap and the same mainstep number
                    mainstepID = (from m in db.Mainsteps
                                  where m.RoadmapID == l.RoadmapID &&
                                  m.Number == id2
                                  select m.MainstepID).FirstOrDefault();
                    //find the headstepID for the headstep with this mainstepID and the same
                    //headstep.Number as the notes were entered for
                    thisHeadstepID = (from hs in db.Headsteps
                                      where hs.MainstepID == mainstepID &&
                                      hs.Number == headstepNumber
                                      select hs.HeadstepID).FirstOrDefault();
                    //find HeadStatID with this headstepID and the link l
                    newitem = (from h in db.HeadStats
                               where h.HeadstepID == thisHeadstepID &&
                               h.LinkID == l.LinkID
                               select h).FirstOrDefault();
                    newitem.Notes = item.Notes;
                    db.SaveChanges();
                }
            }


            return Redirect(Url.Action("StepPage", "Mainsteps") + pageID);
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
            user.Branch = "Air Force";
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
            user.Title = "a commissioned officer";
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
            var RoadmapID = 6;
            if (branch == null || title == null)
            {
                RoadmapID = 6;
            }
            else if (branch == "Army" && title == "enlisted")
            {
                RoadmapID = 1;
            }
            else if (branch == "Air Force" && title == "enlisted")
            {
                RoadmapID = 2;
            }
            else if (branch == "Navy" && title == "enlisted")
            {
                RoadmapID = 3;
            }
            else if (branch == "Marines" && title == "enlisted")
            {
                RoadmapID = 4;
            }
            else if (branch == "Coast Guard" && title == "enlisted")
            {
                RoadmapID = 5;
            }
            else if (branch == "Army" && title == "a commissioned officer")
            {
                RoadmapID = 7;
            }
            else if (branch == "Air Force" && title == "a commissioned officer")
            {
                RoadmapID = 8;
            }
            else if (branch == "Navy" && title == "a commissioned officer")
            {
                RoadmapID = 9;
            }
            else if (branch == "Marines" && title == "a commissioned officer")
            {
                RoadmapID = 10;
            }
            else if (branch == "Coast Guard" && title == "a commissioned officer")
            {
                RoadmapID = 11;
            }
            else if (branch == "Army" && title == "a warrant officer")
            {
                RoadmapID = 12;
            }
            else if (branch == "Air Force" && title == "a warrant officer")
            {
                RoadmapID = 13;
            }
            else if (branch == "Navy" && title == "a warrant officer")
            {
                RoadmapID = 14;
            }
            else if (branch == "Marines" && title == "a warrant officer")
            {
                RoadmapID = 15;
            }
            else if (branch == "Coast Guard" && title == "a warrant officer")
            {
                RoadmapID = 16;
            }
            else
            {
                RoadmapID = 6;
            }
            return RoadmapID;
        }

        public int GetID(int road, Substep s)
        {
            var headstepID = -1;
            if (road == 6)
            {
                //if (s.SubstepID == 1) headstepID = 19;
                //if (s.SubstepID == 2) headstepID = 19;
                //if (s.SubstepID == 3) headstepID = 20;
                //if (s.SubstepID == 4) headstepID = 20;
                //if (s.SubstepID == 5) headstepID = 21;
                //if (s.SubstepID == 6) headstepID = 21;
                //if (s.SubstepID == 7) headstepID = 22;
                //if (s.SubstepID == 8) headstepID = 23;
                //if (s.SubstepID == 9) headstepID = 23;
                //if (s.SubstepID == 10) headstepID = 23;
                //if (s.SubstepID == 11) headstepID = 23;
                //if (s.SubstepID == 12) headstepID = 23;
                //if (s.SubstepID == 13) headstepID = 25;
                //if (s.SubstepID == 14) headstepID = 25;
                //if (s.SubstepID == 15) headstepID = 26;
                //if (s.SubstepID == 16) headstepID = 26;
                //if (s.SubstepID == 17) headstepID = 26;
                //if (s.SubstepID == 18) headstepID = 27;
                //if (s.SubstepID == 19) headstepID = 27;
                //if (s.SubstepID == 20) headstepID = 27;
                //if (s.SubstepID == 21) headstepID = 28;
                //if (s.SubstepID == 24) headstepID = 28;
                //if (s.SubstepID == 25) headstepID = 28;
                //if (s.SubstepID == 26) headstepID = 29;
                //if (s.SubstepID == 27) headstepID = 29;
                //if (s.SubstepID == 28) headstepID = 29;
                //if (s.SubstepID == 29) headstepID = 29;
                //if (s.SubstepID == 30) headstepID = 30;
                //if (s.SubstepID == 31) headstepID = 30;
                //if (s.SubstepID == 32) headstepID = 30;
                //if (s.SubstepID == 33) headstepID = 30;
                //if (s.SubstepID == 34) headstepID = 31;
                //if (s.SubstepID == 35) headstepID = 31;
                //if (s.SubstepID == 36) headstepID = 32;
                //if (s.SubstepID == 37) headstepID = 32;
                //if (s.SubstepID == 38) headstepID = 32;
                //if (s.SubstepID == 39) headstepID = 32;
                //if (s.SubstepID == 40) headstepID = 34;
                //if (s.SubstepID == 41) headstepID = 34;
                //if (s.SubstepID == 42) headstepID = 34;
                //if (s.SubstepID == 43) headstepID = 34;
                //if (s.SubstepID == 44) headstepID = 35;
                //if (s.SubstepID == 45) headstepID = 35;
            }
            else if (road == 2)
            {
                if (s.SubstepID == 1) headstepID = 36;
                if (s.SubstepID == 2) headstepID = 36;
                if (s.SubstepID == 3) headstepID = 37;
                if (s.SubstepID == 4) headstepID = 37;
                if (s.SubstepID == 5) headstepID = 38;
                if (s.SubstepID == 6) headstepID = 38;
                if (s.SubstepID == 7) headstepID = 39;
                if (s.SubstepID == 8) headstepID = 40;
                if (s.SubstepID == 9) headstepID = 40;
                if (s.SubstepID == 10) headstepID = 40;
                if (s.SubstepID == 11) headstepID = 40;
                if (s.SubstepID == 12) headstepID = 40;
                if (s.SubstepID == 13) headstepID = 42;
                if (s.SubstepID == 14) headstepID = 42;
                if (s.SubstepID == 15) headstepID = 43;
                if (s.SubstepID == 16) headstepID = 43;
                if (s.SubstepID == 17) headstepID = 43;
                if (s.SubstepID == 18) headstepID = 44;
                if (s.SubstepID == 19) headstepID = 44;
                if (s.SubstepID == 20) headstepID = 44;
                if (s.SubstepID == 21) headstepID = 45;
                if (s.SubstepID == 24) headstepID = 45;
                if (s.SubstepID == 25) headstepID = 45;
                if (s.SubstepID == 26) headstepID = 46;
                if (s.SubstepID == 27) headstepID = 46;
                if (s.SubstepID == 28) headstepID = 46;
                if (s.SubstepID == 29) headstepID = 46;
                if (s.SubstepID == 30) headstepID = 47;
                if (s.SubstepID == 31) headstepID = 47;
                if (s.SubstepID == 32) headstepID = 47;
                if (s.SubstepID == 33) headstepID = 47;
                if (s.SubstepID == 34) headstepID = 48;
                if (s.SubstepID == 35) headstepID = 48;
                if (s.SubstepID == 36) headstepID = 49;
                if (s.SubstepID == 37) headstepID = 49;
                if (s.SubstepID == 38) headstepID = 49;
                if (s.SubstepID == 39) headstepID = 49;
                if (s.SubstepID == 40) headstepID = 51;
                if (s.SubstepID == 41) headstepID = 51;
                if (s.SubstepID == 42) headstepID = 51;
                if (s.SubstepID == 43) headstepID = 51;
                if (s.SubstepID == 44) headstepID = 52;
                if (s.SubstepID == 45) headstepID = 52;
            }
            else if (road == 3)
            {
                if (s.SubstepID == 1) headstepID = 53;
                if (s.SubstepID == 2) headstepID = 53;
                if (s.SubstepID == 3) headstepID = 54;
                if (s.SubstepID == 4) headstepID = 54;
                if (s.SubstepID == 5) headstepID = 55;
                if (s.SubstepID == 6) headstepID = 55;
                if (s.SubstepID == 7) headstepID = 56;
                if (s.SubstepID == 8) headstepID = 57;
                if (s.SubstepID == 9) headstepID = 57;
                if (s.SubstepID == 10) headstepID = 57;
                if (s.SubstepID == 11) headstepID = 57;
                if (s.SubstepID == 12) headstepID = 57;
                if (s.SubstepID == 13) headstepID = 59;
                if (s.SubstepID == 14) headstepID = 59;
                if (s.SubstepID == 15) headstepID = 60;
                if (s.SubstepID == 16) headstepID = 60;
                if (s.SubstepID == 17) headstepID = 60;
                if (s.SubstepID == 18) headstepID = 61;
                if (s.SubstepID == 19) headstepID = 61;
                if (s.SubstepID == 20) headstepID = 61;
                if (s.SubstepID == 21) headstepID = 62;
                if (s.SubstepID == 24) headstepID = 62;
                if (s.SubstepID == 25) headstepID = 62;
                if (s.SubstepID == 26) headstepID = 63;
                if (s.SubstepID == 27) headstepID = 63;
                if (s.SubstepID == 28) headstepID = 63;
                if (s.SubstepID == 29) headstepID = 63;
                if (s.SubstepID == 30) headstepID = 64;
                if (s.SubstepID == 31) headstepID = 64;
                if (s.SubstepID == 32) headstepID = 64;
                if (s.SubstepID == 33) headstepID = 64;
                if (s.SubstepID == 34) headstepID = 65;
                if (s.SubstepID == 35) headstepID = 65;
                if (s.SubstepID == 36) headstepID = 66;
                if (s.SubstepID == 37) headstepID = 66;
                if (s.SubstepID == 38) headstepID = 66;
                if (s.SubstepID == 39) headstepID = 66;
                if (s.SubstepID == 40) headstepID = 68;
                if (s.SubstepID == 41) headstepID = 68;
                if (s.SubstepID == 42) headstepID = 68;
                if (s.SubstepID == 43) headstepID = 68;
                if (s.SubstepID == 44) headstepID = 69;
                if (s.SubstepID == 45) headstepID = 69;
            }
            else if (road == 4)
            {
                if (s.SubstepID == 1) headstepID = 70;
                if (s.SubstepID == 2) headstepID = 70;
                if (s.SubstepID == 3) headstepID = 71;
                if (s.SubstepID == 4) headstepID = 71;
                if (s.SubstepID == 5) headstepID = 72;
                if (s.SubstepID == 6) headstepID = 72;
                if (s.SubstepID == 7) headstepID = 73;
                if (s.SubstepID == 8) headstepID = 74;
                if (s.SubstepID == 9) headstepID = 74;
                if (s.SubstepID == 10) headstepID = 74;
                if (s.SubstepID == 11) headstepID = 74;
                if (s.SubstepID == 12) headstepID = 74;
                if (s.SubstepID == 13) headstepID = 76;
                if (s.SubstepID == 14) headstepID = 76;
                if (s.SubstepID == 15) headstepID = 77;
                if (s.SubstepID == 16) headstepID = 77;
                if (s.SubstepID == 17) headstepID = 77;
                if (s.SubstepID == 18) headstepID = 78;
                if (s.SubstepID == 19) headstepID = 78;
                if (s.SubstepID == 20) headstepID = 78;
                if (s.SubstepID == 21) headstepID = 79;
                if (s.SubstepID == 24) headstepID = 79;
                if (s.SubstepID == 25) headstepID = 79;
                if (s.SubstepID == 26) headstepID = 80;
                if (s.SubstepID == 27) headstepID = 80;
                if (s.SubstepID == 28) headstepID = 80;
                if (s.SubstepID == 29) headstepID = 80;
                if (s.SubstepID == 30) headstepID = 81;
                if (s.SubstepID == 31) headstepID = 81;
                if (s.SubstepID == 32) headstepID = 81;
                if (s.SubstepID == 33) headstepID = 81;
                if (s.SubstepID == 34) headstepID = 82;
                if (s.SubstepID == 35) headstepID = 82;
                if (s.SubstepID == 36) headstepID = 83;
                if (s.SubstepID == 37) headstepID = 83;
                if (s.SubstepID == 38) headstepID = 83;
                if (s.SubstepID == 39) headstepID = 83;
                if (s.SubstepID == 40) headstepID = 85;
                if (s.SubstepID == 41) headstepID = 85;
                if (s.SubstepID == 42) headstepID = 85;
                if (s.SubstepID == 43) headstepID = 85;
                if (s.SubstepID == 44) headstepID = 86;
                if (s.SubstepID == 45) headstepID = 86;
            }
            else if (road == 5)
            {
                if (s.SubstepID == 1) headstepID = 87;
                if (s.SubstepID == 2) headstepID = 87;
                if (s.SubstepID == 3) headstepID = 88;
                if (s.SubstepID == 4) headstepID = 88;
                if (s.SubstepID == 5) headstepID = 89;
                if (s.SubstepID == 6) headstepID = 89;
                if (s.SubstepID == 7) headstepID = 90;
                if (s.SubstepID == 8) headstepID = 91;
                if (s.SubstepID == 9) headstepID = 91;
                if (s.SubstepID == 10) headstepID = 91;
                if (s.SubstepID == 11) headstepID = 91;
                if (s.SubstepID == 12) headstepID = 91;
                if (s.SubstepID == 13) headstepID = 93;
                if (s.SubstepID == 14) headstepID = 93;
                if (s.SubstepID == 15) headstepID = 94;
                if (s.SubstepID == 16) headstepID = 94;
                if (s.SubstepID == 17) headstepID = 94;
                if (s.SubstepID == 18) headstepID = 95;
                if (s.SubstepID == 19) headstepID = 95;
                if (s.SubstepID == 20) headstepID = 95;
                if (s.SubstepID == 21) headstepID = 96;
                if (s.SubstepID == 24) headstepID = 96;
                if (s.SubstepID == 25) headstepID = 96;
                if (s.SubstepID == 26) headstepID = 97;
                if (s.SubstepID == 27) headstepID = 97;
                if (s.SubstepID == 28) headstepID = 97;
                if (s.SubstepID == 29) headstepID = 97;
                if (s.SubstepID == 30) headstepID = 98;
                if (s.SubstepID == 31) headstepID = 98;
                if (s.SubstepID == 32) headstepID = 98;
                if (s.SubstepID == 33) headstepID = 98;
                if (s.SubstepID == 34) headstepID = 99;
                if (s.SubstepID == 35) headstepID = 99;
                if (s.SubstepID == 36) headstepID = 100;
                if (s.SubstepID == 37) headstepID = 100;
                if (s.SubstepID == 38) headstepID = 100;
                if (s.SubstepID == 39) headstepID = 100;
                if (s.SubstepID == 40) headstepID = 102;
                if (s.SubstepID == 41) headstepID = 102;
                if (s.SubstepID == 42) headstepID = 102;
                if (s.SubstepID == 43) headstepID = 102;
                if (s.SubstepID == 44) headstepID = 103;
                if (s.SubstepID == 45) headstepID = 103;
            }
            else if (road == 7)
            {
                if (s.SubstepID == 1) headstepID = 105;
                if (s.SubstepID == 2) headstepID = 105;
                if (s.SubstepID == 3) headstepID = 106;
                if (s.SubstepID == 4) headstepID = 106;
                if (s.SubstepID == 5) headstepID = 107;
                if (s.SubstepID == 6) headstepID = 107;
                if (s.SubstepID == 7) headstepID = 108;
                if (s.SubstepID == 8) headstepID = 109;
                if (s.SubstepID == 9) headstepID = 109;
                if (s.SubstepID == 10) headstepID = 109;
                if (s.SubstepID == 11) headstepID = 109;
                if (s.SubstepID == 12) headstepID = 109;
                if (s.SubstepID == 13) headstepID = 111;
                if (s.SubstepID == 14) headstepID = 111;
                if (s.SubstepID == 15) headstepID = 112;
                if (s.SubstepID == 16) headstepID = 112;
                if (s.SubstepID == 17) headstepID = 112;
                if (s.SubstepID == 18) headstepID = 113;
                if (s.SubstepID == 19) headstepID = 113;
                if (s.SubstepID == 20) headstepID = 113;
                if (s.SubstepID == 21) headstepID = 114;
                if (s.SubstepID == 24) headstepID = 114;
                if (s.SubstepID == 25) headstepID = 114;
                if (s.SubstepID == 26) headstepID = 115;
                if (s.SubstepID == 27) headstepID = 115;
                if (s.SubstepID == 28) headstepID = 115;
                if (s.SubstepID == 29) headstepID = 115;
                if (s.SubstepID == 30) headstepID = 116;
                if (s.SubstepID == 31) headstepID = 116;
                if (s.SubstepID == 32) headstepID = 116;
                if (s.SubstepID == 33) headstepID = 116;
                if (s.SubstepID == 34) headstepID = 117;
                if (s.SubstepID == 35) headstepID = 117;
                if (s.SubstepID == 36) headstepID = 118;
                if (s.SubstepID == 37) headstepID = 118;
                if (s.SubstepID == 38) headstepID = 118;
                if (s.SubstepID == 39) headstepID = 118;
                if (s.SubstepID == 40) headstepID = 120;
                if (s.SubstepID == 41) headstepID = 120;
                if (s.SubstepID == 42) headstepID = 120;
                if (s.SubstepID == 43) headstepID = 120;
                if (s.SubstepID == 44) headstepID = 121;
                if (s.SubstepID == 45) headstepID = 121;
            }
            else if (road == 8)
            {
                if (s.SubstepID == 1) headstepID = 122;
                if (s.SubstepID == 2) headstepID = 122;
                if (s.SubstepID == 3) headstepID = 123;
                if (s.SubstepID == 4) headstepID = 123;
                if (s.SubstepID == 5) headstepID = 124;
                if (s.SubstepID == 6) headstepID = 124;
                if (s.SubstepID == 7) headstepID = 125;
                if (s.SubstepID == 8) headstepID = 126;
                if (s.SubstepID == 9) headstepID = 126;
                if (s.SubstepID == 10) headstepID = 126;
                if (s.SubstepID == 11) headstepID = 126;
                if (s.SubstepID == 12) headstepID = 126;
                if (s.SubstepID == 13) headstepID = 128;
                if (s.SubstepID == 14) headstepID = 128;
                if (s.SubstepID == 15) headstepID = 129;
                if (s.SubstepID == 16) headstepID = 129;
                if (s.SubstepID == 17) headstepID = 129;
                if (s.SubstepID == 18) headstepID = 130;
                if (s.SubstepID == 19) headstepID = 130;
                if (s.SubstepID == 20) headstepID = 130;
                if (s.SubstepID == 21) headstepID = 131;
                if (s.SubstepID == 24) headstepID = 131;
                if (s.SubstepID == 25) headstepID = 131;
                if (s.SubstepID == 26) headstepID = 132;
                if (s.SubstepID == 27) headstepID = 132;
                if (s.SubstepID == 28) headstepID = 132;
                if (s.SubstepID == 29) headstepID = 132;
                if (s.SubstepID == 30) headstepID = 133;
                if (s.SubstepID == 31) headstepID = 133;
                if (s.SubstepID == 32) headstepID = 133;
                if (s.SubstepID == 33) headstepID = 133;
                if (s.SubstepID == 34) headstepID = 134;
                if (s.SubstepID == 35) headstepID = 134;
                if (s.SubstepID == 36) headstepID = 135;
                if (s.SubstepID == 37) headstepID = 135;
                if (s.SubstepID == 38) headstepID = 135;
                if (s.SubstepID == 39) headstepID = 135;
                if (s.SubstepID == 40) headstepID = 137;
                if (s.SubstepID == 41) headstepID = 137;
                if (s.SubstepID == 42) headstepID = 137;
                if (s.SubstepID == 43) headstepID = 137;
                if (s.SubstepID == 44) headstepID = 138;
                if (s.SubstepID == 45) headstepID = 138;
            }
            else if (road == 9)
            {
                if (s.SubstepID == 1) headstepID = 139;
                if (s.SubstepID == 2) headstepID = 139;
                if (s.SubstepID == 3) headstepID = 140;
                if (s.SubstepID == 4) headstepID = 140;
                if (s.SubstepID == 5) headstepID = 141;
                if (s.SubstepID == 6) headstepID = 141;
                if (s.SubstepID == 7) headstepID = 142;
                if (s.SubstepID == 8) headstepID = 143;
                if (s.SubstepID == 9) headstepID = 143;
                if (s.SubstepID == 10) headstepID = 143;
                if (s.SubstepID == 11) headstepID = 143;
                if (s.SubstepID == 12) headstepID = 143;
                if (s.SubstepID == 13) headstepID = 145;
                if (s.SubstepID == 14) headstepID = 145;
                if (s.SubstepID == 15) headstepID = 146;
                if (s.SubstepID == 16) headstepID = 146;
                if (s.SubstepID == 17) headstepID = 146;
                if (s.SubstepID == 18) headstepID = 147;
                if (s.SubstepID == 19) headstepID = 147;
                if (s.SubstepID == 20) headstepID = 147;
                if (s.SubstepID == 21) headstepID = 148;
                if (s.SubstepID == 24) headstepID = 148;
                if (s.SubstepID == 25) headstepID = 148;
                if (s.SubstepID == 26) headstepID = 149;
                if (s.SubstepID == 27) headstepID = 149;
                if (s.SubstepID == 28) headstepID = 149;
                if (s.SubstepID == 29) headstepID = 149;
                if (s.SubstepID == 30) headstepID = 150;
                if (s.SubstepID == 31) headstepID = 150;
                if (s.SubstepID == 32) headstepID = 150;
                if (s.SubstepID == 33) headstepID = 150;
                if (s.SubstepID == 34) headstepID = 151;
                if (s.SubstepID == 35) headstepID = 151;
                if (s.SubstepID == 36) headstepID = 152;
                if (s.SubstepID == 37) headstepID = 152;
                if (s.SubstepID == 38) headstepID = 152;
                if (s.SubstepID == 39) headstepID = 152;
                if (s.SubstepID == 40) headstepID = 154;
                if (s.SubstepID == 41) headstepID = 154;
                if (s.SubstepID == 42) headstepID = 154;
                if (s.SubstepID == 43) headstepID = 154;
                if (s.SubstepID == 44) headstepID = 155;
                if (s.SubstepID == 45) headstepID = 155;
            }
            else if (road == 10)
            {
                if (s.SubstepID == 1) headstepID = 156;
                if (s.SubstepID == 2) headstepID = 156;
                if (s.SubstepID == 3) headstepID = 157;
                if (s.SubstepID == 4) headstepID = 157;
                if (s.SubstepID == 5) headstepID = 158;
                if (s.SubstepID == 6) headstepID = 158;
                if (s.SubstepID == 7) headstepID = 159;
                if (s.SubstepID == 8) headstepID = 160;
                if (s.SubstepID == 9) headstepID = 160;
                if (s.SubstepID == 10) headstepID = 160;
                if (s.SubstepID == 11) headstepID = 160;
                if (s.SubstepID == 12) headstepID = 160;
                if (s.SubstepID == 13) headstepID = 162;
                if (s.SubstepID == 14) headstepID = 162;
                if (s.SubstepID == 15) headstepID = 163;
                if (s.SubstepID == 16) headstepID = 163;
                if (s.SubstepID == 17) headstepID = 163;
                if (s.SubstepID == 18) headstepID = 164;
                if (s.SubstepID == 19) headstepID = 164;
                if (s.SubstepID == 20) headstepID = 164;
                if (s.SubstepID == 21) headstepID = 165;
                if (s.SubstepID == 24) headstepID = 165;
                if (s.SubstepID == 25) headstepID = 165;
                if (s.SubstepID == 26) headstepID = 166;
                if (s.SubstepID == 27) headstepID = 166;
                if (s.SubstepID == 28) headstepID = 166;
                if (s.SubstepID == 29) headstepID = 166;
                if (s.SubstepID == 30) headstepID = 167;
                if (s.SubstepID == 31) headstepID = 167;
                if (s.SubstepID == 32) headstepID = 167;
                if (s.SubstepID == 33) headstepID = 167;
                if (s.SubstepID == 34) headstepID = 168;
                if (s.SubstepID == 35) headstepID = 168;
                if (s.SubstepID == 36) headstepID = 169;
                if (s.SubstepID == 37) headstepID = 169;
                if (s.SubstepID == 38) headstepID = 169;
                if (s.SubstepID == 39) headstepID = 169;
                if (s.SubstepID == 40) headstepID = 171;
                if (s.SubstepID == 41) headstepID = 171;
                if (s.SubstepID == 42) headstepID = 171;
                if (s.SubstepID == 43) headstepID = 171;
                if (s.SubstepID == 44) headstepID = 172;
                if (s.SubstepID == 45) headstepID = 172;
            }
            else if (road == 11)
            {
                if (s.SubstepID == 1) headstepID = 173;
                if (s.SubstepID == 2) headstepID = 173;
                if (s.SubstepID == 3) headstepID = 174;
                if (s.SubstepID == 4) headstepID = 174;
                if (s.SubstepID == 5) headstepID = 175;
                if (s.SubstepID == 6) headstepID = 175;
                if (s.SubstepID == 7) headstepID = 176;
                if (s.SubstepID == 8) headstepID = 177;
                if (s.SubstepID == 9) headstepID = 177;
                if (s.SubstepID == 10) headstepID = 177;
                if (s.SubstepID == 11) headstepID = 177;
                if (s.SubstepID == 12) headstepID = 177;
                if (s.SubstepID == 13) headstepID = 179;
                if (s.SubstepID == 14) headstepID = 179;
                if (s.SubstepID == 15) headstepID = 180;
                if (s.SubstepID == 16) headstepID = 180;
                if (s.SubstepID == 17) headstepID = 180;
                if (s.SubstepID == 18) headstepID = 181;
                if (s.SubstepID == 19) headstepID = 181;
                if (s.SubstepID == 20) headstepID = 181;
                if (s.SubstepID == 21) headstepID = 182;
                if (s.SubstepID == 24) headstepID = 182;
                if (s.SubstepID == 25) headstepID = 182;
                if (s.SubstepID == 26) headstepID = 183;
                if (s.SubstepID == 27) headstepID = 183;
                if (s.SubstepID == 28) headstepID = 183;
                if (s.SubstepID == 29) headstepID = 183;
                if (s.SubstepID == 30) headstepID = 184;
                if (s.SubstepID == 31) headstepID = 184;
                if (s.SubstepID == 32) headstepID = 184;
                if (s.SubstepID == 33) headstepID = 184;
                if (s.SubstepID == 34) headstepID = 185;
                if (s.SubstepID == 35) headstepID = 185;
                if (s.SubstepID == 36) headstepID = 186;
                if (s.SubstepID == 37) headstepID = 186;
                if (s.SubstepID == 38) headstepID = 186;
                if (s.SubstepID == 39) headstepID = 186;
                if (s.SubstepID == 40) headstepID = 188;
                if (s.SubstepID == 41) headstepID = 188;
                if (s.SubstepID == 42) headstepID = 188;
                if (s.SubstepID == 43) headstepID = 188;
                if (s.SubstepID == 44) headstepID = 189;
                if (s.SubstepID == 45) headstepID = 189;
            }
            else if (road == 12)
            {
                if (s.SubstepID == 1) headstepID = 190;
                if (s.SubstepID == 2) headstepID = 190;
                if (s.SubstepID == 3) headstepID = 191;
                if (s.SubstepID == 4) headstepID = 191;
                if (s.SubstepID == 5) headstepID = 192;
                if (s.SubstepID == 6) headstepID = 192;
                if (s.SubstepID == 7) headstepID = 193;
                if (s.SubstepID == 8) headstepID = 194;
                if (s.SubstepID == 9) headstepID = 194;
                if (s.SubstepID == 10) headstepID = 194;
                if (s.SubstepID == 11) headstepID = 194;
                if (s.SubstepID == 12) headstepID = 194;
                if (s.SubstepID == 13) headstepID = 196;
                if (s.SubstepID == 14) headstepID = 196;
                if (s.SubstepID == 15) headstepID = 197;
                if (s.SubstepID == 16) headstepID = 197;
                if (s.SubstepID == 17) headstepID = 197;
                if (s.SubstepID == 18) headstepID = 198;
                if (s.SubstepID == 19) headstepID = 198;
                if (s.SubstepID == 20) headstepID = 198;
                if (s.SubstepID == 21) headstepID = 199;
                if (s.SubstepID == 24) headstepID = 199;
                if (s.SubstepID == 25) headstepID = 199;
                if (s.SubstepID == 26) headstepID = 200;
                if (s.SubstepID == 27) headstepID = 200;
                if (s.SubstepID == 28) headstepID = 200;
                if (s.SubstepID == 29) headstepID = 200;
                if (s.SubstepID == 30) headstepID = 201;
                if (s.SubstepID == 31) headstepID = 201;
                if (s.SubstepID == 32) headstepID = 201;
                if (s.SubstepID == 33) headstepID = 201;
                if (s.SubstepID == 34) headstepID = 202;
                if (s.SubstepID == 35) headstepID = 202;
                if (s.SubstepID == 36) headstepID = 203;
                if (s.SubstepID == 37) headstepID = 203;
                if (s.SubstepID == 38) headstepID = 203;
                if (s.SubstepID == 39) headstepID = 203;
                if (s.SubstepID == 40) headstepID = 205;
                if (s.SubstepID == 41) headstepID = 205;
                if (s.SubstepID == 42) headstepID = 205;
                if (s.SubstepID == 43) headstepID = 205;
                if (s.SubstepID == 44) headstepID = 206;
                if (s.SubstepID == 45) headstepID = 206;
            }
            else if (road == 13)
            {
                if (s.SubstepID == 1) headstepID = 207;
                if (s.SubstepID == 2) headstepID = 207;
                if (s.SubstepID == 3) headstepID = 208;
                if (s.SubstepID == 4) headstepID = 208;
                if (s.SubstepID == 5) headstepID = 209;
                if (s.SubstepID == 6) headstepID = 209;
                if (s.SubstepID == 7) headstepID = 210;
                if (s.SubstepID == 8) headstepID = 211;
                if (s.SubstepID == 9) headstepID = 211;
                if (s.SubstepID == 10) headstepID = 211;
                if (s.SubstepID == 11) headstepID = 211;
                if (s.SubstepID == 12) headstepID = 211;
                if (s.SubstepID == 13) headstepID = 213;
                if (s.SubstepID == 14) headstepID = 213;
                if (s.SubstepID == 15) headstepID = 214;
                if (s.SubstepID == 16) headstepID = 214;
                if (s.SubstepID == 17) headstepID = 214;
                if (s.SubstepID == 18) headstepID = 215;
                if (s.SubstepID == 19) headstepID = 215;
                if (s.SubstepID == 20) headstepID = 215;
                if (s.SubstepID == 21) headstepID = 216;
                if (s.SubstepID == 24) headstepID = 216;
                if (s.SubstepID == 25) headstepID = 216;
                if (s.SubstepID == 26) headstepID = 217;
                if (s.SubstepID == 27) headstepID = 217;
                if (s.SubstepID == 28) headstepID = 217;
                if (s.SubstepID == 29) headstepID = 217;
                if (s.SubstepID == 30) headstepID = 218;
                if (s.SubstepID == 31) headstepID = 218;
                if (s.SubstepID == 32) headstepID = 218;
                if (s.SubstepID == 33) headstepID = 218;
                if (s.SubstepID == 34) headstepID = 219;
                if (s.SubstepID == 35) headstepID = 219;
                if (s.SubstepID == 36) headstepID = 220;
                if (s.SubstepID == 37) headstepID = 220;
                if (s.SubstepID == 38) headstepID = 220;
                if (s.SubstepID == 39) headstepID = 220;
                if (s.SubstepID == 40) headstepID = 222;
                if (s.SubstepID == 41) headstepID = 222;
                if (s.SubstepID == 42) headstepID = 222;
                if (s.SubstepID == 43) headstepID = 222;
                if (s.SubstepID == 44) headstepID = 223;
                if (s.SubstepID == 45) headstepID = 223;
            }
            else if (road == 14)
            {
                if (s.SubstepID == 1) headstepID = 224;
                if (s.SubstepID == 2) headstepID = 224;
                if (s.SubstepID == 3) headstepID = 225;
                if (s.SubstepID == 4) headstepID = 225;
                if (s.SubstepID == 5) headstepID = 226;
                if (s.SubstepID == 6) headstepID = 226;
                if (s.SubstepID == 7) headstepID = 227;
                if (s.SubstepID == 8) headstepID = 228;
                if (s.SubstepID == 9) headstepID = 228;
                if (s.SubstepID == 10) headstepID = 228;
                if (s.SubstepID == 11) headstepID = 228;
                if (s.SubstepID == 12) headstepID = 228;
                if (s.SubstepID == 13) headstepID = 230;
                if (s.SubstepID == 14) headstepID = 230;
                if (s.SubstepID == 15) headstepID = 231;
                if (s.SubstepID == 16) headstepID = 231;
                if (s.SubstepID == 17) headstepID = 231;
                if (s.SubstepID == 18) headstepID = 232;
                if (s.SubstepID == 19) headstepID = 232;
                if (s.SubstepID == 20) headstepID = 232;
                if (s.SubstepID == 21) headstepID = 233;
                if (s.SubstepID == 24) headstepID = 233;
                if (s.SubstepID == 25) headstepID = 233;
                if (s.SubstepID == 26) headstepID = 234;
                if (s.SubstepID == 27) headstepID = 234;
                if (s.SubstepID == 28) headstepID = 234;
                if (s.SubstepID == 29) headstepID = 234;
                if (s.SubstepID == 30) headstepID = 235;
                if (s.SubstepID == 31) headstepID = 235;
                if (s.SubstepID == 32) headstepID = 235;
                if (s.SubstepID == 33) headstepID = 235;
                if (s.SubstepID == 34) headstepID = 236;
                if (s.SubstepID == 35) headstepID = 236;
                if (s.SubstepID == 36) headstepID = 237;
                if (s.SubstepID == 37) headstepID = 237;
                if (s.SubstepID == 38) headstepID = 237;
                if (s.SubstepID == 39) headstepID = 237;
                if (s.SubstepID == 40) headstepID = 239;
                if (s.SubstepID == 41) headstepID = 239;
                if (s.SubstepID == 42) headstepID = 239;
                if (s.SubstepID == 43) headstepID = 239;
                if (s.SubstepID == 44) headstepID = 240;
                if (s.SubstepID == 45) headstepID = 240;
            }
            else if (road == 15)
            {
                if (s.SubstepID == 1) headstepID = 241;
                if (s.SubstepID == 2) headstepID = 241;
                if (s.SubstepID == 3) headstepID = 242;
                if (s.SubstepID == 4) headstepID = 242;
                if (s.SubstepID == 5) headstepID = 243;
                if (s.SubstepID == 6) headstepID = 243;
                if (s.SubstepID == 7) headstepID = 244;
                if (s.SubstepID == 8) headstepID = 245;
                if (s.SubstepID == 9) headstepID = 245;
                if (s.SubstepID == 10) headstepID = 245;
                if (s.SubstepID == 11) headstepID = 245;
                if (s.SubstepID == 12) headstepID = 245;
                if (s.SubstepID == 13) headstepID = 247;
                if (s.SubstepID == 14) headstepID = 247;
                if (s.SubstepID == 15) headstepID = 248;
                if (s.SubstepID == 16) headstepID = 248;
                if (s.SubstepID == 17) headstepID = 248;
                if (s.SubstepID == 18) headstepID = 249;
                if (s.SubstepID == 19) headstepID = 249;
                if (s.SubstepID == 20) headstepID = 249;
                if (s.SubstepID == 21) headstepID = 250;
                if (s.SubstepID == 24) headstepID = 250;
                if (s.SubstepID == 25) headstepID = 250;
                if (s.SubstepID == 26) headstepID = 251;
                if (s.SubstepID == 27) headstepID = 251;
                if (s.SubstepID == 28) headstepID = 251;
                if (s.SubstepID == 29) headstepID = 251;
                if (s.SubstepID == 30) headstepID = 252;
                if (s.SubstepID == 31) headstepID = 252;
                if (s.SubstepID == 32) headstepID = 252;
                if (s.SubstepID == 33) headstepID = 252;
                if (s.SubstepID == 34) headstepID = 253;
                if (s.SubstepID == 35) headstepID = 253;
                if (s.SubstepID == 36) headstepID = 254;
                if (s.SubstepID == 37) headstepID = 254;
                if (s.SubstepID == 38) headstepID = 254;
                if (s.SubstepID == 39) headstepID = 254;
                if (s.SubstepID == 40) headstepID = 256;
                if (s.SubstepID == 41) headstepID = 256;
                if (s.SubstepID == 42) headstepID = 256;
                if (s.SubstepID == 43) headstepID = 256;
                if (s.SubstepID == 44) headstepID = 257;
                if (s.SubstepID == 45) headstepID = 257;
            }
            else if (road == 16)
            {
                if (s.SubstepID == 1) headstepID = 258;
                if (s.SubstepID == 2) headstepID = 258;
                if (s.SubstepID == 3) headstepID = 259;
                if (s.SubstepID == 4) headstepID = 259;
                if (s.SubstepID == 5) headstepID = 260;
                if (s.SubstepID == 6) headstepID = 260;
                if (s.SubstepID == 7) headstepID = 261;
                if (s.SubstepID == 8) headstepID = 262;
                if (s.SubstepID == 9) headstepID = 262;
                if (s.SubstepID == 10) headstepID = 262;
                if (s.SubstepID == 11) headstepID = 262;
                if (s.SubstepID == 12) headstepID = 262;
                if (s.SubstepID == 13) headstepID = 264;
                if (s.SubstepID == 14) headstepID = 264;
                if (s.SubstepID == 15) headstepID = 265;
                if (s.SubstepID == 16) headstepID = 265;
                if (s.SubstepID == 17) headstepID = 265;
                if (s.SubstepID == 18) headstepID = 266;
                if (s.SubstepID == 19) headstepID = 266;
                if (s.SubstepID == 20) headstepID = 266;
                if (s.SubstepID == 21) headstepID = 267;
                if (s.SubstepID == 24) headstepID = 267;
                if (s.SubstepID == 25) headstepID = 267;
                if (s.SubstepID == 26) headstepID = 268;
                if (s.SubstepID == 27) headstepID = 268;
                if (s.SubstepID == 28) headstepID = 268;
                if (s.SubstepID == 29) headstepID = 268;
                if (s.SubstepID == 30) headstepID = 269;
                if (s.SubstepID == 31) headstepID = 269;
                if (s.SubstepID == 32) headstepID = 269;
                if (s.SubstepID == 33) headstepID = 269;
                if (s.SubstepID == 34) headstepID = 270;
                if (s.SubstepID == 35) headstepID = 270;
                if (s.SubstepID == 36) headstepID = 271;
                if (s.SubstepID == 37) headstepID = 271;
                if (s.SubstepID == 38) headstepID = 271;
                if (s.SubstepID == 39) headstepID = 271;
                if (s.SubstepID == 40) headstepID = 273;
                if (s.SubstepID == 41) headstepID = 273;
                if (s.SubstepID == 42) headstepID = 273;
                if (s.SubstepID == 43) headstepID = 273;
                if (s.SubstepID == 44) headstepID = 274;
                if (s.SubstepID == 45) headstepID = 274;
            }
            else
            {

            }
            return headstepID;
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
