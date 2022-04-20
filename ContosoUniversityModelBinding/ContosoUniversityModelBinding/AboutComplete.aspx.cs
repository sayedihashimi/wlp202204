using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContosoUniversityModelBinding {
    public partial class AboutComplete : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void MyButton_Click(object sender, EventArgs e) {
            this.LabelSelectedValue.Text = "The Big Lebowski";
        }

        protected void mylistbox_SelectedIndexChanged(object sender, EventArgs e) {
            this.LabelSubmitted.Text = this.mylistbox.SelectedValue;
        }
    }
}