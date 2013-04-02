Imports System.Net.Mail

Partial Class Members_Request
    Inherits System.Web.UI.Page

    Protected Sub SendEmail_Click(sender As Object, e As System.EventArgs) Handles SendEmail.Click
        'to address (change this for it to go to a different e-mail)
        Const ToAddress As String = "andrew-williams-1@uiowa.edu"

        '(1) Create the MailMessage instance
        Dim mm As New MailMessage(UsersEmail.Text, ToAddress)

        '(2) Assign the MailMessage's properties
        mm.Subject = Subject.Text
        mm.Body = Body.Text
        mm.IsBodyHtml = False

        '(3) Create the SmtpClient object
        Dim smtp As New SmtpClient

        '(4) Send the MailMessage (will use the Web.config settings)
        smtp.Send(mm)

        Literal3.Text = "Your E-mail has been sucessfully sent."
        UsersEmail.Text = ""
        Subject.Text = ""
        Body.Text = ""
    End Sub
End Class
