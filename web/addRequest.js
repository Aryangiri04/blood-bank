function name() {
    var x = document.getElementById("t1").value;
    var y = x.length;

    if (y === 0) {
        document.getElementById("s1").innerHTML = "Required";
        return false;
    } else {
        for (var i = 0; i < x.length; i++) {
            var charCode = x.charCodeAt(i);
            // Allowing alphabetic characters and spaces
            if ((charCode < 65 || (charCode > 90 && charCode < 97) || charCode > 122) && charCode !== 32) {
                document.getElementById("s1").innerHTML = "Invalid Name";
                return false;
            }
        }
        return true;
    }
}
function mobile() {
    var x = document.getElementById("t3").value;
    var y = x.length;

    for (var i = 0; i < x.length; i++) {
        if (isNaN(parseInt(x[i]))) {
            document.getElementById("s3").innerHTML = "Invalid Mobile No";
            return false;
        }
    }

    if (y !== 10) {
        document.getElementById("s3").innerHTML = "Invalid Mobile No";
        return false;
    } else {
        return true;
    }
}
function address()
{
x=document.getElementById("t4").value;
y=x.length;
if(y===0)
{
    document.getElementById("s4").innerHTML="Required";
    return false;   
}
else
{
    return true;
}
}
function age() {
    var x = document.getElementById("t2").value;
    var y = x.length;

    if (y === 0) {
        document.getElementById("s2").innerHTML = "Required";
        return false;
    } else {
        for (var i = 0; i < x.length; i++) {
            var charCode = x.charCodeAt(i);
            if ((charCode < 48 || charCode > 57)) {
                document.getElementById("s2").innerHTML = "Invalid Age";
                return false;
            }
        }
        return true;
    }
}


function demo(event) {
    event.preventDefault();
    document.getElementById("s1").innerHTML="";
    document.getElementById("s2").innerHTML="";
    document.getElementById("s3").innerHTML="";
    document.getElementById("s4").innerHTML="";
    if(name() && age()&& mobile()&& address())
    {
        form1.submit();
    }
    return false;
}
