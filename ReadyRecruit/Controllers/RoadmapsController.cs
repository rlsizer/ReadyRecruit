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
    public class RoadmapsController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: Roadmaps
        public ActionResult Index()
        {
            return View(db.Roadmaps.ToList());
        }

        // GET: Roadmaps/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Roadmap roadmap = db.Roadmaps.Find(id);
            if (roadmap == null)
            {
                return HttpNotFound();
            }
            return View(roadmap);
        }

        // GET: Roadmaps/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Roadmaps/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "RoadmapID,RoadmapName")] Roadmap roadmap)
        {
            if (ModelState.IsValid)
            {
                db.Roadmaps.Add(roadmap);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(roadmap);
        }

        // GET: Roadmaps/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Roadmap roadmap = db.Roadmaps.Find(id);
            if (roadmap == null)
            {
                return HttpNotFound();
            }
            return View(roadmap);
        }

        // POST: Roadmaps/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "RoadmapID,RoadmapName")] Roadmap roadmap)
        {
            if (ModelState.IsValid)
            {
                db.Entry(roadmap).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(roadmap);
        }

        // GET: Roadmaps/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Roadmap roadmap = db.Roadmaps.Find(id);
            if (roadmap == null)
            {
                return HttpNotFound();
            }
            return View(roadmap);
        }

        // POST: Roadmaps/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Roadmap roadmap = db.Roadmaps.Find(id);
            db.Roadmaps.Remove(roadmap);
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
