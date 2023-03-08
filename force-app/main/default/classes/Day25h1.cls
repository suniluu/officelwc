public class Day25h1 {
    public void Resume(){
   String pdfContent='<center><h1>Resume</h1></center><br> Name:Abhi<br>Age=21<br>Qualification=B.tech<br>PhoneNo=998975346<br>';
       
        Attachment attachmentpdf=new Attachment();
        attachmentpdf.ParentId='a015g00000fvJD2AAM';
        attachmentpdf.Name='Resume'+'.pdf';
        attachmentpdf.Body=blob.toPdf(pdfContent);
        insert attachmentpdf;
    }
}