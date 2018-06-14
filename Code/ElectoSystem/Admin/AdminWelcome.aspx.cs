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
        private int lTotalHouseVotedStudents;
        private int lTotalSenateVotedStudents;
        private int lTotalHouseUnvotedStudents;
        private int lTotalSenateUnvotedStudents;
        private int lActiveHouseElections;
        private int lActiveSenateElections;
        
        protected int TotalHouseElections
        {
            get { return lTotalHouseElections; }
            set { lTotalHouseElections = value; }
        }

        protected int TotalSenateElections
        {
            get { return lTotalSenateElections; }
            set { lTotalSenateElections = value; }
        }

        protected int TotalHouseNominees
        {
            get { return lTotalHouseNominees; }
            set { lTotalHouseNominees = value; }
        }

        protected int TotalSenateNominees
        {
            get { return lTotalSenateNominees; }
            set { lTotalSenateNominees = value; }
        }

        protected int TotalVoters
        {
            get { return lTotalVoters; }
            set { lTotalVoters = value; }
        }

        protected int TotalHouseVotedStudents
        {
            get { return lTotalHouseVotedStudents; }
            set { lTotalHouseVotedStudents = value; }
        }

        protected int TotalSenateVotedStudents
        {
            get { return lTotalSenateVotedStudents; }
            set { lTotalSenateVotedStudents = value; }
        }

        protected int TotalHouseUnvotedStudents
        {
            get { return lTotalHouseUnvotedStudents; }
            set { lTotalHouseUnvotedStudents = value; }
        }

        protected int TotalSenateUnvotedStudents
        {
            get { return lTotalSenateUnvotedStudents; }
            set { lTotalSenateUnvotedStudents = value; }
        }

        protected int ActiveSenateElections
        {
            get { return lActiveSenateElections; }
            set { lActiveSenateElections = value; }
        }

        protected int ActiveHouseElections
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
            TotalHouseVotedStudents = dbHelper.GetTotalHouseVotedStudentsCount();
            TotalSenateVotedStudents = dbHelper.GetTotalSenateVotedStudentsCount();
            TotalHouseUnvotedStudents = dbHelper.GetTotalHouseUnvotedStudentsCount();
            TotalSenateUnvotedStudents = dbHelper.GetTotalSenateUnvotedStudentsCount();
        }
    }
}