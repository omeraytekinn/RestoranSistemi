<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Deneme</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="width=device-width,initial-scale=1">
<link href="contents/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="contents/style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="contents/jquery.min.js"></script>
<script type="text/javascript" src="contents/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <% String pg = (String)request.getParameter("page"); %>
    <div class="container">
    <%@include file="contents/navbela.jsp" %>
    </div>
    <% if(pg == null || pg.equals("")) { %>
    
    <div class="container">
    <%@include file="contents/slider.jsp" %>
    </div><br><br>
    <div class="container">
    <%@include file="contents/indexmenu.jsp" %>
    </div>
    <% }else if(pg.equals("profil")){ %>
    <div class="container">
    <%@include file="contents/profil.jsp" %>
    </div>
    <% }else if(pg.equals("menu")){ %>
    <div class="container">
        <%@include file="contents/urunDuzenle.jsp" %>
    </div>
    <% }else if(pg.equals("urunler")){ %>
    <div class="container">
    <%@include file="contents/urunler.jsp" %>
    </div>
    <%} %>
</body>
</html>
