using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace forms_m7_autocomplete.autocomplete_07.before
{
    public partial class QueryHandler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> teams = new List<string>();
            teams.Add("Giants");
            teams.Add("Jets");

            string q = Request.QueryString["q"];
            var results = teams.Where(t => t.ToUpper().StartsWith(q.ToUpper()));

            JavaScriptSerializer jss = new JavaScriptSerializer();
            string output = jss.Serialize(results);
            Response.Write(output);
        }
    }
}