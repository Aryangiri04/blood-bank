function invalid()
{
    x=document.getElementById('t2').value;
    if(x.length===0)
    {
        document.getElementById("s2").innerHTML="Required";
        return false;
    }
    else
    {
        return true;
    }
}
function invalid1()
{
    x=document.getElementById('t3').value;
    if(x.length===0)
    {
        document.getElementById("s3").innerHTML="Required";
        return false;
    }
    else
    {
        return true;
    }
}
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

function demo(event)
{
    event.preventDefault();
document.getElementById("s1").innerHTML="";
document.getElementById("s2").innerHTML="";
document.getElementById("s3").innerHTML="";
if(name()&& invalid()&&invalid1())
{
    form2.submit();
}
return false;
}