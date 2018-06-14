<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Staff.Master" AutoEventWireup="true" CodeBehind="AdminWelcome.aspx.cs" Inherits="ElectoSystem.Admin.AdminWelcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Welcome to Electo Dashboard</h1>
    <h3>Overall Elections Statistics</h3>
    <hr/>
     <!-- Small boxes (Stat box) -->
          <div class="row notification-con">
            <div class="col-lg-2 col-xs-5">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3><%= TotalHouseElections %></h3>
                  <p>Total House Elections</p>
                </div>
                <div class="icon">
                  <i class="ion ion-android-person-add"></i>
                </div>
                <a href="HouseElection.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-2 col-xs-5">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3><%= TotalSenateElections %></h3>
                  <p>Total Senate Elections</p>
                </div>
                <div class="icon">
                  <i class="ion ion-checkmark-circled"></i>
                </div>
                <a href="SenateElection.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-2 col-xs-5">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3><%= TotalHouseNominees %></h3>
                  <p>House Nominee Registered</p>
                </div>
                <div class="icon">
                  <i class="ion ion-home"></i>
                </div>
                <a href="HouseNomination.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-2 col-xs-5">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3><%= TotalSenateNominees %></h3>
                  <p>Senate Nominee Registerd</p>
                </div>
                <div class="icon">
                  <i class="ion ion-briefcase"></i>
                </div>
                <a href="SenateNomination.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
              <div class="col-lg-2 col-xs-5">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3><%= TotalVoters %></h3>
                  <p>Total Voters</p>
                </div>
                <div class="icon">
                  <i class="ion ion-briefcase"></i>
                </div>
                <a href="VotersStatus.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
              
          </div><!-- /.row -->
    <br/><br/>
        <h3>Active Elections Statistics</h3>
    <hr/>
    <!-- Small boxes (Stat box) -->
          <div class="row notification-con">
            <div class="col-lg-2 col-xs-5">
            <div class="col-lg-12 col-xs-5">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3><%= ActiveHouseElections %></h3>
                  <p>Active House Elections</p>
                </div>
                <div class="icon">
                  <i class="ion ion-android-person-add"></i>
                </div>
                <a href="HouseElection.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-12 col-xs-5">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3><%= ActiveSenateElections %></h3>
                  <p>Active Senate Elections</p>
                </div>
                <div class="icon">
                  <i class="ion ion-checkmark-circled"></i>
                </div>
                <a href="SenateElection.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-12 col-xs-5">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3><%= TotalVotedStudents %></h3>
                  <p>Voted Students Count</p>
                </div>
                <div class="icon">
                  <i class="ion ion-home"></i>
                </div>
                <a href="VotersStatus.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-12 col-xs-5">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3><%= TotalUnvotedStudents %></h3>
                  <p>Unvoted Students Count</p>
                </div>
                <div class="icon">
                  <i class="ion ion-briefcase"></i>
                </div>
                <a href="SenateNomination.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            </div>  
              <div>
                  <div id="chartContainer1" style="height: 220px; width: 370px;"></div>
                  <div id="chartContainer2" style="height: 220px; width: 370px;"></div>
                  <div id="chartContainer3" style="height: 220px; width: 370px;"></div>
                  <div id="chartContainer4" style="height: 220px; width: 370px;"></div>
              </div>
          </div><!-- /.row -->
    
          <!-- Main row -->
    <script type="text/javascript" src="../dist/js/canvasjs.min.js"></script>
<script type="text/javascript">
    window.onload = function () {
        var chart1 = new CanvasJS.Chart("chartContainer1",
        {
            title: {
                text: "Senate - Head Boy - Result Demo"
            },
            axisY: {
                title: "",
                maximum: 200
            },
            data: [
            {
                type: "bar",
                showInLegend: false,
                color: "gold",
                dataPoints: [
                { y: 123, label: "Pranal Pawar" },
                { y: 93, label: "Atharva Pansare" },
                { y: 64, label: "Nishant Bhatta" },
                { y: 31, label: "Archit Kulkarni" }
                ]
            }
            ]
        });

        chart1.render();

        var chart2 = new CanvasJS.Chart("chartContainer2",
        {
            title: {
                text: "Senate - Head Girl - Result Demo"
            },
            axisY: {
                title: "",
                maximum: 200
            },
            data: [
            {
                type: "bar",
                showInLegend: false,
                color: "Blue",
                dataPoints: [
                { y: 106, label: "Manasi Tamgole" },
                { y: 105, label: "Anuprita Kulkarni" },
                { y: 99, label: "Saloni Shetye" },
                { y: 7, label: "Vaishnavi Desai" }
                ]
            }
            ]
        });

        chart2.render();

        var chart3 = new CanvasJS.Chart("chartContainer3",
        {
            title: {
                text: "Senate - Games Captain - Result Demo"
            },
            axisY: {
                title: "",
                maximum: 200
            },
            data: [
            {
                type: "bar",
                showInLegend: false,
                color: "Red",
                dataPoints: [
                { y: 153, label: "Gauri Salunkhe" },
                { y: 75, label: "Vedant Pavaskar" },
                { y: 40, label: "Pratapsinh Pable" },
                { y: 40, label: "Neha Gumaste" }
                ]
            }
            ]
        });

        chart3.render();

        var chart4 = new CanvasJS.Chart("chartContainer4",
        {
            title: {
                text: "Senate - Vice Games Captain - Result Demo"
            },
            axisY: {
                title: "",
                maximum: 200
            },
            data: [
            {
                type: "bar",
                showInLegend: false,
                color: "Green",
                dataPoints: [
                { y: 162, label: "Prithvi Jadhav" },
                { y: 63, label: "Pratham Harpude" },
                { y: 57, label: "Sneha Shetty" },
                { y: 29, label: "Saniya Pendhari" }
                ]
            }
            ]
        });

        chart4.render();
    }
    </script>

</asp:Content>
