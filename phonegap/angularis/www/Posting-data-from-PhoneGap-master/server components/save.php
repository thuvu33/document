<?php
$email = "";
$comment = "";

$email = mysql_real_escape_string($_POST["email"]);
$comment = mysql_real_escape_string($_POST["comment"]);

if ($email != "") {
	echo "Error";
} else {
	echo "Comment added";
}
?>