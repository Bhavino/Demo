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
 
        // PUT: api/test123
        [ResponseType(typeof(void))]
        [Route("api/test123")]
        public IHttpActionResult PutPerson(Person person)
        {
            //Creates new dynamic object to store error messages
            dynamic errorList = new ExpandoObject();

            //Checks if person data is valid
            errorList = ValidCheck(person);

            //if errorList is empty, no errors are returned
            if (errorList.name != "" || errorList.sex != "" || errorList.address != "" || errorList.money != "")
            {
                return Content(HttpStatusCode.BadRequest, errorList);
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

            //Creates new dynamic object to store error messages
            dynamic errorList = new ExpandoObject();

            //Checks if person data is valid
            errorList = ValidCheck(person);

            //if errorList is empy, no errors are returned
            if (errorList.name != "" || errorList.sex != "" || errorList.address != "" || errorList.money != "")
            {
                return Content(HttpStatusCode.BadRequest, errorList);
            }

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

        //Checks validity of all fields
        public dynamic ValidCheck(Person person)
        {
            dynamic errorList = new ExpandoObject();

            errorList.name = "";
            errorList.dob = "";
            errorList.sex = "";
            errorList.address = "";
            errorList.money = "";

            /* NAME */

            //length
            if (person.Name.Length < 1 || person.Name.Length > 20)
            {
                errorList.name = "Name length is too short";
            }

            //alphabetic
            if (Regex.IsMatch(person.Name, @"^[a-zA-Z ]+$") == false)
            {
                errorList.name = "Name should only contain letters";
            }

            /* SEX */

            //length
            if (person.Sex.Length < 1 || person.Sex.Length > 10)
            {
                errorList.sex = "Sex length is too short";
            }

            //alphabetic
            if (Regex.IsMatch(person.Sex, @"^[a-zA-Z]+$") == false)
            {
                errorList.sex = "Sex should only contain letters";
            }

            /* ADDRESS */

            //length
            if (person.Address.Length < 1 || person.Address.Length > 50)
            {
                errorList.address = "Address length is too short";
            }

            //alphabetic
            if (Regex.IsMatch(person.Address, @"^[a-zA-Z ]+$") == false)
            {
                errorList.address = "Address should only contain letters";
            }

            /* MONEY */

            //length
            if (person.Money.ToString().Length < 1 || person.Money.ToString().Length > 50)
            {
                errorList.money = "Money length is too short";
            }

            //negative
            if (person.Money < 0)
            {
                errorList.money = "Money should not be negative";
            }

            //number
            if (!Regex.IsMatch(person.Money.ToString(), @"^\d+\.{0,1}\d+$"))
            {
                errorList.money = "Money should only be numbers";
            }

            return errorList;
        }
    }
}