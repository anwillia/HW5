
Partial Class Members_Default
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowCancelingEdit(sender As Object, e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit

        Response.Redirect("~/Members/Default.aspx")

    End Sub

    Protected Sub GridView1_RowUpdated(sender As Object, e As System.Web.UI.WebControls.GridViewUpdatedEventArgs) Handles GridView1.RowUpdated

        Literal2.Text = "The record has been updated in the database."

    End Sub
End Class
