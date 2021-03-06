//IP Server : 171.96.201.146
var restfulURL="http://171.96.200.20";
var restfulPathReport=":3001/api/tyw_report_salary_adjustment_year/";
//-------- SearchFn Start
var searchAdvanceFn = function (Year,SalaryPeriod,Department,PsGroup) {
	//embed parameter start
	var htmlParam="";
	htmlParam+="<input type='hidden' class='paramEmbed' id='param_Year' name='param_Year' value='"+Year+"'>";
	htmlParam+="<input type='hidden' class='paramEmbed' id='param_SalaryPeriod' name='param_SalaryPeriod' value='"+SalaryPeriod+"'>";
	htmlParam+="<input type='hidden' class='paramEmbed' id='param_Department' name='param_Department' value='"+Department+"'>";
	htmlParam+="<input type='hidden' class='paramEmbed' id='param_PsGroup' name='param_PsGroup' value='"+PsGroup+"'>";
	$(".paramEmbed").remove();
	$("body").append(htmlParam);
	//embed parameter end
	
	$.ajax({
		url : restfulURL+restfulPathReport,
		type : "get",
		dataType : "json",
//		data:{
/*		
		"department_ame":$("#param_Year").val(),
		"section_name":$("#param_SalaryPeriod").val(),
		"position_name":$("#param_Department").val(),
		"emp_name":$("#param_PsGroup").val(),*/

//		},
		//headers:{Authorization:"Bearer "+tokenID.token},
		success : function(data) {

			listReportFn(data);
		}
	});
	
	
}
// -------- SearchFn End


//--------  ListData  Start

var listReportFn = function(data) {

	//clear ฟังก์ชัน  data ข้อมูลเก่าทิ้ง 
	$("#listDataReport").empty();
	
	var htmlTable = "";

	$.each(data,function(index,indexEntry) {
		//console.log();

		
		htmlTable += "<tr class='rowSearch'>";
		htmlTable += "<td class='columnSearch'>"+(index+1)+ "</td>";
		htmlTable += "<td class='columnSearch'>"+indexEntry["emp_code"]+ "</td>";
		htmlTable += "<td class='columnSearch'>"+indexEntry["emp_name"]+"</td>";
		htmlTable += "<td class='columnSearch'>"+indexEntry["position"]+"</td>";
		htmlTable += "<td class='columnSearch'>"+indexEntry["salary_old"]+"</td>";
		htmlTable += "<td class='columnSearch'>"+indexEntry["salary_adjustment"]+"</td>";
		htmlTable += "<td class='columnSearch'>"+indexEntry["salary_new"]+"</td>";
		htmlTable += "</tr>";
	});
	//alert("ผ่าน");
	$("#listDataReport").html(htmlTable);
	
	
}
//--------  ListData  End


//DropDownList Year
var dropDownListYear = function(){
	var html="";
	html+="<select data-toggle=\"tooltip\" title=\"Year\" class=\"input form-control input-sm\" id=\"paramYear\" name=\"paramYear\" >";
	//html+="<option  selected value=''>All</option>";
	$.ajax ({
		url:restfulURL+":3001/api/tyw_year/" ,
		type:"get" ,
		dataType:"json" ,
		//headers:{Authorization:"Bearer "+tokenID.token},
		async:false,
		success:function(data){
			$.each(data,function(index,indexEntry){
					html+="<option  value="+indexEntry["year"]+">"+indexEntry["year"]+"</option>";	
			});	
		}
	});	
	html+="</select>";
	return html;
};

//DropDownList SalaryPeriod
var dropDownListSalaryPeriod = function(year){
	console.log("Year : "+year);
	var html="";
	html+="<select data-toggle=\"tooltip\" title=\"Salary Period\" class=\"input form-control input-sm\" id=\"paramSalaryPeriod\" name=\"paramSalaryPeriod\" >";
	//html+="<option  selected value=''>All</option>";
	$.ajax ({
		url:restfulURL+":3001/api/tyw_year/" ,
		type:"get" ,
		dataType:"json" ,
		//data:{"year":year},
		//headers:{Authorization:"Bearer "+tokenID.token},
		async:false,
		success:function(data){
			if(year == "2017"){
				html+="<option  value=\""+"งวดที่ 1"+"\">"+"งวดที่ 1"+"</option>";
				html+="<option  value=\""+"งวดที่ 2"+"\">"+"งวดที่ 2"+"</option>";
				html+="<option  value=\""+"งวดที่ 3"+"\">"+"งวดที่ 3"+"</option>";
				html+="<option  value=\""+"งวดที่ 4"+"\">"+"งวดที่ 4"+"</option>";
				html+="<option  value=\""+"งวดที่ 5"+"\">"+"งวดที่ 5"+"</option>";
			}else{
				html+="<option  value=\""+"งวดที่ 1"+"\">"+"งวดที่ 1"+"</option>";
				html+="<option  value=\""+"งวดที่ 2"+"\">"+"งวดที่ 2"+"</option>";
				html+="<option  value=\""+"งวดที่ 3"+"\">"+"งวดที่ 3"+"</option>";

			}
/*			$.each(data,function(index,indexEntry){
					html+="<option  value="+indexEntry["year"]+">"+indexEntry["year"]+"</option>";	
			});	*/
		}
	});	
	html+="</select>";
	return html;
};


//DropDownList Department
var dropDownListDepartment = function(){
	var html="";
	html+="<select data-toggle=\"tooltip\" title=\"Department\" class=\"input form-control input-sm\" id=\"paramDepartment\" name=\"paramDepartment\" >";
	html+="<option  selected value=''>All</option>";
	$.ajax ({
		url:restfulURL+":3001/api/tyw_import_employee/" ,
		type:"get" ,
		dataType:"json" ,
		//headers:{Authorization:"Bearer "+tokenID.token},
		async:false,
		success:function(data){
			$.each(data,function(index,indexEntry){
				html+="<option  value="+indexEntry["department_ame"]+">"+indexEntry["department_ame"]+"</option>";		
			});	
		}
	});	
	html+="</select>";
	return html;
};

//DropDownList PsGroup
var dropDownListPsGroup = function(){
	var html="";
	html+="<select data-toggle=\"tooltip\" title=\"Position Group\" class=\"input form-control input-sm\" id=\"paramPsGroup\" name=\"paramPsGroup\" >";
	html+="<option  selected value=''>All</option>";
	$.ajax ({
		url:restfulURL+":3001/api/tyw_import_employee/" ,
		type:"get" ,
		dataType:"json" ,
		//headers:{Authorization:"Bearer "+tokenID.token},
		async:false,
		success:function(data){
			$.each(data,function(index,indexEntry){
				html+="<option  value="+indexEntry["position_group"]+">"+indexEntry["position_group"]+"</option>";		
			});	
		}
	});	
	html+="</select>";
	return html;
};


$(document).ready(function() {
	
	$("#dropDownListYear").html(dropDownListYear());
	$("#dropDownListSalaryPeriod").html(dropDownListSalaryPeriod($("#paramYear").val()));
	$("#dropDownListDepartment").html(dropDownListDepartment());
	$("#dropDownListPsGroup").html(dropDownListPsGroup());
	
	$("#paramYear").change(function(){  
		$("#dropDownListSalaryPeriod").html(dropDownListSalaryPeriod($("#paramYear").val()));
	});

	
	$("#btnSearchAdvance").click(function(){
		searchAdvanceFn(
				$("#paramYear").val(),
				$("#paramSalaryPeriod").val(),
				$("#paramDepartment").val(),
				$("#paramPsGroup").val()
				);

		return false;
	});
	$("#btnSearchAdvance").click();
	
	
	
});