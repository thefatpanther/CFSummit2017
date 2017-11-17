<!--- scripts --->
	<!--- JQuery --->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!--- Intercooler --->
	<script src="https://intercoolerreleases-leaddynocom.netdna-ssl.com/intercooler-1.2.0.min.js"></script>
	<!--- Bootstrap --->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>
$('button[id^="btn-"]').click(function(){
	
	$('button[id^="btn-"]').removeClass("active");
	$(this).addClass("active");
});
$('button[id^="btnsub-"]').click(function(){
	
	$('button[id^="btnsub-"]').removeClass("active");
	$(this).addClass("active");
});
</script>
</body>
</html>