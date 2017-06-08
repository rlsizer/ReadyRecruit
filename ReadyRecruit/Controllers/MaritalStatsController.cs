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
    public class MaritalStatsController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: MaritalStats
        public ActionResult Index()
        {
            return View(db.MaritalStats.ToList());
        }

        // GET: MaritalStats/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MaritalStat maritalStat = db.MaritalStats.Find(id);
            if (maritalStat == null)
            {
                return HttpNotFound();
            }
            return View(maritalStat);
        }

        // GET: MaritalStats/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: MaritalStats/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaritalStatID,Status")] MaritalStat maritalStat)
        {
            if (ModelState.IsValid)
            {
                db.MaritalStats.Add(maritalStat);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(maritalStat);
        }

        // GET: MaritalStats/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MaritalStat maritalStat = db.MaritalStats.Find(id);
            if (maritalStat == null)
            {
                return HttpNotFound();
            }
            return View(maritalStat);
        }

        // POST: MaritalStats/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaritalStatID,Status")] MaritalStat maritalStat)
        {
            if (ModelState.IsValid)
            {
                db.Entry(maritalStat).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(maritalStat);
        }

        // GET: MaritalStats/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MaritalStat maritalStat = db.MaritalStats.Find(id);
            if (maritalStat == null)
            {
                return HttpNotFound();
            }
            return View(maritalStat);
        }

        // POST: MaritalStats/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MaritalStat maritalStat = db.MaritalStats.Find(id);
            db.MaritalStats.Remove(maritalStat);
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
