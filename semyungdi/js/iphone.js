window.addEventListener('load', function(){setTimeout(scrollTo, 0, 0, 1);}, false);

if (navigator.userAgent.indexOf('iPhone') != -1)    
{ 
	addEventListener("load", function(){ setTimeout(hideURLbar, 0); }, false); 
} 
 
function hideURLbar() 
{ 
	window.scrollTo(0, 1); 
} 

window.onorientationchange = function() 
{  
	if(window.orientation == 90)
	 	document.getElementById("blockTable").style.width= screen.width ;
	
	if(window.orientation == 0)
	 	document.getElementById("blockTable").style.width= 320 ;

}

/*$(document).ready(function(){
loadPage();
});
function loadPage(url) {
if (url == undefined) {
$('#container').load('index.html #header ul', hijackLinks);
} else {
$('#container').load(url + ' #content', hijackLinks);
}
}
function hijackLinks() {
$('#container a').click(function(e){
e.preventDefault();
loadPage(e.target.href);
});
}*/