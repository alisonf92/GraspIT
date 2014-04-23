

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
 <link href="css/bootstrap.min.css" rel="stylesheet" type = "text/css">
 <head>
		<script language="JavaScript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
		<script language="JavaScript" src="jwplayer/swfobject.js"></script>
		<script language="JavaScript" src="jwplayer/jquery-ui.min.js"></script>
		<script type="text/javascript" src="jwplayer/jwplayer.js"></script>
		<script language="JavaScript" src="webcam/scriptcam.js"></script>
		<link href="jwplayer/jquery-ui.css" rel="stylesheet" type="text/css"/>
		<style>
			#webcam {
				float:left;
			}
			#chatWindow {
				width:635px;
				height:75px;
				overflow-y:scroll;
				overflow-x:auto;
				border:1px solid grey;
				font-size:11px;
				padding:5px;
				background-color:white;
			}
			#volumeMeter {
				background-image:url('webcam/ledsbg.png');
				width:19px;
				height:133px;
				padding-top:5px;
			}
			#volumeMeter img {
				padding-left:4px;
				padding-top:1px;
				display:block;
			}
			.ui-slider {
				background:none;
				background-image:url('webcam/trackslider.png');
				border:0;height:107px;
				margin-top:16px;
			}
			.ui-slider .ui-slider-handle {
				width:14px;
				height:32px;
				margin-left:7px;
				margin-bottom:-16px;
				background:url(webcam/volumeslider.png) no-repeat; 
			}
			#volumePanel {
				-moz-border-radius: 0px 5px 5px 0px;
				border-radius: 0px 5px 5px 0px;
				background-color:#4B4B4B;
				width:55px;
				height:160px;
				-moz-box-shadow: 0px 3px 3px #333333;
				-webkit-box-shadow: 0px 3px 3px  #333333;
				shadow: 0px 3px 3px #333333;
			}
			#setupPanel {
				width:650px;
				height:30px;
				margin:5px;
			}
		</style>
		<script>
			$(document).ready(function() {
				$("#webcam").scriptcam({ 
					chatWindow:'chatWindow',
					onError:onError,
					promptWillShow:promptWillShow,
					showMicrophoneErrors:false,
					onWebcamReady:onWebcamReady,
					connected:chatStarted,
					setVolume:setVolume,
					timeLeft:timeLeft,
					videoRoom: 'vid',
					        videoRoomPassword: 'password',
					        loginName: 'teacher'

				});
				setVolume(0);
				$("#slider").slider({ animate: true, min: 0, max: 100 , value:50, orientation: 'vertical', disabled:true});
				$("#slider").bind("slidechange", function(event, ui) {
					$.scriptcam.changeVolume($("#slider" ).slider("option", "value"));
				});
				$("#message").keypress(function(event) {
					if (event.which == 13) {
						event.preventDefault();
						$.scriptcam.sendMessage($('#message').val());
						$('#message').val('');
					}
				});
			});
			function closeCamera() {
				$("#slider").slider("option","disabled", true);
				$.scriptcam.closeCamera();
			}
			function onError(errorId,errorMsg) {
				alert(errorMsg);
			}
			function chatStarted() {
				$("#slider" ).slider("option", "disabled", false);
			}
			function onWebcamReady(cameraNames,camera,microphoneNames,microphone,volume) {
				$("#slider" ).slider("option", "value", volume);
				$.each(cameraNames, function(index, text) {
					$('#cameraNames').append( $('<option></option>').val(index).html(text))
				}); 
				$('#cameraNames').val(camera);
				$.each(microphoneNames, function(index, text) {
					$('#microphoneNames').append( $('<option></option>').val(index).html(text))
				}); 
				$('#microphoneNames').val(microphone);
			}
			function promptWillShow() {
				alert('A security dialog will be shown. Please click on ALLOW and wait for a second chat partner to arrive.');
			}
			function setVolume(value) {
				value=parseInt(32 * value / 100) + 1;
				for (var i=1; i < value; i++) {
					$('#LedBar' + i).css('visibility','visible');
				}
				for (i=value; i < 33; i++) {
					$('#LedBar' + i).css('visibility','hidden');
				}
			}
			function timeLeft(value) {
				$('#timeLeft').html(value);
			}
			function changeCamera() {
				$.scriptcam.changeCamera($('#cameraNames').val());
			}
			function changeMicrophone() {
				$.scriptcam.changeMicrophone($('#microphoneNames').val());
			}
		</script>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="nav nav-tabs">
				<li class="active">
				
					<a href = "index.jsp">GraspIT!</a>
				</li>
				<li>
					<a href="signin.jsp">Learn</a>
				</li>
				<li class="disabled">
					<a href="adminlogin.jsp">Teach</a>
				</li>
				
			</ul>
			</div>
			<div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Profile</p>
                   <div class="list-group">
                    <a href="addquesform.action" class="list-group-item active">Add Exam Question</a>
                    <a href="#" class="list-group-item">Edit</a>
                    <a href="#" class="list-group-item">Delete</a>
                     <a href="fileUpload.jsp" class="list-group-item active">Upload</a>
                      <a href="stream.jsp" class="list-group-item active">Stream Class</a>
                </div>
            </div>
		
				
				<div class="col-md-6 column">
				
