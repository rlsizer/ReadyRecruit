using System;
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
    public class ProfilesController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: Profiles
        public ActionResult Index()
        {
            //make sure user can only see his profile (not others)
            //var profiles = db.Profiles.Include(p => p.Education).Include(p => p.Gender).Include(p => p.MaritalStat).Include(p => p.PriorService).Include(p => p.AspNetUser);
            var currentUserId = User.Identity.GetUserId();
            var profiles = (from p in db.Profiles
                            where p.Id == currentUserId
                            select p);
            //user must be logged in to see their profile
            if (profiles.Count() < 1)
            {
                return RedirectToAction("Login", "Account");
            }
            return View(profiles.ToList());
        }

        // GET: Profiles/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Profile profile = db.Profiles.Find(id);
            if (profile == null)
            {
                return HttpNotFound();
            }
            return View(profile);
        }

        // GET: Profiles/Create
        public ActionResult Create()
        {
            //Check to see if user already has a profile
            var currentUserId = User.Identity.GetUserId();
            var profiles = (from p in db.Profiles
                            where p.Id == currentUserId
                            select p);
            if (profiles.Count() > 0)
            {
                //foreach (var p in profiles)
                //{
                    //should be if(p.IsDone==true)  but it isn't working
                    //if (p.Id == User.Identity.GetUserId())
                    //if (p.IsDone == true)
                    //{
                        return RedirectToAction("Index");
                    //}
                //}
            }

            ViewBag.EducationID = new SelectList(db.Educations, "EducationID", "EduLevel");
            ViewBag.GenderID = new SelectList(db.Genders, "GenderID", "Type");
            ViewBag.MaritalStatID = new SelectList(db.MaritalStats, "MaritalStatID", "Status");
            ViewBag.PriorServiceID = new SelectList(db.PriorServices, "PriorServiceID", "PriorServiceID");
            //ViewBag.Id = new SelectList(db.AspNetUsers, "Id", "Email");
            return View();
        }

        // POST: Profiles/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProfileID,FName,LName,BirthDate,Height,Weight,Dependents,Title,Branch,AsvabScore,PracticeScore,PointsTotal,PointsEarned,IsDone,GenderID,EducationID,MaritalStatID,PriorServiceID,Id")] Profile profile)
        {
            if (ModelState.IsValid)
            {
                profile.Id = User.Identity.GetUserId();
                profile.IsDone = true;
                profile.Title = null;
                profile.Branch = null;
                profile.AsvabScore = null;
                profile.PracticeScore = null;
                profile.PointsEarned = null;
                profile.PointsTotal = null;
                db.Profiles.Add(profile);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
       
            ViewBag.EducationID = new SelectList(db.Educations, "EducationID", "EduLevel", profile.EducationID);
            ViewBag.GenderID = new SelectList(db.Genders, "GenderID", "Type", profile.GenderID);
            ViewBag.MaritalStatID = new SelectList(db.MaritalStats, "MaritalStatID", "Status", profile.MaritalStatID);
            ViewBag.PriorServiceID = new SelectList(db.PriorServices, "PriorServiceID", "PriorServiceID", profile.PriorServiceID);
            //ViewBag.Id = new SelectList(db.AspNetUsers, "Id", "Email", profile.Id);
            return View(profile);
        }

        // GET: Profiles/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Profile profile = db.Profiles.Find(id);
            if (profile == null)
            {
                return HttpNotFound();
            }
            ViewBag.EducationID = new SelectList(db.Educations, "EducationID", "EduLevel", profile.EducationID);
            ViewBag.GenderID = new SelectList(db.Genders, "GenderID", "Type", profile.GenderID);
            ViewBag.MaritalStatID = new SelectList(db.MaritalStats, "MaritalStatID", "Status", profile.MaritalStatID);
            ViewBag.PriorServiceID = new SelectList(db.PriorServices, "PriorServiceID", "PriorServiceID", profile.PriorServiceID);
            ViewBag.Id = new SelectList(db.AspNetUsers, "Id", "Email", profile.Id);
            return View(profile);
        }

        // POST: Profiles/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProfileID,FName,LName,BirthDate,Height,Weight,Dependents,Title,Branch,AsvabScore,PracticeScore,PointsTotal,PointsEarned,IsDone,GenderID,EducationID,MaritalStatID,PriorServiceID,Id")] Profile profile)
        //public ActionResult Edit([Bind(Include = "ProfileID,FName,LName,GenderID,BirthDate,Height,Weight,EducationID,MaritalStatID,Dependents,Title,Branch")] Profile profile)

        {
            if (ModelState.IsValid)
            {
                profile.Id = User.Identity.GetUserId();
                if (profile.Title == "undecided") profile.Title = null;
                if (profile.Branch == "undecided") profile.Branch = null;
                db.Entry(profile).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EducationID = new SelectList(db.Educations, "EducationID", "EduLevel", profile.EducationID);
            ViewBag.GenderID = new SelectList(db.Genders, "GenderID", "Type", profile.GenderID);
            ViewBag.MaritalStatID = new SelectList(db.MaritalStats, "MaritalStatID", "Status", profile.MaritalStatID);
            ViewBag.PriorServiceID = new SelectList(db.PriorServices, "PriorServiceID", "PriorServiceID", profile.PriorServiceID);
            ViewBag.Id = new SelectList(db.AspNetUsers, "Id", "Email", profile.Id);
            return View(profile);
        }

        // GET: Profiles/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Profile profile = db.Profiles.Find(id);
            if (profile == null)
            {
                return HttpNotFound();
            }
            return View(profile);
        }

        // POST: Profiles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Profile profile = db.Profiles.Find(id);
            db.Profiles.Remove(profile);
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
    }
}
