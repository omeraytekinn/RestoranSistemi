<%-- 
    Document   : kisiSil
    Created on : 17.Nis.2018, 15:11:54
    Author     : oniketya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="onlineOrder.Main" %>
<%
boolean status;
onlineOrder.DBLayer db = new onlineOrder.DBLayer();
status= db.deleteUser((String)session.getAttribute("kisi"));
if(status != false){
    session.setAttribute("kisi", null);
    response.sendRedirect("../index.jsp?delete=true");
}  
else  
{  
    response.sendRedirect("../index.jsp?page=profile&delete=false");
}
%>  