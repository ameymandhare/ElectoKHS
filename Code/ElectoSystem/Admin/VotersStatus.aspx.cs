using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ElectoSystem.Helper;
using Electo.Constants;
using Newtonsoft.Json;
using ElectoSystem.EF;

namespace ElectoSystem.Admin
{
    public partial class VotersStatus : System.Web.UI.Page
    {
        ElectoDbEntities dbEntities;
        UIHelper studentHelper = new UIHelper();

        string lJsonData;

        public string JsonData
        {
            get { return lJsonData; }
            set { lJsonData = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try 
            {
                dbEntities = new ElectoDbEntities();

                var lVotersData = (from students in dbEntities.tstudents
                         join votedStudent in dbEntities.tvotedstudents
                             on students.stud_Key equals votedStudent.Vst_StudentKey
                         select new
                         {
                             students.stud_Id,
                             students.stud_Key,
                             students.stud_FirstName,
                             students.stud_LastName,
                             stud_VotedForHouse = votedStudent.Vst_IVFHouse == true ? 1 : 2,
                             stud_VotedForSenate = votedStudent.Vst_IVFSenate == true ? 1 : 2,
                         }).ToList();

                JsonData = JsonConvert.SerializeObject(lVotersData);

            }
            catch(Exception ex)
            {
                studentHelper.LogError(Convert.ToInt32(ENums.EWSSeverity.Error), ex.ToString());
            }
        }
    }
}