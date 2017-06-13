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
    public class HeadStatsController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: HeadStats
        public ActionResult Index()
        {
            var headStats = db.HeadStats.Include(h => h.Headstep).Include(h => h.Link);
            return View(headStats.ToList());
        }

        // GET: HeadStats/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HeadStat headStat = db.HeadStats.Find(id);
            if (headStat == null)
            {
                return HttpNotFound();
            }
            return View(headStat);
        }

        // GET: HeadStats/Create
        public ActionResult Create()
        {
            ViewBag.HeadstepID = new SelectList(db.Headsteps, "HeadstepID", "Name");
            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID");
            return View();
        }

        // POST: HeadStats/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "HeadStatID,DueDate,IsDone,Notes,HeadstepID,LinkID")] HeadStat headStat)
        {
            if (ModelState.IsValid)
            {
                db.HeadStats.Add(headStat);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.HeadstepID = new SelectList(db.Headsteps, "HeadstepID", "Name", headStat.HeadstepID);
            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID", headStat.LinkID);
            return View(headStat);
        }

        // GET: HeadStats/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HeadStat headStat = db.HeadStats.Find(id);
            if (headStat == null)
            {
                return HttpNotFound();
            }
            ViewBag.HeadstepID = new SelectList(db.Headsteps, "HeadstepID", "Name", headStat.HeadstepID);
            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID", headStat.LinkID);
            return View(headStat);
        }

        // POST: HeadStats/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "HeadStatID,DueDate,IsDone,Notes,HeadstepID,LinkID")] HeadStat headStat)
        {
            if (ModelState.IsValid)
            {
                db.Entry(headStat).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.HeadstepID = new SelectList(db.Headsteps, "HeadstepID", "Name", headStat.HeadstepID);
            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID", headStat.LinkID);
            return View(headStat);
        }

        // GET: HeadStats/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HeadStat headStat = db.HeadStats.Find(id);
            if (headStat == null)
            {
                return HttpNotFound();
            }
            return View(headStat);
        }

        // POST: HeadStats/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HeadStat headStat = db.HeadStats.Find(id);
            db.HeadStats.Remove(headStat);
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