<div id="webcam">
		</div>
		<div id="volumePanel" style="float:left;position:relative;top:10px;">
				<div id="volumeMeter" style="position:absolute;top:10px;left:7px;float:left;">
					<img id="LedBar32" src="webcam/ledred.png">
					<img id="LedBar31" src="webcam/ledred.png">
					<img id="LedBar30" src="webcam/ledred.png">
					<img id="LedBar29" src="webcam/ledred.png">
					<img id="LedBar28" src="webcam/ledred.png">
					<img id="LedBar27" src="webcam/ledred.png">
					<img id="LedBar26" src="webcam/ledred.png">
					<img id="LedBar25" src="webcam/ledred.png">
					<img id="LedBar24" src="webcam/ledred.png">
					<img id="LedBar23" src="webcam/ledred.png">
					<img id="LedBar22" src="webcam/ledred.png">
					<img id="LedBar21" src="webcam/ledred.png">
					<img id="LedBar20" src="webcam/ledgreen.png">
					<img id="LedBar19" src="webcam/ledgreen.png">
					<img id="LedBar18" src="webcam/ledgreen.png">
					<img id="LedBar17" src="webcam/ledgreen.png">
					<img id="LedBar16" src="webcam/ledgreen.png">
					<img id="LedBar15" src="webcam/ledgreen.png">
					<img id="LedBar14" src="webcam/ledgreen.png">
					<img id="LedBar13" src="webcam/ledgreen.png">
					<img id="LedBar12" src="webcam/ledgreen.png">
					<img id="LedBar11" src="webcam/ledgreen.png">
					<img id="LedBar10" src="webcam/ledgreen.png">
					<img id="LedBar9" src="webcam/ledgreen.png">
					<img id="LedBar8" src="webcam/ledgreen.png">
					<img id="LedBar7" src="webcam/ledgreen.png">
					<img id="LedBar6" src="webcam/ledgreen.png">
					<img id="LedBar5" src="webcam/ledgreen.png">
					<img id="LedBar4" src="webcam/ledgreen.png">
					<img id="LedBar3" src="webcam/ledgreen.png">
					<img id="LedBar2" src="webcam/ledgreen.png">
					<img id="LedBar1" src="webcam/ledgreen.png">
				</div>
			<div id="slider" style="position:absolute;top:10px;left:30px;">
			</div>
		</div>
		<br clear="both"/>
		<div id="setupPanel">
			<img src="webcam/webcamlogo.png" style="vertical-align:text-top"/>
			<select id="cameraNames" size="1" onChange="changeCamera()" style="width:145px;font-size:10px;height:25px;">
			</select>
			<img src="webcam/miclogo.png" style="vertical-align:text-top"/>
			<select id="microphoneNames" size="1" onChange="changeMicrophone()" style="width:128px;font-size:10px;height:25px;">
			</select>
		</div>
		<div id="chatWindow"></div>
		<input type="text" id="message" style="width:635px;">
				</div>
			</div>
		</div>
	</div>


</body>
</html>

