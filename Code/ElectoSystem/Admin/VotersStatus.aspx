<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Staff.Master" AutoEventWireup="true" CodeBehind="VotersStatus.aspx.cs" Inherits="ElectoSystem.Admin.VotersStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../dist/css/jsgrid.css" />
    <link rel="stylesheet" type="text/css" href="../dist/css/theme.css" />
    <link href="../dist/css/jquery-ui.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../dist/css/toastr.min.css" />
    <link rel="stylesheet" type="text/css" href="../dist/css/toastr.css" />
    <link href="../dist/css/jquery-ui.css" rel="stylesheet" />

    <script src="../dist/js/jquery-1.8.3.js"></script>

    <script src="../dist/js/JSGrid/jsgrid.core.js"></script>
    <script src="../dist/js/JSGrid/jsgrid.load-indicator.js"></script>
    <script src="../dist/js/JSGrid/jsgrid.load-strategies.js"></script>
    <script src="../dist/js/JSGrid/jsgrid.sort-strategies.js"></script>
    <script src="../dist/js/JSGrid/jsgrid.field.js"></script>
    <script src="../dist/js/JSGrid/jsgrid.field.text.js"></script>
    <script src="../dist/js/JSGrid/jsgrid.field.number.js"></script>
    <script src="../dist/js/JSGrid/jsgrid.field.select.js"></script>
    <script src="../dist/js/JSGrid/jsgrid.field.checkbox.js"></script>
    <script src="../dist/js/JSGrid/jsgrid.field.control.js"></script>
    <script src="../dist/js/jquery-ui.min.js"></script>
    
    <script src="../dist/js/toastr.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Voters Statistics</h1>
    <div id="jsGrid"></div>
    <script>
        var $NoConflict = jQuery.noConflict();

        var Data = <%= JsonData.ToString()%>
        $NoConflict(function () {

            $NoConflict("#jsGrid").jsGrid({
                height: "auto",
                width: "100%",
                filtering: true,
                editing: false,
                inserting: false,
                sorting: true,
                paging: true,
                autoload: true,
                pageSize: 25,
                pageButtonCount: 5,
                deleteConfirm: function (item) {
                    if (item.Stud_IsInUse == '#') {
                        Command: toastr["error"]("Cannot delete selected house. Reference has been used.");
                        this.preventDefault();
                    }
                    return "Are you sure ?" + "\n\"" + item.Stud_HouseName + "\" will be deleted permenently.";
                },

                rowClick: function (args) {
                    this.preventDefault();
                },
                rowDoubleClick: function (args) {
                    this.preventDefault();
                },

                controller: {
                    loadData: function (filter) {
                        return $.grep(Data, function (house) {
                            return (!filter.stud_Key || house.stud_Key.toLowerCase().indexOf(filter.stud_Key.toLowerCase()) > -1)
                                && (!filter.stud_FirstName || house.stud_FirstName.toLowerCase().indexOf(filter.stud_FirstName.toLowerCase()) > -1)
                                && (!filter.stud_LastName || house.stud_LastName.toLowerCase().indexOf(filter.stud_LastName.toLowerCase()) > -1)
                                && (!filter.stud_VotedForSenate || house.stud_VotedForSenate === filter.stud_VotedForSenate)
                                && (!filter.stud_VotedForHouse || house.stud_VotedForHouse === filter.stud_VotedForHouse)
                        });
                    },
                },
                fields: [
                    { name: "stud_Key", type: "text", width: 25, title: "Student Id", filtering: true },
                    { name: "stud_FirstName", type: "text", width: 40, title: "First Name", insertcss: "Mandatory", editcss: "Mandatory" },
                    { name: "stud_LastName", type: "text", width: 40, title: "Last Name", insertcss: "Mandatory", editcss: "Mandatory" },
                    {
                        name: "stud_VotedForHouse",
                        type: "select",
                        items: [
                             { Name: "", Id: 0 },
                             { Name: "Yes", Id: 1 },
                             { Name: "No", Id: 2 }
                        ],
                        valueField: "Id",
                        textField: "Name",
                        title: "Voted for House",
                        insertcss: "Mandatory",
                        editcss: "Mandatory",
                        width: 25,
                    },
                    {
                        name: "stud_VotedForSenate",
                        type: "select",
                        items: [
                             { Name: "", Id: 0 },
                             { Name: "Yes", Id: 1 },
                             { Name: "No", Id: 2 }
                        ],
                        valueField: "Id",
                        textField: "Name",
                        title: "Voted for Senate",
                        insertcss: "Mandatory",
                        editcss: "Mandatory",
                        width: 25,
                    },
                    { type: "control", editButton: false, deleteButton: false },
                ]
            });

        });
    </script>
    <script type="text/javascript">

        toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": true,
            "progressBar": false,
            "positionClass": "toast-top-center",
            "preventDuplicates": true,
            "onclick": null,
            "showDuration": "500",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }

    </script>
    <style>
        /*JS Grid Related classes*/
        /*To make column hidden*/
        .HideField {
            display: none;
        }
        /*To Make column mendetory*/
        .Mandatory {
            white-space: nowrap;
        }

            .Mandatory:after {
                content: url(../dist/img/mandatory16x16.svg);
            }
    </style>
</asp:Content>