	<nav class="navbar navbar-default nav">
	  <div class="container-fluid">
		<img src="img/petmanager_logo.png" class="img-responsive logo pull-left" alt="Pet Manager" />
		<button class="btn btn-info pull-right" id="btn_edit" ic-get-from="ic-edit-pets/" ic-target="#viewport">EDIT PETS</button>
		<button type="button" class="btn btn-info pull-right" id="btn_home" ic-get-from="ic-list-pets/" ic-target="#viewport">LIST PETS</button>
	  </div>
	</nav>
	<hr />
	<div id="viewport" ic-trigger-on="load" ic-get-from="ic-list-pets/">
	</div>	