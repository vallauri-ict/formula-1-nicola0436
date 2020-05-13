using FormulaOneDll;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApiProject.Controllers
{
    [RoutePrefix("api/racesscores")]
    public class racesscoresController : ApiController
    {
        DbTools db = new DbTools();

        public IEnumerable<RacesScore> GetAllRacesScores()
        {
            db.GetRacesScores();
            return db.RacesScores.Values;
        }
        [Route("{id:int}")]
        public IHttpActionResult GetRacesScore(int id)
        {
            db.GetRacesScores();
            if (db.RacesScores[id] == null)
                return NotFound();

            return Ok(db.RacesScores[id]);
        }
        [Route("position/{pos:int}")]
        public IEnumerable<RacesScore> GetWinnersRacesScore(int pos)
        {
            db.GetPositionRacesScores(pos);
            return db.RacesScores.Values;
        }
    }
}