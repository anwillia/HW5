
Partial Class Admin_EditShow
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Response.Redirect("~/Admin/Default.aspx")

    End Sub
End Class
