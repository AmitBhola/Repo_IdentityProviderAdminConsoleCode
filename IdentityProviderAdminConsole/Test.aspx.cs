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
            ServiceReference2.CompositeType c = new ServiceReference2.CompositeType();
            c.BoolValue = false;
            c.EncryptedAndEncodedText = sentData;
            c =  sfc.GetDataUsingDataContract(c);
            string encData = c.EncryptedAndEncodedText;
            lbl_EncDataRec.Text = encData;
            lbl_DecryptedData.Text = eeh.DecryptAndDecodeText(encData);
            lbl_username.Text = c.UserName;
            lbl_userNickName.Text = c.UserNickName;
            lbl_address.Text = c.UserAddr;

        }



        
        
    }
}