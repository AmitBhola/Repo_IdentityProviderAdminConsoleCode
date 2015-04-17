using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EncryptionAndEncodingHelper;

namespace IdentityProviderAdminConsole
{
    public partial class Test : System.Web.UI.Page
    {
        private ServiceReference2.Service1Client sfc = new ServiceReference2.Service1Client();
        private EncryptionAndEncoding eeh = new EncryptionAndEncoding("0123456789ABCDEF", "ABCDEFGH");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Concatenate the username and password
            string data = String.Format("{0}:{1}",txtb_username.Text,txtb_password.Text);
            string sentData = eeh.EncryptAndEncodeText(data);
            lbl_EncDataSent.Text = sentData;
            string encData  = sfc.GetData(sentData);
            lbl_EncDataRec.Text = encData;
            lbl_DecryptedData.Text = eeh.DecryptAndDecodeText(encData);
        }
    }
}