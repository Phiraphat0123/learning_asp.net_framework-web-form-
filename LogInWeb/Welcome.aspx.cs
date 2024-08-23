using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogInWeb
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkCookie(ReadCookie());
            txtWelcome.Text = ReadCookie();
        }

        private void checkCookie(String cookie) 
        {
            if (cookie == null|| cookie=="")
            {
                Response.Redirect("Login.aspx");
            }
            
        }
        

        private string ReadCookie()
        {
            HttpCookie httpCookie = Request.Cookies["userEmail"];

            if (httpCookie == null)
            {
                return "";
            }
            else
            {
                return httpCookie.Value;
            }
        }

        protected void SubmitLogOut(object sender, EventArgs e)
        {

            Response.Cookies["userEmail"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("Login.aspx");
        }
    }
}