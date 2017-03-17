<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui"%>
<%@ page import="javax.portlet.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>
<%@ page import="com.liferay.portal.kernel.util.WebKeys" %>
<liferay-theme:defineObjects />
<portlet:defineObjects />
<%
String username = themeDisplay.getUser().getScreenName();
String password = (String)request.getSession().getAttribute(WebKeys.USER_PASSWORD);
%>
<input type="hidden" id="user_portlet" name="user_portlet" value="<%=username%>">
<input type="hidden" id="pass_portlet" name="pass_portlet" value="<%=password%>">
<input type="hidden" id="url_portlet" name="url_portlet" value="<%= renderRequest.getContextPath() %>">

 
<style>
.ibox-content {
    background-color: #fff;
    border: 1px solid #ffe57f;
    color: inherit;
    margin-bottom: 5px;
    padding-left: 15px;
    padding-right: 15px;
}

#countPaginationTop{
	width:60px;
}
#countPaginationBottom{
	width:60px;
}
#btnPaginationTop{
	width:300px;
	float:left;
}
#dropdownPaginationTop{
	/*width:100px;*/
	float:right;
}
#btnPaginationBottom{
	width:300px;
	float:left;
}
#dropdownPaginationBottom{
	/*width:100px;*/
	float:right;
}
.aui .pagination {
   margin: 0;
}
.pagingText {
    float: right;
    margin-right: 5px;
    padding-top: 5px;
}
.aui .popover-content {
    padding: 5px;
}
.aui .modal-footer {
  
    border-radius: 0;
   
}
.aui .modal {
    background-clip: padding-box;
    background-color: white;
    border: 1px solid rgba(0, 0, 0, 0.3);
    border-radius: 6px;
    box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
    left: 23%;
    margin-left: -280px;
    outline: 0 none;
    position: fixed;
    top: 0%;
    width: 90%;
    z-index: 1050;
}

.aui input, .aui textarea, .aui .uneditable-input {
   /* width: 47px;*/
}

 .aui .table td {
    border-top: 1px solid #ddd;
    line-height: 16px;
    padding: 5px;
    text-align: left;
    vertical-align: top;
}
.aui input[type="color"], .aui input[type="date"], .aui input[type="datetime"], .aui input[type="datetime-local"], .aui input[type="email"], .aui input[type="month"], .aui input[type="number"], .aui input[type="password"], .aui input[type="search"], .aui input[type="tel"], .aui input[type="text"], .aui input[type="time"], .aui input[type="url"], .aui input[type="week"], .aui select, .aui textarea, .aui .uneditable-input {
    border: 1px solid #ddd;
    color: #8d8d8d;
    font-weight: 200;
    margin-bottom: 0;
}
.aui #breadcrumbs {
    margin-bottom: 0;
}
	
</style>



<body class="top-navigation gray-bg ">

<!--  #####################Content data here ######################-->
<div id="slide_status">
	<div id="btnCloseSlide">×</div>
	<div id="slide_status_area"></div>
</div>
<div class="container1">

