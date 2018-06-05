<%@ Page Language="vb" AutoEventWireup="false" %>
<%@ Import Namespace="GulfPortalDynamic" %>
<%@ import Namespace="GulfPortalComponents" %>
<%@ Import Namespace="System.Data" %>
<script Language="VB" runat="server">
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Dim Screen as string = Request.QueryString("Screen")
        Dim ID as string = Request.QueryString("ID")
        Dim g As Guid
        g = Guid.NewGuid()

        If Not String.IsNullOrEmpty(Screen) Then
            If Not String.IsNullOrEmpty(ID) Then
                'SET SESSION VARIABLES
                ''GulfportalDynamic.SV.SetSV("UploadsScreen",Screen)
                ''GulfportalDynamic.SV.SetSV("UploadsGUID",g.ToString())
                ''GulfportalDynamic.SV.SetSV("UploadsMasterID",ID)
                Session("UploadsScreen") = Screen
                Session("UploadsGUID") = Convert.toString(g)
                Session("UploadsMasterID") = ID

                If Screen.Contains("Refund") Then
                    Dim employeeSettingsDataView As DataView = SV.ExecuteDataView("SELECT Employee FROM [DEV PORTAL USERS] WHERE [Login Name] = N'" & SV.GetSV("UserID") & "'")
                    Dim uploadAttachmentSettingsDataView As DataView = SV.ExecuteDataView("Select [Folder Name] From [DEV PORTAL Screen Upload Settings] Where [Screen Name] = N'" & Screen & "'")

                    Session("UploadsEmployee") = employeeSettingsDataView(0)(0).ToString

                    If Not uploadAttachmentSettingsDataView Is Nothing Then
                        Session("UploadsScreenFolder") = uploadAttachmentSettingsDataView(0)(0).ToString
                    Else
                        Session("UploadsScreenFolder") = "Refunds"
                    End If
                End If

                Response.Redirect("FileUpload.aspx", False)
            Else
                Session("UploadsScreen") = Screen
                Session("UploadsGUID") = Convert.ToString(g)
                Session("UploadsMasterID") = Nothing

                If Screen.Contains("Refund") Then
                    Dim employeeSettingsDataView As DataView = SV.ExecuteDataView("SELECT Employee FROM [DEV PORTAL USERS] WHERE [Login Name] = N'" & SV.GetSV("UserID") & "'")
                    Dim uploadAttachmentSettingsDataView As DataView = SV.ExecuteDataView("Select [Folder Name] From [DEV PORTAL Screen Upload Settings] Where [Screen Name] = N'" & Screen & "'")

                    Session("UploadsEmployee") = employeeSettingsDataView(0)(0).ToString

                    If Not uploadAttachmentSettingsDataView Is Nothing Then
                        Session("UploadsScreenFolder") = uploadAttachmentSettingsDataView(0)(0).ToString
                    Else
                        Session("UploadsScreenFolder") = "Refunds"
                    End If
                End If

                Response.Redirect("FileUpload.aspx", False)
            End If
        End If
    End Sub

    Private Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit

        Dim pages As System.Web.Configuration.PagesSection = ConfigurationManager.GetSection("system.web/pages")
        Dim themeName As String = pages.Theme

        If Session("Application_Theme") Is Nothing Then
            Session("Application_Title") = "gulfHR 2.5.3"
            Session("Application_Theme") = themeName
            Session("Application_Master") = themeName

        End If

        Page.Title = Session("Application_Title").ToString
        Page.MasterPageFile = "../" + Session("Application_Master").ToString + ".Site.Master"
        Page.Theme = Session("Application_Theme").ToString

    End Sub


</script>
