$(document).ready(function() {

$("#navTop ul li.more").hover(
  function () {
    $('#navTop ul li ul').show();
  }, 
  function () {
	 $('#navTop ul li ul').hide();
  }
);

function megaHoverOver(){
    $(this).find(".sub").stop().fadeTo('fast', 1).show(); //Find sub and fade it in
    (function($) {
        //Function to calculate total width of all ul's
        jQuery.fn.calcSubWidth = function() {
            rowWidth = 0;
            //Calculate row
            $(this).find("ul").each(function() { //for each ul...
                rowWidth += $(this).width(); //Add each ul's width together
            });
        };
    })(jQuery); 

    if ( $(this).find(".row").length > 0 ) { //If row exists...

        var biggestRow = 0;	

        $(this).find(".row").each(function() {	//for each row...
            $(this).calcSubWidth(); //Call function to calculate width of all ul's
            //Find biggest row
            if(rowWidth > biggestRow) {
                biggestRow = rowWidth;
            }
        });

        $(this).find(".sub").css({'width' :biggestRow}); //Set width
        $(this).find(".row:last").css({'margin':'0'});  //Kill last row's margin

    } else { //If row does not exist...

        $(this).calcSubWidth();  //Call function to calculate width of all ul's
        $(this).find(".sub").css({'width' : rowWidth}); //Set Width

    }
}
//On Hover Out
function megaHoverOut(){
  $(this).find(".sub").stop().fadeTo('fast', 0, function() { //Fade to 0 opactiy
      $(this).hide();  //after fading, hide it
  });
}

//Set custom configurations
var config = {
     sensitivity: 1, // number = sensitivity threshold (must be 1 or higher)
     interval: 0, // number = milliseconds for onMouseOver polling interval
     over: megaHoverOver, // function = onMouseOver callback (REQUIRED)
     timeout: 100, // number = milliseconds delay before onMouseOut
     out: megaHoverOut // function = onMouseOut callback (REQUIRED)
};

$("ul#headerNav li .sub").css({'opacity':'0'}); //Fade sub nav to 0 opacity on default
$("ul#headerNav li .sub").hide(); //Fade sub nav to 0 opacity on default
$("ul#headerNav li").hoverIntent(config); //Trigger Hover intent with custom configuratio

});

//Toggle function
function funcLogin()
{
	value = $("input[id=btn1]").val();//document.getElementById("btn1").value;
	if(value=="login") $("input[id=btn1]").val('');
	else	$("input[id=btn1]").val('');
}
function funcPassw()
{
	value = $("input[id=btn2]").val();
	if (value=="has³o") $("input[id=btn2]").val('');
	else $("input[id=btn2]").val('');
}

function onChangeFileInput()
{
  var path=document.getElementById("nameFile1").value
  var pos=path.lastIndexOf("\\");
  document.getElementById("nameFile").value = path.substring(pos+1);
}

function getCookie(c_name)
{
  var i,x,y,ARRcookies=document.cookie.split(";");
  for (i=0;i<ARRcookies.length;i++)
  {
    x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
    y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
    x=x.replace(/^\s+|\s+$/g,"");
    if (x==c_name) {
      return unescape(y);
    }
  }
}

function func_tmp_cookies_zamknij() {
  var exdate=new Date();
  exdate.setDate(exdate.getDate() + 2000);
  document.cookie="viewCookies=" + escape('true')+"; expires="+exdate.toUTCString();
  $('#infoCookies').slideUp('slow');
}

/* ==================================== GWIAZDKI ======================================== */
var gwiazdka_on = new Image(); var gwiazdka_off = new Image();
gwiazdka_on.src = './static/images/gwiazdka_on.gif'; gwiazdka_off.src = './static/images/gwiazdka_off.gif';
var gwiazdka_stan = 3;

function gwiazdki_over(id)
{
  var text = null;
  switch (id)
  {
    case 1: text='S³abe'; break;
    case 2: text='Nic specjalnego'; break;
    case 3: text='Warto obejrzeæ'; break;
    case 4: text='Fajne'; break;
    case 5: text='Fantastyczne'; break;
  }
  gwiazdki_zaznacz(id);
}

function gwiazdki_out()
{
  gwiazdki_zaznacz(gwiazdka_stan);
}

function gwiazdki_zaznacz(id)
{
  document.getElementById('g_1').src = document.getElementById('g_2').src = document.getElementById('g_3').src = document.getElementById('g_4').src = document.getElementById('g_5').src = gwiazdka_off.src;
  switch (id)
  {
    case 5 : document.getElementById('g_5').src = gwiazdka_on.src;
    case 4 : document.getElementById('g_4').src = gwiazdka_on.src;
    case 3 : document.getElementById('g_3').src = gwiazdka_on.src;
    case 2 : document.getElementById('g_2').src = gwiazdka_on.src;
    case 1 : document.getElementById('g_1').src = gwiazdka_on.src;
  }
}

function gwiazdki_ocen(id)
{
  
}
