
Partial Class Login_Default
    Inherits System.Web.UI.Page

    'Set focus to username box of the login
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Login1.Focus()
    End Sub

End Class
