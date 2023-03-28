function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays*24*60*60*1000));
        var expires = "expires="+ d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }

    function getCookie(cname) {
        var name = cname + "=";
        var decodedCookie = decodeURIComponent(document.cookie);
        var ca = decodedCookie.split(';');
        for(var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }

    function checkCookie() {
        var username = getCookie("username");
        var password = getCookie("password");
        if (username != "" && password != "") {
            document.getElementById("username").value = username;
            document.getElementById("password").value = password;
            document.getElementById("remember-me").checked = true;
        }
    }

    function saveLogin() {
        if (document.getElementById("remember-me").checked) {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            setCookie("username", username, 365);
            setCookie("password", password, 365);
        } else {
            setCookie("username", "", -1);
            setCookie("password", "", -1);
        }
    }

    window.onload = function() {
        checkCookie();
    };

