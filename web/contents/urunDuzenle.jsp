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
        <th class="col-xs-1">Resim</th>
        <th class="col-xs-2">Yemek Adı</th>
        <th class="col-xs-2">Fiyatı</th>
        <th class="col-xs-2">Kategori</th>
        <th class="col-xs-2">Tür</th>
        <th class="col-xs-3">İşlem</th>
    </tr>
    <tr>
        <td><a href="logo.png" target="new" class="img-thumbnail"><img src="contents/images/logo.png" class="menuResim" /></a></td>
        <td><a href="#"><p>Bulgur</p></a></td>
        <td><p>22TL</p></td>
        <td><p>Yiyecek</p></td>
        <td><p>Etsiz</p></td>
        <td>
        <a href="#" data-target="#menuGuncelle" data-toggle="modal" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-edit"></span>Güncelle</a>
        <a href="#" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span>Sil</a>
        </td>
    </tr>
    <tr>
        <td><a href="logo.png" target="new" class="img-thumbnail"><img src="contents/images/logo.png" class="menuResim" /></a></td>
        <td><a href="#"><p>Bulgur</p></a></td>
        <td><p>22TL</p></td>
        <td><p>Yiyecek</p></td>
        <td><p>Etsiz</p></td>
        <td>
        <a href="#" data-target="#menuGuncelle" data-toggle="modal" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-edit"></span>Güncelle</a>
        <a href="#" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span>Sil</a>
        </td>
    </tr>
</table>
</div>

<div class="container">
<div class="modal fade" id="menuGuncelle">
<div class="modal-dialog">
<div class="modal-content">

<div class="modal-header">
<h3>Güncelleme</h3>
</div>
<form class="form-horizontal" id="menuGunc">
<div class="modal-body">
<div class="form-group">
    <label class="control-label col-xs-4" for="yemekResmi">Yemek Resmi:</label>
    <div class="col-xs-8">
    	<a href="#" class="img-thumbnail"><img src="contents/images/logo.png" class="menuResim" /></a>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-xs-4" for="yemekAdi">Yemek Adı:</label>
    <div class="col-xs-8">
        <input id="yemekAdi" type="text" placeholder="Bulgur" class="form-control" />
    </div>
</div>
<div class="form-group">
    <label class="control-label col-xs-4" for="yemekFiyati">Yemek Fiyatı:</label>
    <div class="col-xs-8">
        <input id="yemekFiyati" type="text" placeholder="88" class="form-control" />
    </div>
</div>
<div class="form-group">
    <label class="control-label col-xs-4" for="yemekKat">Yemek Kategorisi:</label>
    <div class="col-xs-8">
        <select class="form-control">
        	<option>Yiyecek</option>
            <option>İçecek</option>
        </select>
    </div>
</div>
</div>
<div class="modal-footer">
<button type="submit" class="btn btn-primary control-label pull-left">Onayla <span class="glyphicon glyphicon-ok"></span></button>
<a href="#" class="btn btn-default pull-right">Kapat</a>
</div>
</form>


</div>
</div>
</div>