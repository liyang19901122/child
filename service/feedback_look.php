<?php
define("ROOTPATH", "../");
include(ROOTPATH."includes/common.inc.php");
include("language/".$sLan.".php");
SecureMember();


//定义模块名和页面名
PageSet("member","feedbacklook");

//输出
PrintPage();

?>