<h2><i class="fa fa fa-pencil-square-o icon-title"></i> <span id="modalDescription"> Appraisal Assignment</span> </h2>
				<div class="row-fluid"><!-- start--row -->

                    <div class="span12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                               
                                  <div class='titlePanelSearch'>Advance Search</div> 
         					</div>
         					
         						<div class="ibox-content"> 
         							
											<div class="row-fluid">
												
				                                    <div class="span4 m-b-xs">
					                                    <div class="form-group"><label class="span5 control-label">Appraisal Level</label>
			
						                                    <div class="span7" id='appraisalLevelArea'>
						                                    
							                                    <select data-toggle="tooltip" title="Flag 2" class="input form-control input-sm"  id="appraisalLevel" name="appraisalLevel">
							                                    	
							                                    	<option value="0"></option>
																	
																	
																</select>
																
						                                    </div>
						                                </div>
													</div>
													<div class="span4 m-b-xs">
					                                    <div class="form-group"><label class="span5 control-label">Appraisal Type</label>
			
						                                    <div class="span7" id="appraisalTypeArea">
						                                    
							                                    <select data-toggle="tooltip" title="Appraisal Type" class="input form-control input-sm"  id="appraisalType" name="appraisalType">
							                                    	
							                                    	<option value="0"></option>
																	
																</select>
																
						                                    </div>
						                                </div>
													</div>
													<div class="span4 m-b-xs">
					                                    <div class="form-group"><label class="span5 control-label">Year </label>
			
						                                    <div class="span7" id='yearArea'>
						                                    
							                                  
																  <select data-toggle="tooltip" title="Year" class="input form-control input-sm"  id="YearList" name="YearList">
							                                    	
							                                    	<option value="0"></option>
																	
																</select>
																
						                                    </div>
						                                </div>
													</div>
											</div>
											<div class="row-fluid">
												
													
													<div class="span4 m-b-xs" id="periodfrequencyArea">
					                                    <div class="form-group"><label class="span5 control-label">Period frequency</label>
			
						                                    <div class="span7" id="periodFrequencyArea">
						                                    
							                                    <select data-toggle="tooltip" title="Period frequency" class="input form-control input-sm"  id="periodFrequency" name="periodFrequency">
							                                    	<option value="0"></option>
																</select>
																
						                                    </div>
						                                </div>
													</div>
													
													<div class="span4 m-b-xs">
					                                    <div class="form-group"><label class="span5 control-label">Assign Frequency</label>
			
						                                    <div class="span7" id='assignFrequencyArea'>
						               
							                                    <select data-toggle="tooltip" title="Assign Frequency" class="input form-control input-sm"  id="assignFrequency" name="assignFrequency">
							                                    
							                                    	<option value="1">ครั้งเดียวทุกงวด</option>
							                                    	<option value="2">ทีละงวด</option>
																	
																</select>
																
						                                    </div>
						                                </div>
													</div>
													
													<div class="span4 m-b-xs">
					                                    <div class="form-group"><label class="span5 control-label">Period</label>
			
						                                    <div class="span7" id="periodArea">
						                                    
							                                    <select data-toggle="Period" title="Period" class="input form-control input-sm"  id="period" name="period">
							                                    	
							                                    	<option value="">ทุกรอบการประเมิน</option>
																	
																</select>
																
						                                    </div>
						                                </div>
													</div>
											</div>
											<div class="row-fluid">	
													<div class="span4 m-b-xs">
					                                    <div class="form-group"><label class="span5 control-label">Emp Name</label>
			
						                                    <div class="span7" id="empNameArea">
						                                    
							                                    
																<input type="text" class="form-control input-sm numberOnly" placeholder="Emp Name" id="empName">
																
																
						                                    </div>
						                                </div>
													</div>
													<div class="span4 m-b-xs">
					                                    <div class="form-group"><label class="span5 control-label">Position </label>
			
						                                    <div class="span7" id='PositionArea'>
						                                    
							                                  
																
																<input type="text" id="Position" placeholder="Position" class="form-control input-sm">
																
						                                    </div>
						                                </div>
													</div>
													<div class='span4 object-right' style='text-align:right;' >
										
												
														
			                                  
				                                     	<div id="btnSearchArea">
			                                         		<button type="button" class="btn btn-info input-sm" name="btnSearchAdvance" id="btnSearchAdvance"><i class="fa fa-search"></i>&nbsp;Search</button>
			                                         		<button type="button"  data-target='#ModalAssignment' data-toggle='modal' class="btn btn-warning input-sm" name="btnAssignment" id="btnAssignment"><i class="fa fa-sign-in"></i>&nbsp;Assign</button>
			                                         	</div>
		                                         
				                                     	
                                     	
													</div>
													
													
											</div>
							
				         		</div><!-- content end -->
				         		</div>
				         		
         				</div>
	
         			</div><!-- end--row -->
         			<div class="row-fluid search_result">
				         		<div class="span12">
					         	<div class="ibox-title">
	                                <div class='titlePanel'>Employee List</div>
	         					</div>
	         					
	         					
	         					<div class="ibox-content"> 
	         					
                                    	<!-- start table -->
                                    	<!-- pagination start -->
                                    	<div class="row-fluid">
	                                    	<div class="span9">
												<div class="pagination_top pagination"></div>
	                                    	</div>
	                                    
		                                    <div  id='dropdownPaginationTop' class="span3 object-right paging-text">
		                                    
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
		                                    
                                    	</div> 
                                    	 <!-- pagination end -->
                                    	 
                                    	 <!-- content row 1 start-->
                                    	  <div class="row-fluid">
				         					<div class="span12">
		                                    	<div class="ibox-title2">
					                                 <div class='titlePanel2'>ประเมินผลการปฎิบัติงานประจำปี 2017 ครั้งที่1 Start Date 01/11/2016 End Date 30/04/2017 </div> 
					                                
					                            </div>
					         					
					         					<div class="ibox-content">
					         							
					         							<!-- content table start-->	 
				                                    	<div class="table-responsive">
				                                   		<table class="table table-striped" id="tablethreshould">
				                                   		<!-- Select,Status,Emp Code,Department,Section,Appraisal Type,Position -->
					                                        <thead>
						                                        <tr>
						                                            <th class='object-center' style='width:5%'><b>Select</b></th>
						                                            <th  style='width:5%'><b>Status</b></th>
						                                            <th  style='width:8%'><b>Emp Code</b></th>
						                                            <th  style='width:15%'><b>Emp Name</b></th>
						                                            <th  style='width:10%'><b>Department</b></th>
						                                            <th  style='width:15%'><b>Section</b></th>
						                                            <th  style='width:10%'><b>Appraisal Type</b></th>
						                                            <th  style='width:15%'><b>Position</b></th>
						                                            <th style='width:7%; text-align:center;'><b>Manage</b></th>
						                                        </tr>
					                                        </thead>
					                                        <tbody id="listDatas">
					                                        <!-- 
					                                        	<tr>
					                                        		<td class='object-center'><input type='checkbox'></td>
					                                        		<td>Unassigned</td>
					                                        		<td>0001</td>
					                                        		<td>ระดับการจัดการ</td>
					                                        		<td>พัฒนาลูกค้า</td>
					                                        		<td>ประจำปี</td>
					                                        		<td>หัวหน้าพัฒนาลูกค้า</td>
					                                        		<td style="text-align:center">
					                                        			
					                                        		<i title="" data-original-title="" class="fa fa-cog font-gear popover-edit-del" data-html="true" data-toggle="popover" data-placement="top" data-content=" &lt;button class='btn btn-warning btn-xs btn-gear edit' id=1 data-target=#addModalRule data-toggle='modal'&gt;Edit&lt;/button&gt;&nbsp;&lt;button id=1 class='btn btn-danger btn-xs btn-gear del'&gt;Delete&lt;/button&gt;"></i>
					                                        		
					                                        		
					                                        		</td>
					                                        	</tr>
					                                        	<tr>
					                                        		<td class='object-center'><input type='checkbox'></td>
					                                        		<td>Unassigned</td>
					                                        		<td>0001</td>
					                                        		<td>ระดับการจัดการ</td>
					                                        		<td>พัฒนาลูกค้า</td>
					                                        		<td>ประจำปี</td>
					                                        		<td>หัวหน้าพัฒนาลูกค้า</td>
					                                        		<td style="text-align:center">
					                                        			<i title="" data-original-title="" class="fa fa-cog font-gear popover-edit-del" data-html="true" data-toggle="popover" data-placement="top" data-content=" &lt;button class='btn btn-warning btn-xs btn-gear edit' id=1 data-target=#addModalRule data-toggle='modal'&gt;Edit&lt;/button&gt;&nbsp;&lt;button id=1 class='btn btn-danger btn-xs btn-gear del'&gt;Delete&lt;/button&gt;"></i>
					                                        		</td>
					                                        	</tr>
					                                        	<tr>
					                                        		<td class='object-center'><input type='checkbox'></td>
					                                        		<td>Unassigned</td>
					                                        		<td>0001</td>
					                                        		<td>ระดับการจัดการ</td>
					                                        		<td>พัฒนาลูกค้า</td>
					                                        		<td>ประจำปี</td>
					                                        		<td>หัวหน้าพัฒนาลูกค้า</td>
					                                        		<td style="text-align:center">
					                                        			<i title="" data-original-title="" class="fa fa-cog font-gear popover-edit-del" data-html="true" data-toggle="popover" data-placement="top" data-content=" &lt;button class='btn btn-warning btn-xs btn-gear edit' id=1 data-target=#addModalRule data-toggle='modal'&gt;Edit&lt;/button&gt;&nbsp;&lt;button id=1 class='btn btn-danger btn-xs btn-gear del'&gt;Delete&lt;/button&gt;"></i>
					                                        		</td>
					                                        	</tr>
					                                        	<tr>
					                                        		<td class='object-center'><input type='checkbox'></td>
					                                        		<td>Unassigned</td>
					                                        		<td>0001</td>
					                                        		<td>ระดับการจัดการ</td>
					                                        		<td>พัฒนาลูกค้า</td>
					                                        		<td>ประจำปี</td>
					                                        		<td>หัวหน้าพัฒนาลูกค้า</td>
					                                        		<td style="text-align:center">
					                                        			<i title="" data-original-title="" class="fa fa-cog font-gear popover-edit-del" data-html="true" data-toggle="popover" data-placement="top" data-content=" &lt;button class='btn btn-warning btn-xs btn-gear edit' id=1 data-target=#addModalRule data-toggle='modal'&gt;Edit&lt;/button&gt;&nbsp;&lt;button id=1 class='btn btn-danger btn-xs btn-gear del'&gt;Delete&lt;/button&gt;"></i>
					                                        		</td>
					                                        	</tr>
					                                        	 -->
					                                        	
					                                        </tbody>
				                                        </table>
				                                        </div>
                                        				<!-- content table end-->
                                        				
                                        				
					         					</div>
					         				</div>
					         			</div>
	         							<!-- content row 1 end-->
	         							
	         							
	         							

                                        
                                        <!-- row start -->
                                    	<div class="row-fluid">
	                                    	<div class="span9">
	
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
  
  <div id='embedParamSearch'></div>       					
      <!-- <button data-toggle="modal" data-target="#ModalKPI" id="btnAddKPI" class="btn btn-info input-sm" type="button"><i class="fa fa-plus-square"></i>&nbsp;Assign KPI</button>	 -->				
