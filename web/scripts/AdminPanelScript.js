function showUsersTable() {
    let userTable = document.getElementsByClassName("admin-table-users")
    userTable[0].style.display = "table";

    let flightTable = document.getElementsByClassName("admin-table-flights")
    flightTable[0].style.display = "none";

    let editUserBtn = document.getElementById("edit-user-option");
    editUserBtn.style.color = "white";
    editUserBtn.style.textDecoration = "underline";

    let editFlightBtn = document.getElementById("edit-flight-option");
    editFlightBtn.style.color = "black";
    editFlightBtn.style.textDecoration = "none";
    addHoverText(editFlightBtn);
    removeHoverText(editFlightBtn);
}

function showFlightsTable() {
    let flightTable = document.getElementsByClassName("admin-table-flights")
    flightTable[0].style.display = "table";

    let userTable = document.getElementsByClassName("admin-table-users")
    userTable[0].style.display = "none";

    let editFlightBtn = document.getElementById("edit-flight-option");
    editFlightBtn.style.color = "white";
    editFlightBtn.style.textDecoration = "underline";

    let editUserBtn = document.getElementById("edit-user-option");
    editUserBtn.style.color = "black";
    editUserBtn.style.textDecoration = "none";
}

function addHoverTextUser() {
    let btn = document.getElementById("edit-user-option");
    btn.style.color = "white";
}

function removeHoverTextUser() {
    let btn = document.getElementById("edit-user-option");
    btn.style.color = "#BB042B";
}

function addHoverTextFlight() {
    let btn = document.getElementById("edit-flight-option");
    btn.style.color = "white";
}

function removeHoverTextFlight() {
    let btn = document.getElementById("edit-flight-option");
    btn.style.color = "#BB042B";
}