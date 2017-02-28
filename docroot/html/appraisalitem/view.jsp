<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui"%>
<%@ page import="javax.portlet.*"%>


<portlet:defineObjects />
<style>





 /* Large desktop Start#####################################*/
 @media (min-width: 1200px) { 

	
	
  }
  /* Large desktop End######################################*/
  
  /*  desktop Start#########################################*/
 @media (min-width: 980px) and (max-width: 1199px) {
 
 	
  }
 /*  desktop End############################################*/
 
 /* Portrait tablet to landscape and desktop Start##########*/
 @media (min-width: 768px) and (max-width: 979px) {
 
	
  }
 /* Portrait tablet to landscape and desktop End############*/ 
 
 /* Landscape phone to portrait tablet Start################*/
 @media (max-width: 767px) { 
 	.pagingText{
 		display:none;
 	}
 	#btnPaginationTop{
 		width:300px;
 		float:left;
 	}
	#dropdownPaginationTop{
		width:100px;
 		float:right;
	}
	#btnPaginationBottom{
 		width:300px;
 		float:left;
 	}
	#dropdownPaginationBottom{
		width:100px;
 		float:right;
	}
  }
 /* Landscape phone to portrait tablet End##################*/ 
 
 /* Landscape phones and down Start#########################*/
 @media (max-width: 480px) { 
 	
 	
 
 	#btnPaginationTop{
 		width:300px;
 		float:left;
 	}
	#dropdownPaginationTop{
		width:100px;
 		float:right;
	}
	#btnPaginationBottom{
 		width:300px;
 		float:left;
 	}
	#dropdownPaginationBottom{
		width:100px;
 		float:right;
	}
 	

  }
  /* Landscape phones and down End##########################*/
  
  
  
  /* main start*/
        table {
            width: 100%;
        }
        .aui #breadcrumbs {
		    margin-bottom: 5px;
		}
       .aui .portlet-content, .aui .portlet-minimized .portlet-content-container {
	    -moz-border-bottom-colors: none;
	    -moz-border-left-colors: none;
	    -moz-border-right-colors: none;
	    -moz-border-top-colors: none;
	    border-color: #eaeaea;
	    border-image: none;
	    border-style: solid;
	    border-width: 0 1px 1px;
	    padding: 1px 10px 10px;
	}
	
	.aui #modal-quantity{
    background-clip: padding-box;
    background-color: white;
    border: 1px solid rgba(0, 0, 0, 0.3);
    border-radius: 6px;
    box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
    left: 34%;
    margin-left: -280px;
    outline: 0 none;
    position: fixed;
    top: 0%;
    width: 1000px;
    z-index: 1050;
}
.aui .modal-footer {
    background-color: #f5f5f5;
    border-radius: 0;
    border-top: 1px solid #ddd;
    box-shadow: 0 1px 0 white inset;
    margin-bottom: 0;
    padding: 14px 15px 15px;
    text-align: right;
}
.aui select {
    background-color: white;
    border: 1px solid #ccc;
    width: 100%;
}

.ibox-content {
    background-color: #fff;
    border: 1px solid #ffe57f;
    color: inherit;
    margin-bottom: 5px;
    padding: 5px;
}
.aui .table th, .aui .table td {
    border-top: 1px solid #ddd;
    line-height: 20px;
    padding-bottom: 3px;
    padding-top: 3px;
    text-align: left;
    vertical-align: top;
}
.aui .pagination {
    margin: 0;
}
.display-none{
	display:none;
}
.pagingText {
    float: right;
    margin-right: 5px;
    padding-top: 5px;
}
.gray-bg {
    background-color: #f3f3f4;
}

.ibox-content {
    background-color: #fff;
    border: 1px solid #ffe57f;
    color: inherit;
    margin-bottom: 5px;
    padding-left: 15px;
    padding-right: 15px;
}
/*
.aui .portlet-content, .aui .portlet-minimized .portlet-content-container {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: #f3f3f4 none repeat scroll 0 0;
    border-color: #eaeaea;
    border-image: none;
    border-style: solid;
    border-width: 0 1px 1px;
    padding: 1px 10px 10px;
}
*/
.form-file-mangement {
    height: 37px;
}
.form-label-customs{
	font-weight: bold;
}
.aui hr{
	margin: 10px 0;
}
/* main end*/

/*local start*/
.aui #modal-quality{
    background-clip: padding-box;
    background-color: white;
    border: 1px solid rgba(0, 0, 0, 0.3);
    border-radius: 6px;
    box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
    left: 50%;
    margin-left: -280px;
    outline: 0 none;
    position: fixed;
    top: 10%;
    width: 500px;
    z-index: 1050;
}
.form-label-customs {
    float: left;
    padding-top: 1px;
    width: 170px;
    text-align:right;
}
.control-label{
	font-weight:bold;
}
/*local end*/
	
	
	
