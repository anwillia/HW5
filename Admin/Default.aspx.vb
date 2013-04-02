
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDeleted(sender As Object, e As System.Web.UI.WebControls.GridViewDeletedEventArgs) Handles GridView1.RowDeleted

        Literal1.Text = "The record has been deleted in the database."

    End Sub

    Protected Sub GridView1_RowUpdated(sender As Object, e As System.Web.UI.WebControls.GridViewUpdatedEventArgs) Handles GridView1.RowUpdated

        Literal1.Text = "The record has been updated in the database."

    End Sub

    
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Literal1.Text = ""
    End Sub
End Class
