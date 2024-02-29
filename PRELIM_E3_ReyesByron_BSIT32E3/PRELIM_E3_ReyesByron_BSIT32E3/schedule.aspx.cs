using System;
using System.Collections.Generic;

namespace PRELIM_E3_ReyesByron_BSIT32E3
{
    public partial class schedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                List<ScheduleItem> scheduleData = new List<ScheduleItem>
                {
                    new ScheduleItem("Systems Integration & Architecture 1", "Prof Banag", "3", "", "Thursday | 07:00-09:00 PM", new FaceToFaceSchedule("MON/TUE | 08:00-9:30 PM", "202")),
                    new ScheduleItem("Panitikan", "Prof Zaide", "3", "Thursday | 02:00-04:00 PM", "Monday | 03:00-04:00 PM", new FaceToFaceSchedule("", "220")),
                     new ScheduleItem("Capstone Project & Research 1", "Prof R. Ellana", "3", "", "Wednesday | 05:00-07:00 PM", new FaceToFaceSchedule("MON/TUE | 06:30-08:00 PM", "217")),
                    new ScheduleItem("Quantitave Methods(Modelling & Simulation)", "Prof Deladia", "3", "", "Wednesday | 03:00-05:00 PM", new FaceToFaceSchedule("MON/TUE | 05:00-06:30 PM", "INT1")),
                      new ScheduleItem("IT Elective 3(FULL STACK)", "Prof Alamo", "3", "", "Thursday | 05:00-07:00 PM", new FaceToFaceSchedule("SAT | 01:00-04:00 PM", "INT1")),
                     new ScheduleItem("Information Assurance and Security 1", "Prof Malig-on", "3", "", "Thursday | 04:00-06:00 PM", new FaceToFaceSchedule("TUE | 03:00-04:00 PM", "219")),
                };

       
                ScheduleGridView.DataSource = scheduleData;
                ScheduleGridView.DataBind();
            }
        }
    }

    public class ScheduleItem
    {
        public string SubjectTitle { get; set; }
        public string Teacher { get; set; }
        public string Unit { get; set; }
        public string OnlineSynchronous { get; set; }
        public string Asynchronous { get; set; }
        public FaceToFaceSchedule FaceToFace { get; set; }

        public ScheduleItem(string subjectTitle, string teacher, string unit, string onlineSynchronous, string asynchronous, FaceToFaceSchedule faceToFace)
        {
            SubjectTitle = subjectTitle;
            Teacher = teacher;
            Unit = unit;
            OnlineSynchronous = onlineSynchronous;
            Asynchronous = asynchronous;
            FaceToFace = faceToFace;
        }
    }

    public class FaceToFaceSchedule
    {
        public string DayTime { get; set; }
        public string RoomNumber { get; set; }

        public FaceToFaceSchedule(string dayTime, string roomNumber)
        {
            DayTime = dayTime;
            RoomNumber = roomNumber;
        }
    }
}
