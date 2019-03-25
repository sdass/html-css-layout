using System;
using System.Threading;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace WebAppSimTab
{
   public partial class Default : System.Web.UI.Page
   {
      //readme help: https://www.codeproject.com/Articles/13165/A-Simple-ASP-NET-Tab-Control-Using-the-MultiView-c
      protected void Page_Load(object sender, EventArgs e)
      {

      }

      protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
      {
          MultiView1.ActiveViewIndex = Int32.Parse(e.Item.Value);
      }

      protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
      {

            Debug.WriteLine("ImageButton1_Click() . . .");
         Thread.Sleep(7000);
      }
   }
}