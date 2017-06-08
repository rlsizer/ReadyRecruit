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
    public class PriorServicesController : Controller
    {
        private ReadyRecruitEntities db = new ReadyRecruitEntities();

        // GET: PriorServices
        public ActionResult Index()
        {
            return View(db.PriorServices.ToList());
        }

        // GET: PriorServices/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PriorService priorService = db.PriorServices.Find(id);
            if (priorService == null)
            {
                return HttpNotFound();
            }
            return View(priorService);
        }

        // GET: PriorServices/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: PriorServices/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PriorServiceID,IsServe")] PriorService priorService)
        {
            if (ModelState.IsValid)
            {
                db.PriorServices.Add(priorService);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(priorService);
        }

        // GET: PriorServices/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PriorService priorService = db.PriorServices.Find(id);
            if (priorService == null)
            {
                return HttpNotFound();
            }
            return View(priorService);
        }

        // POST: PriorServices/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PriorServiceID,IsServe")] PriorService priorService)
        {
            if (ModelState.IsValid)
            {
                db.Entry(priorService).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(priorService);
        }

        // GET: PriorServices/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PriorService priorService = db.PriorServices.Find(id);
            if (priorService == null)
            {
                return HttpNotFound();
            }
            return View(priorService);
        }

        // POST: PriorServices/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PriorService priorService = db.PriorServices.Find(id);
            db.PriorServices.Remove(priorService);
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
