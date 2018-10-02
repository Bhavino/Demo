using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Dynamic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text.RegularExpressions;
using System.Web.Http;
using System.Web.Http.Description;
using WebApplication4;

namespace WebApplication4.Controllers
{
    public class PeopleAPIController : ApiController
    {
        private DemoDBEntities db = new DemoDBEntities();

        [HttpGet]
        [Route("api/PeopleAPI/LoadData")]
        public IHttpActionResult LoadData()
        {
            string sql = "exec [procLoadData]";
            var results = db.Database.SqlQuery<Person>(sql).ToList<Person>();
            return Ok(results);
        }

        // GET: api/PeopleAPI
        public IQueryable<Person> GetPeople()
        {
            return db.People;
        }

        // GET: api/PeopleAPI/5
        [ResponseType(typeof(Person))]
        public IHttpActionResult GetPerson(int id)
        {
            Person person = db.People.Find(id);
            if (person == null)
            {
                return NotFound();
            }

            return Ok(person);
        }

        // PUT: api/PeopleAPI/5
        [ResponseType(typeof(void))]
        [Route("api/test123")]
        public IHttpActionResult PutPerson(Person person)
        {
            //Name, Sex, DOB, Address, Money
            dynamic error = new ExpandoObject();

            /* NAME */

            //Checks length
            if (person.Name.Length < 1)
            {
                error.msg = "Name length is too short!";

                return Content(HttpStatusCode.BadRequest, error);
            }

            //Check if alphabetic
            if (Regex.IsMatch(person.Name, @"^[a-zA-Z]+$") == false)
            { 
                error.name = "NNNName is not alphabetic.";
                error.sex = "test";
                error.dob = "test";
                error.address = "test";
                error.money = "test";

                return Content(HttpStatusCode.BadRequest, error);
            }

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Entry(person).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                throw;
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/PeopleAPI
        [ResponseType(typeof(Person))]
        public IHttpActionResult PostPerson(Person person)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.People.Add(person);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = person.PersonID }, person);
        }

        // DELETE: api/PeopleAPI/5
        [ResponseType(typeof(Person))]
        public IHttpActionResult DeletePerson(int id)
        {
            Person person = db.People.Find(id);
            if (person == null)
            {
                return NotFound();
            }

            db.People.Remove(person);
            db.SaveChanges();

            return Ok(person);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool PersonExists(int id)
        {
            return db.People.Count(e => e.PersonID == id) > 0;
        }
    }
}