using ElectoSystem.EF;
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
        ElectoDbEntities dashboardEF;

        public DashboardHelper()
        {
            dashboardEF = new ElectoDbEntities();
        }

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
            return dashboardEF.tvotedstudents.ToList().Count;
        }

        ///======================================================================
        /// Method: GetTotalHouseVotedStudentsCount
        /// <summary>
        /// This method will return all students whose house voating is done.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetTotalHouseVotedStudentsCount()
        {
            return dashboardEF.tvotedstudents.Where(x => x.Vst_IVFHouse == true).ToList().Count;
        }

        ///======================================================================
        /// Method: GetTotalSenateVotedStudentsCount
        /// <summary>
        /// This method will return all students whose Senate voating is done.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetTotalSenateVotedStudentsCount()
        {
            return dashboardEF.tvotedstudents.Where(x => x.Vst_IVFSenate == true).ToList().Count;
        }

        ///======================================================================
        /// Method: GetTotalHouseUnvotedStudentsCount
        /// <summary>
        /// This method will return all students whose house voating is still pending.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetTotalHouseUnvotedStudentsCount()
        {
            return dashboardEF.tvotedstudents.Where(x => x.Vst_IVFHouse == false).ToList().Count;
        }

        ///======================================================================
        /// Method: GetTotalSenateUnvotedStudentsCount
        /// <summary>
        /// This method will return all students whose senate voating is still pending.
        /// </summary>
        /// <returns></returns>
        ///======================================================================
        protected internal int GetTotalSenateUnvotedStudentsCount()
        {
            return dashboardEF.tvotedstudents.Where(x => x.Vst_IVFSenate == false).ToList().Count;
        }

        protected internal void GetPrefectList()
        {
            StringBuilder lReturn = new StringBuilder();

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