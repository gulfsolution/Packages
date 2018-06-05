<%@ Page Language="vb" AutoEventWireup="false"%>


<%@ Import Namespace="GulfPortalComponents" %>
<%@ Import Namespace="GulfPortalDynamic" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Xml" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>HandleWorkflowTask</title>
	<script runat="server">
        Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load


            Response.ContentType = "text/xml"
            Dim reader As StreamReader = New StreamReader(Page.Request.InputStream)
            Dim xmlData As String = reader.ReadToEnd()
            Dim doc As XmlDocument = New XmlDocument()
            doc.LoadXml(xmlData)

            Dim leaveRequestId = doc.DocumentElement.Attributes("requestId").Value
            Dim entity = doc.GetElementsByTagName("entity")(0).InnerText

            Dim serverTask As ServerTask
            serverTask = New ServerTask
            ServerTask.HandleWorkflowTask("'HC Document'", "PER_HRA_Local_Distributor_SS", leaveRequestId, entity)
        End Sub

        Private Sub Page_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Disposed

        End Sub

	</script>
	
	</HEAD>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form id="Form2" method="post" runat="server">
			HandleWorkflowTask
		</form>
	</body>
</HTML>
