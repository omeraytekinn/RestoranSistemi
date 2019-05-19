<%-- 
    Document   : bilgiGuncelle
    Created on : 17.Nis.2018, 15:11:54
    Author     : oniketya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="onlineOrder.RegisterBean"%>
<%@page import="onlineOrder.Main" %>
<%@page import="onlineOrder.User" %>
<jsp:useBean id="obj" class="onlineOrder.RegisterBean" />
<jsp:setProperty property="*" name="obj" />
<%
boolean status;
if(obj.getEmail() == null||obj.getName()==null||obj.getAdres()==null||obj.getPhone()==null){
    response.sendRedirect("../index.jsp?page=profile&update=false");
} else{
    onlineOrder.DBLayer db = new onlineOrder.DBLayer();
    User user = new User(obj.getName(), obj.getAdres(), obj.getPhone(), obj.getEmail(), null, null, null, true);
    status= db.userInfoUpdate(user);
    if(status != false){
        response.sendRedirect("../index.jsp?page=profil&update=true");
    }  
    else  
    {  
        response.sendRedirect("../index.jsp?page=profil&update=false");
    }
}
%>  