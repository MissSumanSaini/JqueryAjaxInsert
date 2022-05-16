using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;


namespace JqueryAjaxInsert
{
    public  partial class Employee : System.Web.UI.Page
    {
        static SqlConnection Con = new SqlConnection("data source=SUMAN\\SQLEXPRESS; initial catalog=JQueryAjaxInsert14520;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static  void EmployeeInsert(string A, string B, int C)
        {
            Con.Open();
            SqlCommand cmd = new SqlCommand("Usp_Employee_Insert",Con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name",A);
            cmd.Parameters.AddWithValue("@Address",B);
            cmd.Parameters.AddWithValue("@Age", C);
            cmd.ExecuteNonQuery();
            Con.Close();
            
        }

    }
}