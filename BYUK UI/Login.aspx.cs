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
    public partial class Login : System.Web.UI.Page
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            loginroutine();
        }


        private void loginroutine()
        {
            try
            {
                if (val.validationInputLogin(txtEmail.Text, txtPassword.Text))
                {
                    DataTable cekUser = dbu.getUserAuth(txtEmail.Text, txtPassword.Text);

                    if (cekUser.Rows.Count > 0)
                    {
                        int result = dbu.UpdateLoginStat(txtEmail.Text, "Y");

                        if (result > 0)
                        {
                            status = Constant.rc00;
                            desc = "Login Berhasil";
                            Response.Redirect("~/Page/Admin/UploadCourse.aspx");
                        }
                        else
                        {
                            status = Constant.rc01;
                            desc = "Login Gagal";
                        }

                    }
                    else
                    {
                        status = Constant.rc01;
                        desc = "UserId/Password Salah";
                    }
                }
                else
                {
                    status = Constant.rc01;
                    desc = "Invalid Input";
                }


            }
            catch (Exception ex)
            {
                status = Constant.rc01;
                desc = ex.Message;
                cu.Logging("Exception", ex.ToString());
            }
        }
    }
}