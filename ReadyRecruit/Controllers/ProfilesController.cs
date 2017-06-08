using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ReadyRecruit.Models;

namespace ReadyRecruit.Controllers
{
    public class ProfilesController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: Profiles
        public ActionResult Index()
        {
            var profiles = db.Profiles.Include(p => p.Education).Include(p => p.Gender).Include(p => p.MaritalStat).Include(p => p.PriorService).Include(p => p.AspNetUser);
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
            ViewBag.EducationID = new SelectList(db.Educations, "EducationID", "EduLevel");
            ViewBag.GenderID = new SelectList(db.Genders, "GenderID", "Type");
            ViewBag.MaritalStatID = new SelectList(db.MaritalStats, "MaritalStatID", "Status");
            ViewBag.PriorServiceID = new SelectList(db.PriorServices, "PriorServiceID", "PriorServiceID");
            ViewBag.Id = new SelectList(db.AspNetUsers, "Id", "Email");
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
                db.Profiles.Add(profile);
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
        {
            if (ModelState.IsValid)
            {
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
