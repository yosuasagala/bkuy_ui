using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BYUK_UI.Page;
using BYUK_UI.Function;
using BYUK_UI.Models;

namespace BYUK_UI
{
    public partial class Register : System.Web.UI.Page
    {
        String status = "", desc = "", id = "";
        int count_id = 0;
        Util cu = new Util();
        QueryUtil dbu = new QueryUtil();
        Validation val = new Validation();
        DataColumn dataColumn = new DataColumn();
        DataTable data = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (val.validationInputRegis(txtEmail.Text, txtNoHp.Text, txtPassword.Text))
            {
                DataTable cekUser = dbu.getUserbyName(txtEmail.Text);

                if (cekUser == null || cekUser.Rows.Count == 0)
                {
                    try
                    {
                        int indata = dbu.InsertNewEmployee(txtEmail.Text, cu.HashPassword(txtEmail.Text, txtNoHp.Text), txtNoHp.Text);

                        status = Constant.rc00;
                        desc = Constant.actionsucces;

                    }
                    catch (Exception ex)
                    {
                        status = Constant.rc01;
                        desc = ex.Message;
                        cu.Logging("Exception", ex.ToString());

                    }
                }
                else
                {
                    status = Constant.rc01;
                    desc = "User sudah terdaftar";
                }
            }
            else
            {
                status = Constant.rc01;
                desc = "Invalid Input";
            }



        }
    }
}