let un = "";
let ps = "";
//collect username and password, post to api login
let check = function () {
    un = document.getElementById('un').value;
    ps = document.getElementById('ps').value;
    if (un == "" || ps == "") {
        alert("Warmming:empty input");
    } else {
        fetch('api.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: `un=${un}&ps=${ps}`,
        })
            .then(response => response.json())
            .then(data => {
                if (data.result === 1) {
                    alert("Warmming:Think harder");
                } else {
                    window.location.href = "main.php"
                }
            })
    }

}
//key on enter
document.getElementById('ps').addEventListener('keypress', function (key) {
    if (key.code === 13) {
        check();
    }
});
//click
document.getElementById('login').addEventListener('click', check
)
