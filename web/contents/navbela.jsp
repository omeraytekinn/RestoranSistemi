<%@page contentType="text/html" pageEncoding="UTF-8" %>
<nav class="navbar navbar-default">
<div class="navbar-header">
    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navmenu">
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    </button>
    <a class="pull-left navbar-link" href="index.jsp">
    <img src="contents/images/logo.png" class="logo img-circle" />
    <h4 class="navbar-text pull-right hidden-xs">YtüBurger</h4>
    </a>
</div>
<div class="collapse navbar-collapse" id="navmenu">
<ul class="nav navbar-nav navbar-right">
    <li class="active"><a href="#">Anasayfa</a></li>
    <li><a href="#">Hakkımızda</a></li>
    <li><a href="?page=urunler">Menüler</a></li>
   	<li>
        <a href="#" data-target="#basket" data-toggle="modal">
        <span class="glyphicon glyphicon-shopping-cart"></span> Sepet <span class="badge">12</span>
        </a>
    </li>
    <% if(session.getAttribute("kisi") == null){
        %>
    <li><a href="#" data-target="#signMenu" data-toggle="modal">Giriş Yap</a></li>
    <li>
        <a href="#" class="dropdown-toggle hidden" data-toggle="dropdown">
            <span class="glyphicon glyphicon-cog"></span> İşlemler<span class="caret"></span>
        </a>
        <ul id="drm1" class="dropdown-menu">
            <li><a href="#">Log in</a></li>
            <li><a href="#">Sign up</a></li>
        </ul>
    </li>
    <% } else { %>
    <li>
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-cog"></span> İşlemler<span class="caret"></span></a>
        <ul id="drm1" class="dropdown-menu">
            <li><a href="?page=profil">
                    <span class="glyphicon glyphicon-user"></span>Profili Gör</a>
            </li>
            <% if(session.getAttribute("kisi").equals("admin@site.com")){ %>
            <li><a href="?page=menu">
                    <span class="glyphicon glyphicon-edit"></span>Menü Düzenle</a>
            </li>
            <% } %>
            <li><a href="controllers/cikisYap.jsp"><span class="glyphicon glyphicon-log-out"></span> Çıkış Yap</a></li>
        </ul>
    </li>
    <% } %>
</ul>
</div>
</nav>
<%@include file="kullanici.jsp" %>
<%@include file="sepet.jsp" %>