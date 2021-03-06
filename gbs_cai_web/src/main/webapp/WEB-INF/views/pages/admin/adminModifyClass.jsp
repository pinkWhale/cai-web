<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <title>클래스 수정</title>
</head>
<body>
		<%
		HttpSession session1 = request.getSession();
		String user_id = (String)session1.getAttribute("user_id");
		
		if(!user_id.equals("ibmk0reagbs!")) {%>
			<c:redirect url="/logout"/>
		<%}%>
	
        <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Register Class</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <form class="form-horizontal" method="POST" name="myForm" action="/modifyClass">
                                      <input type="hidden" id="idx" name="idx" value="${vo.idx}">
                                      <fieldset>
                                        <legend>Form Components</legend>
                                        <div class="control-group">
                                          <label class="control-label" for="class-_id">Class ID</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="class_id" name="class_id"  value="${vo.class_id}" 
                                            	data-provide="typeahead"  required="required">
                                            <p class="help-block"></p>
                                          </div>
                                        </div>
                                
                                		<div class="control-group">
                                          <label class="control-label" for="title">Title</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="title" name="title" value="${vo.title}" 
                                            	data-provide="typeahead" required="required">
                                            <p class="help-block">강의명을 등록해주세요.</p>
                                          </div>
                                          </div>
                                          <div class="control-group">
                                          <label class="control-label" for="teacher">Speaker</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="speaker" name="speaker" value="${vo.speaker}" 
                                            	data-provide="typeahead" required="required">
											<p class="help-block">강사명을 등록해주세요</p>
                                          </div>
                                          </div>
     
                                        <div class="control-group">
                                          <label class="control-label" for="room">Room</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="room" name="room" value="${vo.room}" 
                                            	data-provide="typeahead" required="required">
                                            <p class="help-block"></p>
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="session">Session</label>
                                          <div class="controls">
                                            <select id="session" name="session" class="chzn-select" >
                                              <option value="${vo.session}">${vo.session}</option>
                                              <option value="Session1 (1:15 - 2:30)">Session1 (1:15 - 2:30)</option>
                                              <option value="Session2 (2:45 - 4:00)">Session2 (2:45 - 4:00)</option>
                                              <option value="Session3 (4:15 - 5:30)">Session3 (4:15 - 5:30)</option>
                                            </select>
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="capacity">Capacity</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="capacity" name="capacity" value="${vo.capacity}" 
                                            	data-provide="typeahead" required="required">
                                            <p class="help-block"> </p>
                                          </div>
                                        </div>

                                        <div class="control-group">
                                          <label class="control-label" for="imageFile">Image File</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="speaker_img" name="speaker_img" value="${vo.speaker_img}" data-provide="typeahead" >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="attendCode">Attend Code</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="attend_code" name="attend_code" value="${vo.attend_code}" data-provide="typeahead" >
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="textarea2">Class Detail</label>
                                          <div class="controls">
                                            <textarea class="input-xlarge textarea" placeholder="Enter text:)" name="detail" rows="10" style="width:90%; height:80%;">${vo.detail}</textarea>
                                          </div>
                                        </div>                     

                                        <div class="form-actions">
                                          <input type="submit" class="btn btn-default" value="수정"/><!-- Save</button>-->
                                          <input type="reset" class="btn" value="Cancel"/>
                                           <a href="/adminClass" class="btn btn-success">목록</a>
                                        </div>
                                      </fieldset>
                                      
                                    </form>

                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
              </div>
            </div>
            <hr>
            
        </div>

        <script>

	jQuery(document).ready(function() {   
	   FormValidation.init();
	});
	

        $(function() {
            $(".datepicker").datepicker();
            $(".uniform_on").uniform();
            $(".chzn-select").chosen();
            //$('.textarea').wysihtml5();
        });
        </script>


</body>
</html>
