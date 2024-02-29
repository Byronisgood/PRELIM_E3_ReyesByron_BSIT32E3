<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="schedule.aspx.cs" Inherits="PRELIM_E3_ReyesByron_BSIT32E3.schedule" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <link href="~/Content/styles.css" rel="stylesheet" />
    <main aria-labelledby="title">
          


        <h2 id="title"><%: Title %></h2>
        
        <h3>College of Computer Studies</h3>
        <h4>BSIT-32E3</h4>

        <asp:GridView ID="ScheduleGridView" runat="server" AutoGenerateColumns="False" CssClass="table schedule-grid">
            <Columns>
                <asp:BoundField DataField="SubjectTitle" HeaderText="Subject Title" SortExpression="SubjectTitle" />
                <asp:BoundField DataField="Teacher" HeaderText="Teacher" SortExpression="Teacher" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="OnlineSynchronous" HeaderText="Online Synchronous (Day & Time)" SortExpression="OnlineSynchronous" />
                <asp:BoundField DataField="Asynchronous" HeaderText="Asynchronous (Day & Time)" SortExpression="Asynchronous" />
                <asp:TemplateField HeaderText="Face-to-Face">
                    <ItemTemplate>
                        <span><%# Eval("FaceToFace.DayTime") %></span><br />
                        <span>Room: <%# Eval("FaceToFace.RoomNumber") %></span>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

<style>
    body {
        background: url('img/background1.svg') no-repeat center center fixed;
        background-size: cover;
        color: #FFFFFF;
        backdrop-filter: blur(0.5px);

      margin: auto;

    }

    .schedule-grid {
        width: 100%;
        margin-top: -30px;
        border-collapse: collapse;
        background-color: white;
        color: black;
    }

    .schedule-grid th, .schedule-grid td {
        padding: 10px;
        text-align: center;
        border: 1px solid #333; 
        border-radius: 9px; 
    }
    .schedule-grid th {
        background-color: white;
        color: black;
        font-weight: bold;
    }

    .schedule-grid tr:hover {
        background-color: #f1f1f1; 
        cursor: pointer;
    }

    .schedule-grid span {
        display: block;
        font-size: 0.9em;
    }

    h3, h4 {
    position:relative;
    top:-50px;
        color: white; /* Text color for header */
            font-family: 'Bebas Neue', sans-serif;
    font-weight: 400;
    font-style: normal;
    font-optical-sizing: auto;
      font-size: 25px;

    }

</style>


    </main>
</asp:Content>
