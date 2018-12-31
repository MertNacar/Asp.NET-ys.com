using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebProje
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShowImage_Click(object sender, EventArgs e)
        {



            string folderPath = Server.MapPath("~/Files/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FıleImageUpload.SaveAs(folderPath + Path.GetFileName(FıleImageUpload.FileName));

            //Display the Picture in Image control.
            UploadedImage.ImageUrl = "~/Files/" + Path.GetFileName(FıleImageUpload.FileName);

            UploadedImage.Visible = true;
            btnShow.Visible = false;
            btnUpload.Visible = true;
            //    if (FıleImageUpload.HasFile)
            //    {
            //        try
            //        {
            //            if (FıleImageUpload.PostedFile.ContentType == "image/jpeg")
            //            {
            //                if (FıleImageUpload.PostedFile.ContentLength < 1024000)
            //                {
            //                    string filename = Path.GetFileName(FıleImageUpload.FileName);
            //                    if (filename != "")
            //                    {
            //                        FıleImageUpload.SaveAs(Server.MapPath("~/images/") + filename);
            //                        lblDurum.Text = filename + " dosyası yüklendi!";

            //                    }

            //                }
            //                else
            //                    lblDurum.Text = "Dosya boyutu 1 MB'dan düşük olmalı!";
            //            }
            //            else
            //                lblDurum.Text = "Sadece JPEG formatı kabul edilir.";
            //        }
            //        catch (Exception ex)
            //        {
            //            lblDurum.Text = "Dosya yüklenemedi: " + ex.Message;
            //        }
            //    }
            //}
        }

        protected void btnUploadImage_Click(object sender, EventArgs e)
        {

        }
    }
}