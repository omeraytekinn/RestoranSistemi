<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="onlineOrder.LoginBean"%>
<%@page import="onlineOrder.Main" %>
<jsp:useBean id="obj" class="onlineOrder.LoginBean" />
<jsp:setProperty property="*" name="obj" />
<%
if(obj.getEmail() == null){
    response.sendRedirect("../index.jsp?login=false");
}else{
    onlineOrder.Main main = new Main();
    onlineOrder.DBLayer db = new onlineOrder.DBLayer();
    int status = main.signInUser(obj.getEmail(), obj.getPass());
    if(status == 0){ 
        session.setAttribute("kisi",obj.getEmail());
        response.sendRedirect("../index.jsp?login=true");
    }  
    else{  
        response.sendRedirect("../index.jsp?login=false");
    }
}
%> 