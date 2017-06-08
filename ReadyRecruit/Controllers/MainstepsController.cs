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
    public class MainstepsController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: Mainsteps
        public ActionResult Index()
        {
            var mainsteps = db.Mainsteps.Include(m => m.Roadmap);
            return View(mainsteps.ToList());
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
    }
}
