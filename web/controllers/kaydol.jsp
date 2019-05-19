<%-- 
    Document   : kaydol
    Created on : 17.Nis.2018, 15:11:54
    Author     : oniketya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="onlineOrder.RegisterBean"%>
<%@page import="onlineOrder.Main" %>
<jsp:useBean id="obj" class="onlineOrder.RegisterBean" />
<jsp:setProperty property="*" name="obj" />
<%
    onlineOrder.Main main = new Main();
    int status;
    if(obj.getEmail() == null||obj.getName()==null||obj.getAdres()==null||obj.getPass()==null||obj.getPass2()==null||obj.getPhone()==null){
        status = 1;
    } else {
        status = main.signUpUser(obj.getName(), obj.getAdres(), obj.getPhone(), obj.getEmail(), obj.getPass(), obj.getPass2());
    }
    if(status == 0){ 
        session.setAttribute("kisi",obj.getEmail());
        response.sendRedirect("../index.jsp?register=true");
    }  
    else if(status == 1){ 
        response.sendRedirect("../index.jsp?register=inv");
    }
    else if(status == 2){  
        response.sendRedirect("../index.jsp?register=alr");
    }
    else if(status == 3){  
     
        //response.sendRedirect("../index.jsp?register=unm");
    }
    else if(status == 4){  
        response.sendRedirect("../index.jsp?register=err");
    }
   //}
%>