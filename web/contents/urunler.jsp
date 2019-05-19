<%@page contentType="text/html" pageEncoding="UTF-8" %>
<table class="table table-hover" id="menuIslem">
    <thead>
        <tr>
            <td colspan="4">
                <h4>Menüler</h4>
            </td>
        </tr>
    </thead>
    <tr>
        <th class="col-xs-1">Yemek</th>
        <th class="col-xs-3">Yemek Adı</th>
        <th class="col-xs-3">Fiyatı</th>
        <th class="col-xs-5">İşlemler</th>
        
    </tr>
    <tr>
        <td><a href="contents/images/logo.png" target="new" class="img-thumbnail"><img src="contents/images/logo.png" class="menuResim" /></a></td>
        <td><a href="#"><p>Bulgur</p></a></td>
        <td><p>22TL</p></td>
        <td>
        <a href="#" data-target="#menuGuncelle" data-toggle="modal" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-plus"></span>Ayrıntılı Bilgi</a>
        <a href="#" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-shopping-cart"></span>Sepete Ekle</a>
        </td>
    </tr>
</table>
</div>

<div class="container">
<div class="modal fade" id="menuGuncelle">
<div class="modal-dialog">
<div class="modal-content">

<div class="modal-header">
<h3>Bulgur</h3>
</div>

<div class="modal-body">
<div class="row">

<div class="col-xs-4">Yemek Resmi:</div>
<div class="col-xs-8">
    <a href="#" class="img-thumbnail"><img src="contents/images/logo.png" class="menuResim" /></a>
</div>
<div class="col-xs-4">Yemek Fiyatı:</div>
<div class="col-xs-8">15TL</div>
<div class="col-xs-4">Yemek Kategorisi:</div>
<div class="col-xs-8">Yiyecek</div>


</div>
</div>

<div class="modal-footer">
<a href="#" class="btn btn-default pull-right" data-dismiss="modal">Kapat</a>
</div>
</div>
</div></div></div>
