<?php
error_reporting(0);
include "config/koneksi.php";
if(isset($_POST['login'])){
function antiinjection($data){
 $filter_sql = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
 return $filter_sql;
}
 
$username = antiinjection($_POST['username']);
$pass = antiinjection($_POST['password']);
 
$login = mysql_query("SELECT * FROM user_login WHERE username='$username' AND password='$pass'");
$ketemu= mysql_num_rows($login);
$r = mysql_fetch_array($login);
 $folder=$r['level_user'];
// Apabila username dan password ditemukan
if ($ketemu>0){
 session_start();
 $_SESSION['username'] = $r['username'];
 $_SESSION['password'] = $r['password'];
echo" 
<meta http-equiv='refresh' content='0; page/$folder'>
 ";
}
else{
 echo "
 <script>
 alert('Username atau Password Anda tidak berlaku !');
 </script>
 <meta http-equiv='refresh' content='0;'>
 ";
}
}else{
	
}
?>