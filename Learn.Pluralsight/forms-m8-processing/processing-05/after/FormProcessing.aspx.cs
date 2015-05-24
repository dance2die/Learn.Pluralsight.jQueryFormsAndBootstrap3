using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace forms_m8_processing.processing_05.after
{
    public partial class FormProcessing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string fullName = Request.Form["fullname"];
                string description = Request.Form["description"];
                string employmentStatus = Request.Form["employment-status"];
                bool indentationSkills = !String.IsNullOrEmpty(Request.Form["indentation"]);
                bool fastTyper = !String.IsNullOrEmpty(Request.Form["fast"]);
                bool resumeInGit = !String.IsNullOrEmpty(Request.Form["git"]);
                string majorQuirk = Request.Form["quirk"];

                string bonusData = Request.Form["bonus"];

                Response.StatusCode = 200;

            }
        }
    }
}