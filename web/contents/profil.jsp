<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="onlineOrder.DBLayer" %>
<%@page import="onlineOrder.User" %>
<% 
    DBLayer db = new DBLayer(); 
    User user = db.getUser((String)session.getAttribute("kisi"));
%>
<div class="jumbotron">
<div class="media" id="yorumlar">

<div class="media-left media-top">
<a href="#" class="img-thumbnail"><img style="max-height:150px" class="media-object" src="contents/images/1.jpeg" /></a>
<a href="#" class="btn btn-success">
    <h3 class="media-heading col-xs-2">Hakkımda</h3>
</a>
</div>
<div class="media-body">
<table class="table table-striped table-bordered table-hover">
    <tbody>
        <tr>
            <td class="col-xs-3"><h4>Ad Soyad: </h4></td>
            <td><h4><% out.print(user.getName()); %></h4></td>
        </tr>
        <tr>
            <td class="col-xs-3"><h4>E-mail: </h4></td>
            <td><h4><% out.print(user.getEmail()); %></h4></td>
        </tr>
        <tr>
            <td class="col-xs-3"><h4>Telefon </h4></td>
            <td><h4><% out.print(user.getPhone()); %></h4></td>
        </tr>
        <tr>
            <td class="col-xs-3"><h4>Adres </h4></td>
            <td><h4><% out.print(user.getAddress()); %><h4></td>
        </tr>
        <tr>
            <td class="col-xs-3"><a href="#" data-target="#kullGuncelle" data-toggle="modal" class="btn btn-primary"><h4>Düzenle </h4></a></td>
            <td><a href="controllers/kisiSil.jsp" class="btn btn-danger"><h4>Sil</h4></a></td>
        </tr>
    </tbody>
</table>
</div>

</div>
</div>
<%@include file="kullaniciBilgiGuncelle.jsp" %>