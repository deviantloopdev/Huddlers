<?php
  $name= $_REQUEST['contact_name'] ;
  $email= $_REQUEST['contact_email'] ;
  $description= $_REQUEST['contact_description'] ;
  $message="Contact Us Form submittal by: \n\nName:  $name \nE-mail:  $email \nBrief Description: $description \n";

  mail("shoabe.shariff@deviantloop.com", "Mail from $contact_name through Huddlers.com", $message);

/*This will send to another location after the submit button is clicked.*/
  header( "Location: http://www.nba.com" );
?>