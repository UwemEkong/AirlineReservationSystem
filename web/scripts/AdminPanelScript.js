function showUsersTable() {
    let userTable = document.getElementsByClassName("admin-table-users")
    userTable[0].style.display = "table";

    let flightTable = document.getElementsByClassName("admin-table-flights")
    flightTable[0].style.display = "none";

    let editUserBtn = document.getElementById("edit-user-option");
    editUserBtn.style.color = "#BB042B";
    editUserBtn.style.textDecoration = "underline";

    let editFlightBtn = document.getElementById("edit-flight-option");
    editFlightBtn.style.color = "black";
    editFlightBtn.style.textDecoration = "none";
}

function showFlightsTable() {
    let flightTable = document.getElementsByClassName("admin-table-flights")
    flightTable[0].style.display = "table";

    let userTable = document.getElementsByClassName("admin-table-users")
    userTable[0].style.display = "none";

    let editFlightBtn = document.getElementById("edit-flight-option");
    editFlightBtn.style.color = "#BB042B";
    editFlightBtn.style.textDecoration = "underline";

    let editUserBtn = document.getElementById("edit-user-option");
    editUserBtn.style.color = "black";
    editUserBtn.style.textDecoration = "none";
}