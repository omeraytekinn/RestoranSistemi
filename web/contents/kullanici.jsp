<%@page contentType="text/html" pageEncoding="UTF-8" %>
<div class="modal fade" id="signMenu">
<div class="modal-dialog">
<div class="modal-content">

<div class="modal-body tab-content">
    <ul class="nav nav-tabs">
      <li class="active"><a data-toggle="pill" href="#login">Login</a></li>
      <li><a data-toggle="pill" href="#signup">Sign Up</a></li>
    </ul>
    <div class="active tab-pane fade in" id="login">
    	<br />
        <form class="form-horizontal" method="POST" action="controllers/girisYap.jsp">
        <div class="form-group">
        	<label class="control-label col-md-2" for="userName">Username:</label>
            <div class="col-md-10">
            	<input id="userName" name="email" type="text" placeholder="User Name" class="form-control" />
            </div>
        </div>
        <div class="form-group">
        	<label class="control-label col-xs-2" for="password">Password:</label>
            <div class="col-md-10">
            	<input id="password" name="pass" type="password" placeholder="Password" class="form-control" />
            </div>
        </div>
        <div class="form-group">
        	<label class="control-label col-xs-2" for="remember">Remember:</label>
            <div class="col-md-10">
            	<input id="remember" class="form-check-input" type="checkbox" placeholder="Password" class="form-control" />
            </div>
        </div>
        
        <input type="submit" class="btn btn-default" value="Enter" />
        </form>
    </div>
    <div class="tab-pane" id="signup">
    	<br />
        <form class="form-horizontal" method="POST" action="controllers/kaydol.jsp">
        <div class="form-group">
        	<label class="control-label col-xs-3" for="mail">E-mail:</label>
            <div class="col-xs-9">
            	<input id="mail" name="email" type="email" placeholder="ornek@website.com" class="form-control" />
            </div>
        </div>
        <div class="form-group">
        	<label class="control-label col-xs-3 text-left" for="pass">Şifre:</label>
            <div class="col-xs-9">
            	<input id="pass" name="pass" type="password" placeholder="Şifreniz" class="form-control" />
            </div>
        </div>
        <div class="form-group">
        	<label class="control-label col-xs-3 text-left" for="pass">Şifre Onay:</label>
            <div class="col-xs-9">
            	<input id="pass" name="pass2" type="password" placeholder="Şifreniz Tekrar" class="form-control" />
            </div>
        </div>
        <div class="form-group">
        	<label class="control-label col-xs-3" for="name">Ad:</label>
            <div class="col-xs-9">
            	<input id="name" name="name" type="text" placeholder="Ad" class="form-control" />
            </div>
        </div>
        <div class="form-group">
        	<label class="control-label col-xs-3" for="phone">Telefon No:</label>
            <div class="col-xs-9">
            	<input id="phone" name="phone" type="tel" placeholder="(5__)_______" class="form-control" />
            </div>
        </div>
        <div class="form-group">
        	<label class="control-label col-xs-3" for="phone">Adres:</label>
            <div class="col-xs-9">
            	<textarea name="adres" class="form-control" placeholder="Adres"></textarea>
            </div>
        </div>
        <input type="submit" class="btn btn-default col-xs-offset-3" value="Kaydol" />
        </form>
    </div>
</div>


<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">Kapat</button>
</div>

</div>
</div>
</div>