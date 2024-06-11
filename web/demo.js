
function validpass() {
    var password = document.getElementById("t5").value; // Replace "t5" with the ID of your password input field

    // Define regular expressions for special characters and numbers
    var specialCharPattern = /[^a-zA-Z0-9]/; // Matches any special character
    var numberPattern = /[0-9]/; // Matches any digit

    // Use test() method to check for the presence of special characters and numbers
    var hasSpecialChar = specialCharPattern.test(password);
    var hasNumber = numberPattern.test(password);

    if (hasSpecialChar && hasNumber) {
        document.getElementById("s5").innerHTML = "Valid Password";
        return true;
    } else {
        document.getElementById("s5").innerHTML = "Invalid Password";
        return false;
    }
}



function mobile()
{
   x=document.getElementById("t4").value; 
   y=x.length;
   if(y!==10)
   {
       document.getElementById("s4").innerHTML="Invalid Mobile Number";
       return false;
   }
   else
   {
       return true;
   }
}

function pass()
{
   x=document.getElementById("t2").value; 
   y=document.getElementById("t3").value; 
   if(x!==y)
   {
       document.getElementById("s3").innerHTML="Password not matched";
       return false;
   }
   else
   {
       return true;
   }
}

function uname()
{
   x=document.getElementById("t1").value; 
   y=x.length;
   if(y<4)
   {
       document.getElementById("s1").innerHTML="invalid username";
       return false;
   }
   else
   {
       return true;
   }
}


function upass()
{
   x=document.getElementById("t2").value; 
   y=x.length;
   if(y<4)
   {
       document.getElementById("s2").innerHTML="invalid userpass";
       return false;
   }
   else
   {
       return true;
   }
}
function demo()
{
document.getElementById("s1").innerHTML="";
document.getElementById("s2").innerHTML="";
document.getElementById("s3").innerHTML="";
document.getElementById("s4").innerHTML="";
if(uname()&&upass()&&pass()&&mobile())
{
    form1.submit()
}
}
    c=1;
function demo1()
{
if(c==1)
{
document.getElementById('x').src="a_1.jpg";
c++;
}
else
{
document.getElementById('x').src="a2.jpg";
c=1;
}
//else
//{
//document.getElementById('x').src="a_1.jpg";
//
//c=1;
//}
setTimeout(demo1,1000);
}

