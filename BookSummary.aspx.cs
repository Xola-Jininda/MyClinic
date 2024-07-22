using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Clinic_2024_IFS303E.Presentation_Layer.Forms.Patient
{
    public partial class BookSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Appointment"] != null)
                {
                    var appointment = (Dashboard.Appointment)Session["Appointment"];
                    Session["AppointmentDate"] = appointment.Date.ToString("yyyy-MM-dd");
                    Session["AppointmentTime"] = appointment.Time.ToString(@"hh\:mm");
                    Session["PatientName"] = appointment.PatientName;
                    Session["Gender"] = appointment.Gender;
                    Session["ContactNumber"] = appointment.ContactNumber;
                    Session["Email"] = appointment.Email;
                    Session["Reason"] = appointment.Reason;
                }
                else
                {
                    //Response.Redirect("~/Presentation_Layer/Forms/Patient/Book.aspx");
                }
            }
        }
    }
}