<!-- Modal KPI Start Edit -->

  <div aria-hidden="true" role="dialog" tabindex="-1" id="ModalAssignment" class="modal inmodal" style="display: none;">
    <div class="modal-dialog">
    <div class="modal-content animated bounceInRight">
            <div class="modal-header">
                <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only"></span></button>
             
                <h4 class="modal-title" id="modalTitleRole">Appraisal Assignment</h4>
               
            </div>
            <div class="modal-body">
                <!-- content start -->
                <h2><i class="fa fa fa-pencil-square-o icon-title"></i> <span id="modalDescription"> Assign Appraisal Item</span> </h2>
                <hr>
               
             
                <!-- panel0 start -->
                <div class="row-fluid cus_information_area" >
	  					<div class="span12">
	                      <div class="ibox-title2">
	                          <div class='titlePanel'>Employee Information</div>
	                      </div>
	   					
	   					<div class="ibox-content">
	   							
	   							<!-- content table start-->	
	   								<div class='row-fluid wrapper employee_information_area'>
	   									<div class='span4'>
	   										<div class='label_info'>Employee Code:</div>
	   										<div class='text_info' id='employee_code'></div>
	   									</div>
	   									<div class='span4'>
	   										<div class='label_info'>Section:</div>
	   										<div class='text_info' id='section'> </div>
	   									</div>
	   									<div class='span4'>
	   										<div class='label_info'>Appraisal Type:</div>
	   										<div class='text_info' id='appraisal_type'></div>
	   									</div>
	   									<div class='span4'>
	   										<div class='label_info'>Employee Name:</div>
	   										<div class='text_info' id='employee_name'></div>
	   									</div>
	   								
	   									<div class='span4'>
	   										<div class='label_info'>Department:</div>
	   										<div class='text_info' id='department'></div>
	   									</div>
	   									<div class='span4'>
	   										<div class='label_info'>Period:</div>
	   										<div class='text_info' id='period'> </div>
	   									</div>
	   									<div class='span4'>
	   										<div class='label_info'>Start Working Date:</div>
	   										<div class='text_info' id='start_working_date'> </div>
	   									</div>
	   									<div class='span4'>
	   										<div class='label_info'>Chief Employee Code:</div>
	   										<div class='text_info' id='chief_employee_code'> </div>
	   									</div>
	   									<div class='span4'>
	   										<div class='label_info'>Position:</div>
	   										<div class='text_info' id='position'> </div>
	   									</div>
	   									<div class='span4'>
	   										<div class='label_info'>Chief Employee Name:</div>
	   										<div class='text_info'id='chief_employee_name'> </div>
	   									</div>
	   									
	   								</div>
						          <br style="clear:both">
	                            <!-- content table end-->				
	   					</div>
	   				</div>
	   			</div>
                <!-- panel0 end -->
                <!-- panel1 start -->
                <div id='appraisal_template_area'></div>
                <!-- panel1 end -->
                
                
               
                
                <!-- content end -->
            </div>
            <div class="modal-footer">
            
            	<div class="row-fluid">
            		<div class='span12 crandTotalWeight' >
            		Grand Total Weight % <span id='crandTotalWeight' class='perscentage'>0.00</span>
            		</div>
            	</div>
            	
            	<div class="row-fluid">
            		<div class='span12'>
            			
            			<div class='btnManagement'>
		   					<input type="hidden" name="id" id="id" value="">
			   				<input type="hidden" name="action" id="action" value="add">
			   				<button class="btn btn-primary" type="button" id="btnSubmit">Save</button>
			   				<button class="btn btn-primary" type="button" id="btnAddAnother">Save & Add Another</button>
			                <button data-dismiss="modal" class="btn btn-white btnCancle" type="button">Cancel</button>
		   				</div>
		   				
		   				<div class='btnAssignment'>
		   					
	            			<div class='labelAssign'>Assign to:&nbsp; </div>
	            			<div class='dropdownListAssign' id='assignToArea'>
	            			
		            			<select id='assignTo' style='width:100px;' class='input form-control input-sm'>
		            			<!-- 
				   					<option>1</option>
				   					<option>2</option>
				   					<option>3</option>
				   				 -->
				   				</select>
			   				</div>
			   				
			   				
			   				<div class='labelAssign' style='width:55px;'>Action:&nbsp; </div>
	            			<div class='dropdownListAssign' id='actionAssignArea'>
		            			<select id='actionAssign' style='width:100px; class='input form-control input-sm'>
		            			<!-- 
				   					<option>Save Draft</option>
				   					<option>Review</option>
				   				 -->	
				   				</select>
			   				</div>
			   				
		   				
		   				</div>
		   				
            		
		            		
		   				<br style='clear:both'>
		   				<div class="alert alert-warning information" id="information" style="display: none;"></div>
			   			<br style='clear:both'>
			   			<br style='clear:both'>
		   			</div>
		   		
		   			
   				</div>
            	
           	 	
            </div>
        </div>
    </div>
    
</div>                      
<!-- Modal KPI End Edit -->


<!-- Modal Confirm Start -->
<div style='left: 55%; width: 400px; top:15px; display:none;' aria-hidden="true" role="dialog" tabindex="-1" id="confrimModal" class="modal inmodal in" style="display: none;">
    <div class="modal-dialog">
    <div class="modal-content animated bounceInRight">
            <div class="modal-header">
                <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only"></span></button>
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
<!-- Modal Confirm End -->



	
</body>