using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BYUK_UI.Function;
using BYUK_UI.Models;
using BYUK_UI.Page;

namespace BYUK_UI.Function
{
    public class Validation
    {

        public bool validationInputRegis(string UserName,  string NoHP, string Password)
        {
            bool result = false;


            if (UserName != "" && Password != "" && NoHP != "" && UserName != null && Password != null && NoHP != null)
            {
                result = true;
            }

            return result;

        }

        public bool validationInputLogin(string UserName, string Password)
        {
            bool result = false;


            if (UserName != "" && Password != "" && UserName != null && Password != null )
            {
                result = true;
            }

            return result;

        }
    }
}