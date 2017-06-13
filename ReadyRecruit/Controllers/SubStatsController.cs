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
    public class SubStatsController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: SubStats
        public ActionResult Index()
        {
            var subStats = db.SubStats.Include(s => s.Link).Include(s => s.Substep);
            return View(subStats.ToList());
        }

        // GET: SubStats/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SubStat subStat = db.SubStats.Find(id);
            if (subStat == null)
            {
                return HttpNotFound();
            }
            return View(subStat);
        }

        // GET: SubStats/Create
        public ActionResult Create()
        {
            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID");
            ViewBag.SubstepID = new SelectList(db.Substeps, "SubstepID", "Name");
            return View();
        }

        // POST: SubStats/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SubStatID,DueDate,IsDone,Notes,SubstepID,LinkID")] SubStat subStat)
        {
            if (ModelState.IsValid)
            {
                db.SubStats.Add(subStat);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID", subStat.LinkID);
            ViewBag.SubstepID = new SelectList(db.Substeps, "SubstepID", "Name", subStat.SubstepID);
            return View(subStat);
        }

        // GET: SubStats/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SubStat subStat = db.SubStats.Find(id);
            if (subStat == null)
            {
                return HttpNotFound();
            }
            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID", subStat.LinkID);
            ViewBag.SubstepID = new SelectList(db.Substeps, "SubstepID", "Name", subStat.SubstepID);
            return View(subStat);
        }

        // POST: SubStats/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SubStatID,DueDate,IsDone,Notes,SubstepID,LinkID")] SubStat subStat)
        {
            if (ModelState.IsValid)
            {
                db.Entry(subStat).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID", subStat.LinkID);
            ViewBag.SubstepID = new SelectList(db.Substeps, "SubstepID", "Name", subStat.SubstepID);
            return View(subStat);
        }

        // GET: SubStats/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SubStat subStat = db.SubStats.Find(id);
            if (subStat == null)
            {
                return HttpNotFound();
            }
            return View(subStat);
        }

        // POST: SubStats/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SubStat subStat = db.SubStats.Find(id);
            db.SubStats.Remove(subStat);
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
