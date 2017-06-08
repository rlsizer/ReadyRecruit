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
    public class HeadstepsController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: Headsteps
        public ActionResult Index()
        {
            var headsteps = db.Headsteps.Include(h => h.Mainstep);
            return View(headsteps.ToList());
        }

        // GET: Headsteps/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Headstep headstep = db.Headsteps.Find(id);
            if (headstep == null)
            {
                return HttpNotFound();
            }
            return View(headstep);
        }

        // GET: Headsteps/Create
        public ActionResult Create()
        {
            ViewBag.MainstepID = new SelectList(db.Mainsteps, "MainstepID", "Name");
            return View();
        }

        // POST: Headsteps/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "HeadstepID,Number,Name,DueDate,IsDone,Notes,Points,MainstepID")] Headstep headstep)
        {
            if (ModelState.IsValid)
            {
                db.Headsteps.Add(headstep);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MainstepID = new SelectList(db.Mainsteps, "MainstepID", "Name", headstep.MainstepID);
            return View(headstep);
        }

        // GET: Headsteps/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Headstep headstep = db.Headsteps.Find(id);
            if (headstep == null)
            {
                return HttpNotFound();
            }
            ViewBag.MainstepID = new SelectList(db.Mainsteps, "MainstepID", "Name", headstep.MainstepID);
            return View(headstep);
        }

        // POST: Headsteps/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "HeadstepID,Number,Name,DueDate,IsDone,Notes,Points,MainstepID")] Headstep headstep)
        {
            if (ModelState.IsValid)
            {
                db.Entry(headstep).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MainstepID = new SelectList(db.Mainsteps, "MainstepID", "Name", headstep.MainstepID);
            return View(headstep);
        }

        // GET: Headsteps/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Headstep headstep = db.Headsteps.Find(id);
            if (headstep == null)
            {
                return HttpNotFound();
            }
            return View(headstep);
        }

        // POST: Headsteps/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Headstep headstep = db.Headsteps.Find(id);
            db.Headsteps.Remove(headstep);
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
