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
    public class SubstepsController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: Substeps
        public ActionResult Index()
        {
            var substeps = db.Substeps.Include(s => s.Headstep);
            return View(substeps.ToList());
        }

        // GET: Substeps/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Substep substep = db.Substeps.Find(id);
            if (substep == null)
            {
                return HttpNotFound();
            }
            return View(substep);
        }

        // GET: Substeps/Create
        public ActionResult Create()
        {
            ViewBag.HeadstepID = new SelectList(db.Headsteps, "HeadstepID", "Name");
            return View();
        }

        // POST: Substeps/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SubstepID,Number,Name,DueDate,IsDone,Notes,Points,HeadstepID")] Substep substep)
        {
            if (ModelState.IsValid)
            {
                db.Substeps.Add(substep);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.HeadstepID = new SelectList(db.Headsteps, "HeadstepID", "Name", substep.HeadstepID);
            return View(substep);
        }

        // GET: Substeps/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Substep substep = db.Substeps.Find(id);
            if (substep == null)
            {
                return HttpNotFound();
            }
            ViewBag.HeadstepID = new SelectList(db.Headsteps, "HeadstepID", "Name", substep.HeadstepID);
            return View(substep);
        }

        // POST: Substeps/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SubstepID,Number,Name,DueDate,IsDone,Notes,Points,HeadstepID")] Substep substep)
        {
            if (ModelState.IsValid)
            {
                db.Entry(substep).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.HeadstepID = new SelectList(db.Headsteps, "HeadstepID", "Name", substep.HeadstepID);
            return View(substep);
        }

        // GET: Substeps/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Substep substep = db.Substeps.Find(id);
            if (substep == null)
            {
                return HttpNotFound();
            }
            return View(substep);
        }

        // POST: Substeps/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Substep substep = db.Substeps.Find(id);
            db.Substeps.Remove(substep);
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
