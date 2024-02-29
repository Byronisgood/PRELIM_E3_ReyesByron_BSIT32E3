<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PRELIM_E3_ReyesByron_BSIT32E3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
<style>
    @import url('https://fonts.googleapis.com/css2?family=Ojuju:wght@200..800&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue:wght@400&display=swap');

    body {
        background: url('img/background1.svg') no-repeat center center fixed;
        background-size: cover;
        color: #FFFFFF;
        backdrop-filter: blur(0.5px);
        margin: auto;
    }

    .row {
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        margin-top: 240px;
    }


h1 {
    font-family: 'Bebas Neue', sans-serif;
    font-weight: 100;
    font-style: normal;
    font-optical-sizing: auto;
      font-size: 35px;
margin-left: 370px;

}

    
    h2 {
        font-family: 'Bebas Neue', sans-serif;
        font-weight: 400;
        font-style: normal;
                font-optical-sizing: auto;
                       margin-left: 0; 
           text-align: center;
           font-size:120px;
    }
    h3 {
    font-family: 'Bebas Neue', sans-serif;
    font-weight: 100;
    font-style: normal;
    font-optical-sizing: auto;
      font-size: 35px;
margin-left: 840px;

}
</style>




<main>
    <section class="row" aria-labelledby="portfolioTitle">
        <div class="portfolio-content">
            <h1 id="portfolioTitle">I am</h1>
            <h2>Byron Alexis R. Reyes</h2>
                    <h3>BSIT-32E3</h3>
            
        </div>
    </section>
</main>

</asp:Content>
