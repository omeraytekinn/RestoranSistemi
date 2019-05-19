<%@page contentType="text/html" pageEncoding="UTF-8" %>
<div class="modal fade" id="kullGuncelle">
<div class="modal-dialog">
<div class="modal-content">

<div class="modal-header">
<h3 class="pull-left">Güncelleme:</h3>
</div>

    <form class="form-horizontal" id="kullGunc" method="POST" action="controllers/bilgiGuncelle.jsp">

<div class="modal-body">
<div class="form-group">
    <label class="control-label col-xs-3" for="resim">Profil Resmi:</label>
    <div class="col-xs-9">
    	<a href="#" class="img-thumbnail"><img src="contents/images/logo.png" class="menuResim" /></a>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-xs-3" for="name">Ad Soyad:</label>
    <div class="col-xs-9">
        <input id="name" name="name" type="text" placeholder="Ad" class="form-control" value="<% out.print(user.getName()); %>" />
    </div>
</div>
<div class="form-group">
    <label class="control-label col-xs-3" for="mail">E-mail:</label>
    <div class="col-xs-9">
        <input id="mail" name="email" type="email" placeholder="ornek@website.com" class="form-control" value="<% out.print(user.getEmail()); %>" />
    </div>
</div>
<div class="form-group">
    <label class="control-label col-xs-3" for="phone">Telefon No:</label>
    <div class="col-xs-9">
        <input id="phone" name="phone" type="tel" placeholder="(5__)_______" class="form-control" value="<% out.print(user.getPhone()); %>" />
    </div>
</div>
<div class="form-group">
    <label class="control-label col-xs-3" for="phone">Adres:</label>
    <div class="col-xs-9">
        <textarea name="adres" class="form-control" placeholder="Adres"><% out.print(user.getAddress()); %></textarea>
    </div>
</div>
</div>

<div class="modal-footer">
<button type="submit" class="btn btn-primary pull-left">Onayla <span class="glyphicon glyphicon-ok"></span></button>
<a href="#" data-dismiss="modal" class="btn btn-default pull-right">Kapat</a>
</div>

</form>
</div>
</div>
</div>
