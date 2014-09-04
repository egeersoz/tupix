// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require lightbox.min
//= require bootstrap-sprockets
//= require jquery_ujs
// require turbolinks
//= require_tree .

// function readURL(input) {
//     if (input.files && input.files[0]) {
//         var reader = new FileReader();
        
//         reader.onload = function (e) {
//             $('#preview1').attr('src', e.target.result);
//         }
        
//         reader.readAsDataURL(input.files[0]);
//     }
// }

// $(document).ready(function() {
// 	console.log($('#image1'));
// 	$("#image1").change(function(){
// 		console.log("boo");
// 	    readURL(this);
// 	});
// });


$(document).ready(function() {

	var canvas1 = document.getElementById('imageCanvas1');
	var ctx1 = canvas1.getContext('2d');
	var canvas2 = document.getElementById('imageCanvas2');
	var ctx2 = canvas2.getContext('2d');

	$('#image1').change(function(e) {
		var reader1 = new FileReader();
	    reader1.onload = function(event){
	        var img1 = new Image();
	        img1.onload = function(){
	        	var ratio1 = Math.floor(img1.naturalHeight / 100);
	            canvas1.width = Math.floor(img1.naturalWidth / ratio1);
	            canvas1.height = 100;
	            ctx1.drawImage(img1,0,0, canvas1.width, 100);
	        }
	        img1.src = event.target.result;
	    }
	    reader1.readAsDataURL(e.target.files[0]);     
	});

	$('#image2').change(function(e) {
		var reader2 = new FileReader();
	    reader2.onload = function(event){
	        var img2 = new Image();
	        img2.onload = function(){
	        	var ratio2 = Math.floor(img2.naturalHeight / 100);
	            canvas2.width = Math.floor(img2.naturalWidth / ratio2);
	            canvas2.height = 100;
	            ctx2.drawImage(img2,0,0, canvas2.width, 100);
	        }
	        img2.src = event.target.result;
	    }
	    reader2.readAsDataURL(e.target.files[0]);     
	});

	$('#modal-submit').on('click', function(){
		$(this).html("<i class='fa fa-spinner fa-spin'></i> Working...");
		$(this).attr('disabled', true);
		$('#tupix-submit').click();
	});
});