</style>


<input type="hidden" id="url_portlet" name="url_portlet" value="<%= renderRequest.getContextPath() %>">
<!--  #####################Content data here ######################-->
<div class="container1">

<div class='row-fluid display-none'>

	<div class='span12'>
		<div id="slide_status">
			<div id="btnCloseSlide">x</div>
			<div id="slide_status_area"></div>
		</div>
	</div>

</div>

<h2><i class="fa fa fa-pencil-square-o icon-title"></i> <span id="modalDescription"> Appraisal Item</span> </h2>

                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                  <div class='titlePanelSearch'>Advance Search2</div> 
         					</div>
         						<div class="ibox-content"> 

											<div class='row-fluid'>
												
				                                    <div class="span5 m-b-xs">
					                                    <div class="form-group">
					                                    
					                                    	<label class="span4 control-label">Appraisal Level</label>
						                                    <div class="span6" id="appraisalLevelArea">
						                                    
							                                    <select data-toggle="tooltip" title="Appraisal Level" class="input form-control input-sm"  id="appraisalLevel" name="appraisalLevel">
							                                    	
							                                    	<option value="0"></option>
																	
																	
																</select>
																
						                                    </div>
						                                </div>
													</div>
													<div class="span5 m-b-xs">
					                                    <div class="form-group">
					                                    
					                                    	<label class="span4 control-label">Perspective</label>
						                                    <div class="span6" id="perspectiveArea">
						                                    
							                                    <select data-toggle="tooltip" title="Perspective" class="input form-control input-sm"  id="perspective" name="perspective">
							                                    	
							                                    	<option value="0"></option>
																	
																</select>
																
						                                    </div>
						                                </div>
													</div>
											</div>
											<div class='row-fluid'>
													<div class="span5 m-b-xs">
					                                    <div class="form-group"><label class="span4 control-label">Structure </label>
			
						                                    <div class="span6" id='structureArea'>
						                                    
							                                    <select data-toggle="tooltip" title="Structure" class="input form-control input-sm"  id="structure" name="structure">
							                                    	
							                                    	<option value="0"></option>
																	
																</select>
																
						                                    </div>
						                                </div>
													</div>
													
													<div class="span5 m-b-xs">
					                                    <div class="form-group"><label class="span4 control-label">Appraisal Item Name</label>
			
						                                    <div class="span6" id='appraisalItemNameArea'>
						                                    
																<input data-toggle="tooltip" title="Appraisal Item Name" type='text' name='appraisalItemName' class='input form-control input-sm' placeholder="Appraisal Item Name" id='appraisalItemName'>
															 </div>
						                                    
						                                </div>
													</div>
													<div class="span2 m-b-xs object-right">
														<button type="button" class="btn btn-info input-sm" name="btnSearchAdvance" id="btnSearchAdvance"><i class="fa fa-search"></i>&nbsp;Search</button>
				                                         	
													</div>
													
											</div>
										<!-- 
										<div class='row-fluid'>
											<div class='span12' align="right">
											
													
													
				                                     	<div class="input-group" >
					                                     	<div id="btnSearchArea">
				                                         		<button type="button" class="btn btn-info input-sm" name="btnSearchAdvance" id="btnSearchAdvance"><i class="fa fa-search"></i>&nbsp;Search</button>
				                                         	</div>
			                                         	</div>
			                                     	
	                                     	
											</div>
										</div>
										 -->
										

	                                    
                                    
                                    
				         		</div><!-- content end -->
				         		</div>
				         		
         			
         			<div class="row-fluid result_area" style='display:none;'>
				         		<div class="span12">
					         	<div class="ibox-title">
	                               <div class="titlePanelSearch">Appraisal Item Result</div>
	         					</div>
	         					
	         					
	         					<div class="ibox-content"> 
	         					
                                    	<!-- start table -->
                                    	<!-- pagination start -->
                                    	<div class="row-fluid">
	                                    	<div id='btnPaginationTop' class="span9">
												
												<div class="pagination_top pagination"></div>
												
												 <!-- 
												<ul class="pagination bootpag"><li class="first disabled" data-lp="1"><a href="javascript:void(0);">←</a></li><li class="prev disabled" data-lp="1"><a href="javascript:void(0);">prev</a></li><li data-lp="1" class="active"><a href="javascript:void(0);">1</a></li><li data-lp="2"><a href="javascript:void(0);">2</a></li><li class="next" data-lp="2"><a href="javascript:void(0);">next</a></li><li class="last" data-lp="2"><a href="javascript:void(0);">→</a></li></ul>
												 -->
	                   
	                                    	</div>
	                                    
		                                    <div id='dropdownPaginationTop' class="span3 object-right paging-text ">
		                                    
		                                    	 <div class='pagingDropdown'>
		                                 			<select  id='countPaginationTop'  class="form-control input-sm countPagination">
					                                     <option>10</option>
					                                     <option>20</option>
					                                     <option>50</option>
					                                     <option>100</option>
					                                 </select>
		                                 		
		                                 		</div>
												<div class='pagingText'>Results per page</div>
		                                    
		                                    </div>
		                                    <!-- 
		                                    <div class="span1">
	                                     
	                                    	<select name="countPagination" id='countPaginationTop'  class="form-control input-sm countPagination">
		                                        <option>10</option>
		                                     	<option>20</option>
		                                     	<option>50</option>
		                                     	<option>100</option>
		                                    </select> 
	                                        
	                                    	</div>
	                                    	 -->
	                                    	
                                    	</div> 
                                    	<!-- pagination end -->
                                    	<!-- mian content start -->
                                    	
                                    		<div id='main_conntent_list_data'></div>
                                    	
                                    	<!-- mian content end -->
                                        <!-- row start -->
                                    	<div class="row-fluid">
	                                    	<div id='btnPaginationBottom' class="span9 ">
	
											    <div class="pagination_bottom pagination"></div>
											    <!-- 
												<ul class="pagination bootpag"><li class="first disabled" data-lp="1"><a href="javascript:void(0);">←</a></li><li class="prev disabled" data-lp="1"><a href="javascript:void(0);">prev</a></li><li data-lp="1" class="active"><a href="javascript:void(0);">1</a></li><li data-lp="2"><a href="javascript:void(0);">2</a></li><li class="next" data-lp="2"><a href="javascript:void(0);">next</a></li><li class="last" data-lp="2"><a href="javascript:void(0);">→</a></li></ul>
	                   							 -->
	                                    	</div>
	                                    
		                                    <div id='dropdownPaginationBottom' class="span3 object-right paging-text">
		                                    
		                                    	<div class='pagingDropdown'>
		                                 			<select  id='countPaginationBottom'  class="form-control input-sm countPagination">
					                                     <option>10</option>
					                                     <option>20</option>
					                                     <option>50</option>
					                                     <option>100</option>
					                                 </select> 
			                                 	</div>
												<div class='pagingText'>Results per page</div>
		                                    
		                                    </div>
		                                  <!-- 
		                                    <div class="span1">
	                                    
	                                    	<select name="countPagination" id='countPaginationBottom'  class="form-control input-sm countPagination">
		                                        <option>10</option>
		                                     	<option>20</option>
		                                     	<option>50</option>
		                                     	<option>100</option>
		                                    </select> 
	                                        
	                                    	</div>
	                                    	 -->
                                    	</div> 
                                    	 <!-- row end -->
                                    	<!-- end table -->
                                    	<br style='clear:both'>
         						</div><!-- content end -->
         					</div>
         					</div>
  </div>       					
         					






