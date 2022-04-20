﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ContosoUniversityModelBinding.Models;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Web.ModelBinding;

namespace ContosoUniversityModelBinding {
    public partial class Students : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }
        public IQueryable<Student> studentsGrid_GetData([Control] AcademicYear? displayYear) {
            SchoolContext db = new SchoolContext();
            var query = db.Students.Include(s => s.Enrollments.Select(e => e.Course));

            if (displayYear != null) {
                query = query.Where(s => s.Year == displayYear);
            }

            return query;
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void studentsGrid_UpdateItem(int studentID) {
            using (SchoolContext db = new SchoolContext()) {
                Student item = null;
                item = db.Students.Find(studentID);
                if(item == null) {
                    ModelState.AddModelError("", $"Item with id {studentID} was not found");
                    return;
                }
                TryUpdateModel(item);
                if (ModelState.IsValid) {
                    db.SaveChanges();
                }
            }
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void studentsGrid_DeleteItem(int studentID) {
            using (var db = new SchoolContext()) {
                var item = new Student { StudentID = studentID };
                db.Entry(item).State = EntityState.Deleted;
                try {
                    db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException) {
                    ModelState.AddModelError("", $"Item with id {studentID} no longer exists in the database");
                }
            }
        }
    }
}