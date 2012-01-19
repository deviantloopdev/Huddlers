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

// ss || Add Shoutout/Post to Front End || Add Shoutout/Post to Backend

function string_timestamp(event){
	stamp = event.timeStamp;
	stamp = hash.toString();
	return stamp;
}

function shoutout_update(event, stamp){
  var prev_html = $("#real_wall").html();
  str0 = prev_html;
  str1 = '<div id="new'+stamp+'">'+$("#shoutout_textarea").val()+'</div>';
  str2 = '<hr/>';
  str3 = '<a href="#">Like</a><a style="margin-left:10px;" href="#">Comment</a>';
  $('#real_wall').html(str1 + str3 + str2 + str0);
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

// cc || Add Comment To HTML || Save Comment in The Backend

function add_comment(id){
	var comment = $('#comment_'+id).val();

//Comment ID is the time hash
	var previous_comments = $('#comments_postid_'+id).html();
	var new_comment = '<p class="comment" id="comment_idtime">'+comment+'</p><hr />';
	//var hoursandminutes = time.split(':');
	//var hnm = hoursandminutes[1];

// Add DateTime As Comment Identifier
	var sub_info = 'hnm' + '<a href="#" onclick="">Fan</a><hr />';
	$('#comments_postid_'+id).html(previous_comments + new_comment + sub_info);
	
	save_comment(id);
}


function open_comment(id){
	id = id+'';

	//stamp = string_timestamp();
	//var str1 = $('#post_'+id).html();
 	//var str2 = '<div style="margin-top:5px;margin-bottom:5px;margin-left:50px;"id="comment_post_'+id+'">';
 	//var str3 = '<input type="text" /><button onclick="add_comment('+id+')">Post</button><button style="margin-left:20px;" onclick="">Close</button>';
 	//var str4 = '</div>';
 	//$('#post_'+id).html(str1 + str2 + str3 + str4);
	var div_name = '#new_comment_postid'+id;
	//alert(div_name);
	//$(div_name).css('display', 'block');
	$(div_name).show();
	//alert(div_name);
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
	alert('called save');
}


// ff || Add Fan To HTML || Save Fan to Backend

function add_fan(){
}

function save_fan(){
   	$.ajax({
     	url: "/create_fan",
     	type: "POST",
  	data: {texty: shoutout},
   	error:function(data){
   	//alert('error');
  	}
  });
}
