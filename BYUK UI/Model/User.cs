﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BYUK_UI.Models
{
    public class Login
    {
        public string UserName { get; set; }
        public string Password { get; set; }
    }

    public class Regis
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public string NoHP { get; set; }
    }
}