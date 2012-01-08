//functions that we will call in huddlers cardZZ

function message(){
	alert("message");

}

function friend_request(){
	alert("added as a friend");
}
$(document).ready(function(){
 
	$('.lightbox').click(function(){
		$('.backdrop, .msg_box').animate({'opacity':'0.00'}, 300, 'linear');
		$('.msg_box').animate({'opacity':'1.00'}, 300, 'linear');
		$('.backdrop, .msg_box').css('display', 'block');
	});
	
	$('.lightbox2').click(function(){
                $('.backdrop, .request_box').animate({'opacity':'0.00'}, 300, 'linear');
                $('.request_box').animate({'opacity':'1.00'}, 300, 'linear');
                $('.backdrop, .request_box').css('display', 'block');
        });

	$('.close').click(function(){
		close_msg_box();
		close_request();
	});
 
	$('.backdrop').click(function(){
		close_msg_box();
		close_request();
	});
});

function close_msg_box()
{
	$('.backdrop, .msg_box').animate({'opacity':'0'}, 300, 'linear', function(){
	$('.backdrop, .msg_box').css('display', 'none');
	});
}

function close_request(){
	$('.backdrop, .request_box').animate({'opacity':'0'}, 300, 'linear', function(){
        $('.backdrop, .request_box').css('display', 'none');
        });	
}

function save_shoutout(){
	var shoutout = $('#shoutout_textarea').val();
	$.ajax({
		url: "/create_post",
		type: "POST",
		data: {texty: shoutout},
	success:function(data){
		//alert('success');
	},
	error:function(data){
		//alert('error');
	}	
	});
}

function add_comment(id){
	var str1 = $('#post_'+id).val();
	var str2 = '<div style="margin-top:5px;margin-bottom:5px;margin-left:50px;"id="comments">';
	var str3 = '<input type="text" /><button onclick="">Post</button><button style="margin-left:20px;" onclick="">Close</button>';
  var str4 = '</div>';
	$('#post_'+id).html(str2 + str3 + str4);
}

function save_comment(){
  /* var comment = $('#comment_textarea').val();
   $.ajax({
     url: "/create_comment",
     type: "POST",
     data: {comment: comment},
    success:function(data){
     //alert('success');
   },
   error:function(data){
     //alert('error');
   }
   });*/
}

function add_fan(){
}

function save_fan(){
   $.ajax({
     url: "/create_fan",
     type: "POST",
     data: {texty: shoutout},
   success:function(data){
    //alert('success');
   },
   error:function(data){
    //alert('error');
  }
  });
}

function shoutout_update(event){
        hash = event.timeStamp;
        hash = hash.toString();
        var prev_html = $("#real_wall").html();
        str0 = prev_html;
        str1 = '<div id="new'+hash+'">'+$("#shoutout_textarea").val()+'</div>';
        str2 = '<hr/>';
        str3 = '<a href="#">Like</a><a style="margin-left:10px;" href="#">Comment</a>';
        $('#real_wall').html(str1 + str3 + str2 + str0);
}
