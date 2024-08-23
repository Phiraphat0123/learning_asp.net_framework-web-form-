using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogInWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkCookie(ReadCookie());
        }

        
        private void WriteCookie(string cookie)
        {
            if (cookie != null)
            {
                HttpCookie httpCookie = new HttpCookie("userEmail");
                httpCookie.Value = cookie;
                httpCookie.Expires = DateTime.Now.AddMinutes(30);
                Response.Cookies.Add(httpCookie);

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

        private void checkCookie(String cookie)
        {
            if (cookie == null || cookie == "")
            {

            }
            else
            {
                Response.Redirect("Welcome.aspx");
            }
        }

        protected void SubmitLogin(object sender, EventArgs e)
            
        {
            txtError.CssClass="alert_hidden";
            txtError.Text = "";
            if (txtEmail.Text=="" || txtPassword.Text == "")
            {
                //Response.Write("Error");
                txtError.Text = "Please input Email and Password";
                txtError.CssClass = "alert_show";
            }
            else
            if (txtPassword.Text.Length<8 || txtPassword.Text.Length>16)
            {
                //Response.Write("Error");
                txtError.Text = "The password length should be between 8 and 16 characters.";
                txtError.CssClass = "alert_show";
            }
            else
            {
                WriteCookie(txtEmail.Text);
                checkCookie(ReadCookie());

            }
        }
    }
}