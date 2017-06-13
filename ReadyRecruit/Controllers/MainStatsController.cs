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
    public class MainStatsController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: MainStats
        public ActionResult Index()
        {
            var mainStats = db.MainStats.Include(m => m.Link).Include(m => m.Mainstep);
            return View(mainStats.ToList());
        }

        // GET: MainStats/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MainStat mainStat = db.MainStats.Find(id);
            if (mainStat == null)
            {
                return HttpNotFound();
            }
            return View(mainStat);
        }

        // GET: MainStats/Create
        public ActionResult Create()
        {
            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID");
            ViewBag.MainstepID = new SelectList(db.Mainsteps, "MainstepID", "Name");
            return View();
        }

        // POST: MainStats/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MainStatID,DueDate,IsDone,Notes,MainstepID,LinkID")] MainStat mainStat)
        {
            if (ModelState.IsValid)
            {
                db.MainStats.Add(mainStat);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID", mainStat.LinkID);
            ViewBag.MainstepID = new SelectList(db.Mainsteps, "MainstepID", "Name", mainStat.MainstepID);
            return View(mainStat);
        }

        // GET: MainStats/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MainStat mainStat = db.MainStats.Find(id);
            if (mainStat == null)
            {
                return HttpNotFound();
            }
            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID", mainStat.LinkID);
            ViewBag.MainstepID = new SelectList(db.Mainsteps, "MainstepID", "Name", mainStat.MainstepID);
            return View(mainStat);
        }

        // POST: MainStats/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MainStatID,DueDate,IsDone,Notes,MainstepID,LinkID")] MainStat mainStat)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mainStat).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.LinkID = new SelectList(db.Links, "LinkID", "LinkID", mainStat.LinkID);
            ViewBag.MainstepID = new SelectList(db.Mainsteps, "MainstepID", "Name", mainStat.MainstepID);
            return View(mainStat);
        }

        // GET: MainStats/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MainStat mainStat = db.MainStats.Find(id);
            if (mainStat == null)
            {
                return HttpNotFound();
            }
            return View(mainStat);
        }

        // POST: MainStats/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MainStat mainStat = db.MainStats.Find(id);
            db.MainStats.Remove(mainStat);
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
