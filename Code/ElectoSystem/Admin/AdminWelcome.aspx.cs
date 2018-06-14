using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ElectoSystem.Helper;

namespace ElectoSystem.Admin
{
    public partial class AdminWelcome : System.Web.UI.Page
    {
        DashboardHelper dbHelper;

        private int lTotalHouseElections;
        private int lTotalSenateElections;
        private int lTotalHouseNominees;
        private int lTotalSenateNominees;
        private int lTotalVoters;
        private int lTotalVotedStudents;
        private int lTotalUnvotedStudents;
        private int lActiveHouseElections;
        private int lActiveSenateElections;
        
        protected int TotalHouseElections
        {
            get { return lTotalHouseElections; }
            set { lTotalHouseElections = value; }
        }
        
        public int TotalSenateElections
        {
            get { return lTotalSenateElections; }
            set { lTotalSenateElections = value; }
        }

        public int TotalHouseNominees
        {
            get { return lTotalHouseNominees; }
            set { lTotalHouseNominees = value; }
        }

        public int TotalSenateNominees
        {
            get { return lTotalSenateNominees; }
            set { lTotalSenateNominees = value; }
        }

        public int TotalVoters
        {
            get { return lTotalVoters; }
            set { lTotalVoters = value; }
        }

        public int TotalVotedStudents
        {
            get { return lTotalVotedStudents; }
            set { lTotalVotedStudents = value; }
        }

        public int TotalUnvotedStudents
        {
            get { return lTotalUnvotedStudents; }
            set { lTotalUnvotedStudents = value; }
        }

        public int ActiveSenateElections
        {
            get { return lActiveSenateElections; }
            set { lActiveSenateElections = value; }
        }

        public int ActiveHouseElections
        {
            get { return lActiveHouseElections; }
            set { lActiveHouseElections = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            dbHelper = new DashboardHelper();
            TotalHouseElections = dbHelper.GetAllHouseElectionsCount();
            TotalSenateElections = dbHelper.GetAllSenateElectionsCount();
            TotalHouseNominees = dbHelper.GetTotalHouseNomineesCount();
            TotalSenateNominees = dbHelper.GetTotalSenateNomineesCount();
            TotalVoters = dbHelper.GetTotalVotersCount();
            ActiveSenateElections = dbHelper.GetActiveSenateElectionsCount();
            ActiveHouseElections = dbHelper.GetActiveHouseElectionsCount();
            TotalVotedStudents = dbHelper.GetTotalVotedStudentsCount();
            TotalUnvotedStudents = dbHelper.GetTotalUnvotedStudentsCount();
        }
    }
}