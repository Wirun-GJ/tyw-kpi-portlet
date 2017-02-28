

function myFunction(){
	$('#myIframe').attr('src', ifameURL+"/TYW_KPI/Views/emp-result-bonus-raise-amount.html?username="+$('#user_portlet').val()+"&password="+$("#pass_portlet").val()+""); 
	
	
//	setTimeout(function(){
//		 $('#myIframe').iframeAutoHeight({
//	        debug: true,
//	        minHeight: 180,
//	        diagnostics: true
//	      });
//		
//	},2000);
	
	
} 

$(document).ready(function(){
	
	myFunction();

});