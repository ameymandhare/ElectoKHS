using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace ElectoSystem.Helper
{
    ///======================================================================
    /// Class: DashboardHelper
    /// <summary>
    /// DashboardHelper will help to fetch value from database
    /// </summary>
    /// <returns></returns>
    ///======================================================================
    public class DashboardHelper
    {
        DashboardEntities dashboardEF;

        ///======================================================================
        /// Method: GetAllHouseElectionsCount
        /// <summary>
        /// This method will return the active election counts which represents,
        /// ongoing elections. It may contain multiple types of house elections.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetAllHouseElectionsCount()
        {
            dashboardEF = new DashboardEntities();

            //return dashboardEF.thouseelections.Where(x => x.Hel_StartDate > DateTime.Now && DateTime.Now <= x.Hel_EndDate).ToList().Count;
            return dashboardEF.thouseelections.ToList().Count;
        }

        ///======================================================================
        /// Method: GetActiveHouseElectionsCount
        /// <summary>
        /// This method will return the active election counts which represents,
        /// ongoing elections. It may contain multiple types of house elections.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetActiveHouseElectionsCount()
        {
            dashboardEF = new DashboardEntities();

            return dashboardEF.thouseelections.Where(x => x.Hel_StartDate <= DateTime.Now && x.Hel_EndDate >= DateTime.Now).ToList().Count;
            //return dashboardEF.thouseelections.ToList().Count;
        }

        ///======================================================================
        /// Method: GetAllSenateElectionsCount
        /// <summary>
        /// This method will return the active election counts which represents,
        /// ongoing elections. It may contain multiple types of senate elections.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetAllSenateElectionsCount()
        {
            dashboardEF = new DashboardEntities();

            //return dashboardEF.tsenateelections.Where(x => x.Sel_StartDate > DateTime.Now && DateTime.Now <= x.Sel_EndDate).ToList().Count;
            return dashboardEF.tsenateelections.ToList().Count;
        }

        ///======================================================================
        /// Method: GetActiveSenateElectionsCount
        /// <summary>
        /// This method will return the active election counts which represents,
        /// ongoing elections. It may contain multiple types of senate elections.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetActiveSenateElectionsCount()
        {
            dashboardEF = new DashboardEntities();

            return dashboardEF.tsenateelections.Where(x => x.Sel_StartDate > DateTime.Now && DateTime.Now <= x.Sel_EndDate).ToList().Count;
        }

        ///======================================================================
        /// Method: GetTotalHouseNomineesCount
        /// <summary>
        /// This method will return all house nominee's counts.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetTotalHouseNomineesCount()
        {
            dashboardEF = new DashboardEntities();

            return dashboardEF.thousenominations.Where(x => x.Hsn_IsDeleted != true).ToList().Count;
        }

        ///======================================================================
        /// Method: GetTotalSenateNomineesCount
        /// <summary>
        /// This method will return all senate nominee's counts.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetTotalSenateNomineesCount()
        {
            dashboardEF = new DashboardEntities();

            return dashboardEF.tsenatenominations.Where(x => x.Snn_IsDeleted != true).ToList().Count;
        }

        ///======================================================================
        /// Method: GetTotalVotersCount
        /// <summary>
        /// This method will return total count of voters in system.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetTotalVotersCount()
        {
            dashboardEF = new DashboardEntities();

            return dashboardEF.tvotedstudents.ToList().Count;
        }

        ///======================================================================
        /// Method: GetTotalVotedStudentsCount
        /// <summary>
        /// This method will return all students whose voating is still done.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetTotalVotedStudentsCount()
        {
            dashboardEF = new DashboardEntities();

            return dashboardEF.tvotedstudents.Where(x => x.Vst_IVFHouse == true && x.Vst_IVFSenate == true).ToList().Count;
        }

        ///======================================================================
        /// Method: GetTotalUnvotedStudentsCount
        /// <summary>
        /// This method will return all students whose voating is still pending.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetTotalUnvotedStudentsCount()
        {
            dashboardEF = new DashboardEntities();

            return dashboardEF.tvotedstudents.Where(x => x.Vst_IVFHouse != true || x.Vst_IVFSenate != true).ToList().Count;
        }

        protected internal void GetPrefectList()
        {
            StringBuilder lReturn = new StringBuilder();

            dashboardEF = new DashboardEntities();

            var a = (from students in dashboardEF.tstudents
                     join nominees in dashboardEF.thousenominations
                     on students.stud_Key equals nominees.Hsn_studKey
                     join designation in dashboardEF.thousedesignations
                     on nominees.Hsn_HouseDesignationId equals designation.Hsd_Id
                     select new
                     {
                         name = students.stud_FirstName + students.stud_LastName,
                         votecount = nominees.Hsn_VoteCount,
                         designation = designation.Hsd_DesCode
                     });

        }
    }
}