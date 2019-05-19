<%@page contentType="text/html" pageEncoding="UTF-8" %>
<div class="modal fade" id="basket">
<div class="modal-dialog modal-lg">
<div class="modal-content">

<div class="modal-header">
<h4 class="modal-title">Ürünler<span class="glyphicon glyphicon-shopping-cart"></span></h4>
</div>

<div class="modal-body">
<table class="table table-hover">
	<thead>
        <tr>
            <th class="col-xs-1">Ürün</th>
            <th class="col-xs-2">Ürün Adı</th>
            <th class="col-xs-2">Ürün Adedi</th>
            <th class="col-xs-2">Ürün Fiyatı</th>
            <th class="col-xs-2">Toplam Fiyat</th>
            <th class="col-xs-3">İşlem</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                <a class="thumbnail" href="#"><img class="media-object" src="contents/images/logo.png" width="50px" height="50px"/></a>
			</td>
            <td>
            	<h4 class="media-heading"><a href="#">Ürün Adı</a></h4>
            </td>
            <td>
            	<input type="text" value="3" class="form-control" />
            </td>
            <td>5TL</td>
            <td>15TL</td>
            <td>
            	<a href="#" class="btn btn-primary"><span class="glyphicon glyphicon-trash"></span>Güncelle</a>
            	<a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>Sil</a>
            </td>
        </tr>
    </tbody>
</table>
</div>
<div class="modal-footer">
	<a href="#" class="btn btn-primary pull-left"><span class="glyphicon glyphicon-shopping-cart"></span> Sipariş Ver</a>
    <a href="#" data-dismiss="modal" class="btn btn-default pull-right">Kapat</a>
</div>

</div>
</div>
</div>