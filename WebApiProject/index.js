"use strict;"

$(function () {
    let container = $("#container");
    let containerTitle = $("#containerTitle");
    let containerDesc = $("#containerDesc");

    $("#linkDrivers").on("click", function () {
        container.html("");
        containerTitle.text("F1 Drivers 2020");
        containerDesc.text("Stability is the name of the game for the 2020 season, with eight of the 10 Formula 1 teams fielding unaltered line-ups in their bid for Grand Prix glory. So where are the changes? The highly-rated Esteban Ocon returns with Renault after a year on the F1 sidelines, while Williams’ Nicholas Latifi has the honour of being the sole rookie on the grid.");

        inviaRichiesta("/drivers", function (data) {
            let row = $("<div>").addClass("row justify-content-center").appendTo(container);
            for (let driver of data) {
                let card = $("<div>").addClass("col-3 card").prop("id",driver.ID).appendTo(row);
                let rowCard = $("<div>").addClass("row no-gutters").appendTo(card);
                let col5 = $("<div>").addClass("col-md-5").appendTo(rowCard);
                let col7 = $("<div>").addClass("col-md-7").appendTo(rowCard);
                $("<h5>").addClass("title-country").text(driver.Country.CountryCode).appendTo(col5);
                $("<img>").addClass("img-fluid float-right").prop("src", driver.Img).appendTo(col5);
                let bodyCard = $("<div>").addClass("card-body").appendTo(col7);
                let bodyCol = $("<div>").addClass("col").appendTo(bodyCard);
                $("<p>").text(driver.Firstname).appendTo(bodyCol); 
                $("<h4>").addClass("title-lastname ").text(driver.Lastname).appendTo(bodyCol);
                $("<br>").appendTo(bodyCol);
                $("<p>").text("POB: " + driver.PlaceOfBirthday).appendTo(bodyCol);
                let dt = (driver.Dob.split('T')[0].split('-'));
                $("<p>").text("DOB: " + dt[2] + "/" + dt[1] + "/" + dt[0]).appendTo(bodyCol);
                console.log(driver);
            }
        });
    });
    $("#linkTeams").on("click", function () {
        container.html("");
        containerTitle.text("F1 Teams 2020");
        containerDesc.text("Discover the Formula 1 2020 teams - drivers, podium finishes, championship titles and everything you need to know about the teams in this year's F1 Championship.");
        inviaRichiesta("/teams", function (data) {
            let row = $("<div>").addClass("row justify-content-center").appendTo(container);
            for (let team of data) {
                let card = $("<div>").addClass("col-5 card").prop("id", team.ID).appendTo(row);
                let rowCard = $("<div>").addClass("row").appendTo(card);
                let col = $("<div>").addClass("col-12").appendTo(rowCard);
                let colTitleTeam = $("<div>").addClass("col-title-team").appendTo(col);
                $("<h2>").addClass("title-team").text(team.Name).appendTo(colTitleTeam);
                $("<img>").addClass("img float-right img-team").prop("src", team.Logo).appendTo(colTitleTeam);
                rowCard = $("<div>").addClass("row").appendTo(card);

                col = $("<div>").addClass("col-6").appendTo(rowCard);
                let divTeamDriver = $("<div>").addClass("div-team-driver").appendTo(col);
                divTeamDriver.html(" <p class='teamDr'>" + team.FirstDriver.Firstname + "</p>&nbsp;&nbsp;<h5 class='title-name teamDr'>" + team.FirstDriver.Lastname + "</h5>");
                $("<img>").addClass("img float-right img-team-driver").prop("src", team.FirstDriver.Img).appendTo(divTeamDriver);

                col = $("<div>").addClass("col-6").appendTo(rowCard);
                divTeamDriver = $("<div>").addClass("div-team-driver").appendTo(col);
                divTeamDriver.html(" <p class='teamDr'>" + team.SecondDriver.Firstname + "</p>&nbsp;&nbsp;<h5 class='title-name teamDr'>" + team.SecondDriver.Lastname + "</h5>");
                $("<img>").addClass("img float-right img-team-driver").prop("src", team.SecondDriver.Img).appendTo(divTeamDriver);

                rowCard = $("<div>").addClass("row justify-content-center").appendTo(card);
                col = $("<div>").addClass("col-9").appendTo(rowCard);
                $("<img>").prop("src", team.Img).css("width", "100%").appendTo(col);
            }
        });
    });
    $("#linkCircuits").on("click", function () {
        container.html("");
        containerTitle.text("F1 Circuits 2020");
        containerDesc.text("");
        inviaRichiesta("/circuits", function (data) {
            let row = $("<div>").addClass("row justify-content-center").appendTo(container);
            for (let circuit of data) {
                $("<div>").addClass("col-12 text-center title-circuit").prop("id",circuit.ID).text(circuit.Country.CountryName).appendTo(row);
                let div = $("<div>").addClass("col-5").appendTo(row);
                $("<img>").addClass("img-fluid img-circuit").prop("src", circuit.Img).appendTo(div);
                div = $("<div>").addClass("col-5").appendTo(row);
                $("<h3>").addClass("text-center second-title-circuit").text(circuit.Name).appendTo(div);
                let divtable = $("<div>").addClass("table-circuit").appendTo(div);
                let table = $("<table>").addClass("table table-striped").appendTo(divtable);
                let thead = $("<thead>").addClass("table-head-circuits").appendTo(table);
                let tr = $("<tr>").appendTo(thead);
                let circuitLength = circuit.Length / 1000;
                $("<th>").text("Circuit length").appendTo(tr);
                $("<th>").text(circuitLength+" km").appendTo(tr);
                let tbody = $("<tbody>").addClass("text-muted").appendTo(table);
                tr = $("<tr>").appendTo(tbody);
                $("<td>").text("Number of laps").appendTo(tr);
                $("<td>").text(circuit.NLaps).appendTo(tr);
                tr = $("<tr>").appendTo(tbody);
                $("<td>").text("Race distance").appendTo(tr);
                $("<td>").text((circuitLength * circuit.NLaps)+" km").appendTo(tr);
                tr = $("<tr>").appendTo(tbody);
                $("<td>").text("Lap record").appendTo(tr);
                $("<td>").text(circuit.RecordLap).appendTo(tr);
                $("<div>").addClass("col-9 hr-circuit").appendTo(row);
            }
        });
    });
    $("#linkRaces").on("click", function () {
        container.html("");
        containerTitle.text("2019 Races Results");
        containerDesc.text("");
        inviaRichiesta("/racesscores/position/1", function (data) {
            let row = $("<div>").addClass("row justify-content-center").appendTo(container);
            let divtable = $("<div>").addClass("table-responsive col-10").appendTo(row);
            let table = $("<table>").addClass("table table-striped table-races").appendTo(divtable);
            let thead = $("<thead>").appendTo(table);
            let tbody = $("<tbody>").appendTo(table);
            let tr = $("<tr>").addClass("trhead-races").appendTo(thead);
            $("<th>").text("GRAND PRIX").appendTo(tr);
            $("<th>").text("CIRCUIT").appendTo(tr);
            $("<th>").text("DATE").appendTo(tr);
            $("<th>").text("WINNER").appendTo(tr);
            $("<th>").text("LAPS").appendTo(tr);
            $("<th>").text("FASTEST LAP").appendTo(tr);
            for (let racesscores of data) {
                console.log(racesscores);
                let dt = (racesscores.Race.Date.split('T')[0].split('-'));
                tr = $("<tr>").prop("id", racesscores.ID).addClass("tr-races").appendTo(tbody);
                $("<td>").text(racesscores.Race.Circuit.Country.CountryName).appendTo(tr);
                $("<td>").text(racesscores.Race.Circuit.Name).appendTo(tr);
                $("<td>").text(dt[2]+"/"+dt[1]+"/"+dt[0]).appendTo(tr);
                $("<td>").text(racesscores.Driver.Firstname + " " + racesscores.Driver.Lastname).appendTo(tr);
                $("<td>").text(racesscores.Race.Circuit.NLaps).appendTo(tr);
                $("<td>").text(racesscores.FastestLap).appendTo(tr);
            }
        });
    });

});

function inviaRichiesta(parameters,callbackFunction) {
    let _richiesta = $.ajax({
        url: "api" + parameters,
        type: "GET",
        data: "",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        dataType: "json",
        timeout: 5000,
    });

    _richiesta.done(callbackFunction);
    _richiesta.fail(error);
}

function error(jqXHR, testStatus, strError) {
    $("#table thead").html("");
    $("#table tbody").html("Impossibile trovare la risorsa richiesta, maggiori informazioni in console.");
    if (jqXHR.status == 0)
        console.log("server timeout");
    else if (jqXHR.status == 200)
        console.log("Formato dei dati non corretto : " + jqXHR.responseText);
    else
        console.log("Server Error: " + jqXHR.status + " - " + jqXHR.responseText);
};