<div id='include_deduct_score'></div>
<div id='include_quality'></div>
<div id='include_quantity_form'></div>


<!-- Modal Confirm Start -->
<div aria-hidden="true" role="dialog" tabindex="-1" id="confrimModal" class="modal fade" style="display: none;">
    <div class="modal-dialog">
    <div class="modal-content  bounceInRight">
            <div class="modal-header">
                <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                <h5 class="modal-title">Confirm Dialog</h5>
            </div>
            <div class="modal-body">
                <!-- content start -->
                <!-- <h2><i class="fa fa fa-pencil-square-o icon-title"></i> ADD NEW GRADE</h2>
                <hr>
                 -->
                <!-- form start -->
                <div class="form-kpi-mangement">
	                <div class="form-kpi-label" align="center">
	                
	                 		<label>Confirm to Delete Data?</label>
	                </div>
                </div>
                               
                <!-- form start -->
                <!-- content end -->
            </div>
            <div class="modal-footer">
            	<div align="center">
	                <button class="btn btn-success" id="btnConfirmOK" type="button">&nbsp;&nbsp;<i class="fa fa-check-circle"></i>&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>&nbsp;&nbsp;
	                <button data-dismiss="modal" class="btn btn-danger" type="button"><i class="fa fa-times-circle"></i>&nbsp;Cancel</button>
            	</div>
            </div>
        </div>
    </div>
    
    
   
</div>
<div id='embedParamSearch'></div>
<div id='embedParamSearchQuantity'></div>
<!-- Modal Confirm End -->

 <!--  #####################Content data here ######################-->
		

