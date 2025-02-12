class Room {
    constructor(room, date, name, phone, days, checkin, note, id) {
        this.room = room;
        this.date = date;
        this.name = name;
        this.phone = phone;
        this.days = days;
        this.checkin = checkin;
        this.note = note;
        this.id = id;
    }
}
let dateNow = new Date().toLocaleDateString("en-US");

$(function () {
    // Enable datepicker
    $("#datepicker").datepicker({
        //when user choosing a time
        onSelect: async function (dateText, inst) {
            dateText = timeModle(dateText);
            let days = document.getElementById('days').value;
            days = parseInt(days);
            if (days < 1 || isNaN(days)) {
                days = 1;
                document.getElementById('days').value = 1;
            }

            // Update the #tip element
            let tipParagraph = $("#tip");
            tipParagraph.text("Selected Date: " + dateText + " | " + days + " Nights | leave: " + countDate(dateText, days));

            // Create a new <div> element to hold the buttons
            let buttonsContainer = document.createElement("div");
            let oldButton = $(".room");
            let oldDiv = $(".room_div");
            buttonsContainer.className = "room_div";
            oldButton.remove();
            oldDiv.remove();
            // Create clickable room's buttons 
            let num = await totalRooms();
            let id;
            for (let i = 0; i < num; i++) {
                let roomNumber = i + 1;
                let color = 1;
                //checking the check-in status.
                for (let k = 0; k < days; k++) {
                    let dateT = countDate(dateText, k);

                    console.log(dateT);
                    let roomDet = await roomInfo(dateT, roomNumber);
                    if (k == 0) {
                        id = roomDet.id;
                    }
                    if (roomDet.date != undefined && color <= 1) {
                        color = 2;
                        if (roomDet.checkin == 1) {
                            color = 3;
                        }
                    }
                }




                // Create a new <button> element for each button
                let button = document.createElement("button");
                button.textContent = roomNumber;
                button.className = "room";
                button.name = dateText;
                button.id = roomNumber;
                button.dataset.data = id;

                //change the color depand on check-in status
                if (color == 1) {
                    button.style = "background-color:#34bf49;";
                } else if (color == 2) {
                    button.style = "background-color:#0099e5;";
                } else {
                    button.style = "background-color:#ff4c4c;";
                }
                
                // Set up a click event listener for each button
                button.addEventListener("click", async function (event) {
                    //get all the data and show on the hidden window.
                    
                    let roomDet1= await roomInfo(dateText,roomNumber);
                    let room1 = document.getElementById("room_u");
                    let date1 = document.getElementById("date_u");
                    let name1 = document.getElementById("name_u");
                    let phone1 = document.getElementById("phone_u");
                    let days1 = document.getElementById("days_u");
                    let chechin1 = document.getElementById('category_u');
                    let note1 = document.getElementById("note_u");
                    room1.textContent = event.target.textContent;
                    date1.textContent = event.target.name;
                    name1.value = roomDet1.name;
                    if (name1.value == "undefined") {
                        name1.value = "";
                    }
                    phone1.value = roomDet1.phone;
                    if (phone1.value == "undefined") {
                        phone1.value = 0;
                    }
                    days1.value = roomDet1.days;
                    if (days1.value == "undefined") {
                        days1.value = 0;
                    }
                    note1.value = roomDet1.note;
                    if (note1.value == "undefined") {
                        note1.value = "";
                    }
                    if (roomDet1.checkin == 1) {
                        chechin1.selectedIndex = 1;
                    } else {
                        chechin1.selectedIndex = 0;
                    }
                    room1.name = roomDet1.id;
                    if (room1.name == "undefined") {
                        room1.name = "";
                    }
                    //show the hidden windwo.
                    document.getElementById("window").className = "show"

                });

                // Append the new button to the buttonsContainer
                buttonsContainer.appendChild(button);
            }

            // Append the buttonsContainer below the #tip element
            tipParagraph.after(buttonsContainer);
        }
    });
});
document.getElementById("closeModal").addEventListener("click", function () {
    document.getElementById("window").className = "hidden"
})
//save button
document.getElementById("save").addEventListener("click", function (event) {
    let table = "booking";
    let room = document.getElementById("room_u").textContent;
    let date = document.getElementById("date_u").textContent;
    let name = document.getElementById("name_u").value;
    let phone = document.getElementById("phone_u").value;
    let days = document.getElementById("days_u").value;
    let chechin = document.getElementById('category_u').selectedIndex;
    let note = document.getElementById("note_u").value;
    let id = document.getElementById("room_u").name;
    fetch('api_update_booking.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `table=${table}&room=${room}&date=${date}&name=${name}&phone=${phone}&days=${days}&chechin=${chechin}&note=${note}&id=${id}`
    })
    document.getElementById(room.toString()).style = "background-color:#0099e5;";
    if (chechin == 1) {
    document.getElementById(room.toString()).style = "background-color:#ff4c4c;";
    }
    document.getElementById("window").className = "hidden"
})
//remove button
document.getElementById("remove").addEventListener("click", function (event) {
    let table = "booking";
    let room = document.getElementById("room_u").textContent;
    let date = document.getElementById("date_u").textContent;
    let id = document.getElementById("room_u").name;
    fetch('api_remove_booking.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `table=${table}&room=${room}&date=${date}&id=${id}`
    })
    document.getElementById(room.toString()).style = "background-color:#34bf49;";
    document.getElementById("window").className = "hidden"
})

//count the date
let countDate = function (date, days) {
    let date1 = new Date(date);

    // Calculate the date the days later
    let date2 = new Date(date1);
    date2.setDate(date1.getDate() + days);

    // Format the result as MM/DD/YYYY
    let date3 = date2.toLocaleDateString("en-US");

    return date3;
}

//get the room's information from sql
let roomInfo = async function (dateT, roomNu) {
    let table = "booking";

    let response = await fetch('api_booking.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `table=${table}&col1=${"date"}&value1=${dateT}&col2=${"room"}&value2=${roomNu}`,
    });


    let data = await response.json();

    let roomDet;
    let room, date, name, phone, days, checkin, note, id;
    data.forEach(item => {
        room = item.room;
        date = item.date;
        name = item.name;
        phone = item.phone;
        days = item.days;
        checkin = item.checkin;
        note = item.note;
        id = item.id;
    });
    roomDet = new Room(room, date, name, phone, days, checkin, note, id);
    //console.log(data);
    if (roomDet.date != undefined) {

        console.log(roomDet);
    }
    return roomDet;
}
//get the total number of rooms from sql
let totalRooms = async function () {
    let table = "total";

    let response = await fetch('api_booking.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `table=${table}&col1=${1}&value1=${1}`,
    });

    let data = await response.json();
    console.log(data);

    let number;

    data.forEach(item => {
        //get item.number
        number = item.number;
    });

    return number;
}
//checking the selecting date is past or not(abandon)
let timeCheck = function (dateText) {
    let now = new Date();
    let select = new Date(dateText);
    let check = now - select;
    if (check <= 0) {
        return true
    } else {
        return false;
    }
}
//standardize the date structer.
let timeModle = function (dateText) {
    return new Date(dateText).toLocaleDateString("en-US");
}
