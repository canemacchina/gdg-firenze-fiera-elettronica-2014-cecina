<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<?php
	$headers = getallheaders();
	if( strrpos(strtolower($headers["User-Agent"]), 'lynx') !== FALSE ) {
		header("HTTP/1.1 301 Moved Permanently");
		header("Location: http://aqquadro.it/text.php");
		exit();
	}
	$imageCount = 165;
	header("Expires: Thu, 04 May 1989 14:00:00 GMT");
	header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
	header("Cache-Control: no-store, no-cache, must-revalidate");
	header("Cache-Control: post-check=0, pre-check=0", false);
	header("Pragma: no-cache");
?>
<html lang="en">
    <head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="Alessandro Aglietti, from Firenze, is aqquadro: since 2004 face-to-face to a monitor. Not to write poems! Be RSS: ban social network from life for life." />
		<title>Alessandro Aglietti</title>
		<link rel="shortcut icon" type="image/gif" href="http://telecomix.org/300px-CryptoidMonkies.gif" />
		<script src="//code.jquery.com/jquery-1.10.1.min.js"></script>
		<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/css/bootstrap.min.css">
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/js/bootstrap.min.js"></script>
		<style type="text/css">
			#footer {
				height: 60px;
				background-color: #f5f5f5;
				margin-top: 20px;
			}
			.credit {
				margin: 20px 0;
				text-align: center;
			}
			
			#footer div.container {
				background-image: url('http://aqquadro.it/kopimi-gay.png');
				background-repeat: no-repeat;
				background-position-y: 6px;
				background-size: 100px;
			}
		</style>
		<script type="text/javascript">

		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-11408016-2']);
		  _gaq.push(['_trackPageview']);

		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();

		</script>
    </head>
    <body style="padding-top: 50px;">
    	<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="http://aqquadro.it/alessandro.aglietti/">aqquadro</a>
					<div class="nav-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a href="http://aqquadro.it/rovers/">rovers</a></li>
							<li><a href="http://aqquadro.it/aqquadro-rss-subscriptions.xml">my rss</a></li>
							<li class="active"><a href="http://aqquadro.it/wall">wall</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<?php
				for ($i = 0; $i <= $imageCount; $i++) {
			?>
			<div class="row">
				<div class="col-lg-4">
					<div style="text-align:center;">
						<img src="https://googledrive.com/host/0B-udBnWnmH6JSGFEemdZbl9WX2c/<?php echo $i ?>" class="img-responsive img-thumbnail" alt="rand">
					</div>
				</div>
				<?php
					$i++;
					if ( $i <= $imageCount) {
				?>
				<div class="col-lg-4">
					<div style="text-align:center;">
						<img src="https://googledrive.com/host/0B-udBnWnmH6JSGFEemdZbl9WX2c/<?php echo $i ?>" class="img-responsive img-thumbnail" alt="rand">
					</div>
				</div>
				<?php
					}
					$i++;
					if ( $i <= $imageCount) {
				?>
				<div class="col-lg-4">
					<div style="text-align:center;">
						<img src="https://googledrive.com/host/0B-udBnWnmH6JSGFEemdZbl9WX2c/<?php echo $i ?>" class="img-responsive img-thumbnail" alt="rand">
					</div>
				<?php
					}
				?>
				</div>
			</div>
			<?php
				}
			?>
		</div>
		<div id="footer">
			<div class="container">
				<p class="text-muted credit"><abbr title="http://www.kopimi.com/kopimi/">kopimi</abbr> from <a target="_blank" href="https://github.com/alessandro-aglietti/aqquadro.it">GitHub</a></p>
			</div>
		</div>
    </body>
</html>