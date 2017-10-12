<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<tiles:importAttribute name="loginJS"/>
<c:forEach var="loginJS" items="${loginJS}">
    <script src="<c:url value="${loginJS}" />" ></script>
</c:forEach>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<div class="wrapper">
		<div class="container">
			<!-- <h2 style="font-weight: 950;">GBS CAI Korea University</h2>
                   <br><b>Cloud Application Innovation</b> -->
            <b><img src="/images/loginp.png"/></b>
			<form class="form">
				<input type="text" placeholder="xxxx@kr.ibm.com"> 
				<button type="submit" id="login-button">Login</button>
			</form>
		</div>

		<ul class="bg-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>

		</ul>
	</div>
	
