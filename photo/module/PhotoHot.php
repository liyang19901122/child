<?php

/*
	[�������] ͼƬ���а�
	[���÷�Χ] ȫվ
*/

function PhotoHot(){

	global $fsql,$msql;

		
		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$shownums=$GLOBALS["PLUSVARS"]["shownums"];
		$showtj=$GLOBALS["PLUSVARS"]["showtj"];
		$cutword=$GLOBALS["PLUSVARS"]["cutword"];
		$target=$GLOBALS["PLUSVARS"]["target"];
		$catid=$GLOBALS["PLUSVARS"]["catid"];
		$projid=$GLOBALS["PLUSVARS"]["projid"];
		$tags=$GLOBALS["PLUSVARS"]["tags"];
		$pagename=$GLOBALS["PLUSVARS"]["pagename"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];


		//��ַ������

		if($pagename=="query" && strstr($_SERVER["QUERY_STRING"],".html")){
			$Arr=explode(".html",$_SERVER["QUERY_STRING"]);
			$nowcatid=$Arr[0];
		}elseif($_GET["catid"]>0){
			$nowcatid=$_GET["catid"];
		}else{
			$nowcatid=0;
		}


		//Ĭ������		
		$scl=" iffb='1' and catid!='0' ";

		if($showtj!="" && $showtj!="0"){
			$scl.=" and tj='1' ";
		}


		//��ʾ�������:�����̨��ָ������,����ʾ��ǰ���ڷ���,�����޷���

		if($catid!=0 && $catid!=""){
			$catid=fmpath($catid);
			$scl.=" and catpath regexp '$catid' ";
		}elseif($nowcatid!=0 && $nowcatid!=""){
			$catid=fmpath($nowcatid);
			$scl.=" and catpath regexp '$catid' ";
		}

		//ƥ��ר��
		if($projid!=0 && $projid!=""){
			$projid=fmpath($projid);
			$scl.=" and proj regexp '$projid' ";
		}



		//�ж�ƥ���ǩ
		if($tags!=""){
			$tags=$tags.",";
			$scl.=" and tags regexp '$tags' ";
		}


		//ģ�����
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		$var=array(
			'coltitle' => $coltitle,
			'morelink' => $morelink
		);
		$str=ShowTplTemp($TempArr["start"],$var);
		

		$picnum=1;
		$fsql->query("select * from {P}_photo_con where $scl order by cl desc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$catpath=$fsql->f('catpath');
			$dtime=$fsql->f('dtime');
			$nowcatid=$fsql->f('catid');
			$ifnew=$fsql->f('ifnew');
			$ifred=$fsql->f('ifred');
			$ifbold=$fsql->f('ifbold');
			$author=$fsql->f('author');
			$source=$fsql->f('source');
			$cl=$fsql->f('cl');
			$src=$fsql->f('src');
			$cl=$fsql->f('cl');
			$prop1=$fsql->f('prop1');
			$prop2=$fsql->f('prop2');
			$prop3=$fsql->f('prop3');
			$prop4=$fsql->f('prop4');
			$prop5=$fsql->f('prop5');
			$prop6=$fsql->f('prop6');
			$prop7=$fsql->f('prop7');
			$prop8=$fsql->f('prop8');
			$prop9=$fsql->f('prop9');
			$prop10=$fsql->f('prop10');
			$prop11=$fsql->f('prop11');
			$prop12=$fsql->f('prop12');
			$prop13=$fsql->f('prop13');
			$prop14=$fsql->f('prop14');
			$prop15=$fsql->f('prop15');
			$prop16=$fsql->f('prop16');
			$prop17=$fsql->f('prop17');
			$prop18=$fsql->f('prop18');
			$prop19=$fsql->f('prop19');
			$prop20=$fsql->f('prop20');
			$memo=$fsql->f('memo');
			$mid=$fsql->f('memberid');

			if($mid>0){
				$memberurl=ROOTPATH."member/home.php?mid=".$mid;
			}else{
				$memberurl="#";
			}

			
			

			if($GLOBALS["CONF"]["CatchOpen"]=="1" && file_exists(ROOTPATH."photo/html/".$id.".html")){
				$link=ROOTPATH."photo/html/".$id.".html";
			}else{
				$link=ROOTPATH."photo/html/?".$id.".html";
			}

	
			
			$dtime=date("m/d",$dtime);

			if($ifbold=="1"){$bold=" style='font-weight:bold' ";}else{$bold="";}

			if($ifred!="0"){$red=" style='color:".$ifred."' ";}else{$red="";}

			if($cutword!="0"){$title=csubstr($title,0,$cutword);}


			if($src==""){$src="photo/pics/nopic.gif";}
			
			$src=ROOTPATH.$src;



			//ģ���ǩ����

			$var=array (
			'title' => $title, 
			'memo' => $memo,
			'dtime' => $dtime, 
			'red' => $red, 
			'bold' => $bold,
			'link' => $link,
			'target' => $target,
			'author' => $author, 
			'memberurl' => $memberurl, 
			'source' => $source,
			'cat' => $cat, 
			'src' => $src, 
			'cl' => $cl, 
			'picnum' => $picnum, 
			'downurl' => $downurl, 
			'fileurl' => $fileurl, 
			'downcount' => $downcount, 
			'prop1' => $prop1,
			'prop2' => $prop2,
			'prop3' => $prop3,
			'prop4' => $prop4,
			'prop5' => $prop5,
			'prop6' => $prop6,
			'prop7' => $prop7,
			'prop8' => $prop8,
			'prop9' => $prop9,
			'prop10' => $prop10,
			'prop11' => $prop11,
			'prop12' => $prop12,
			'prop13' => $prop13,
			'prop14' => $prop14,
			'prop15' => $prop15,
			'prop16' => $prop16,
			'prop17' => $prop17,
			'prop18' => $prop18,
			'prop19' => $prop19,
			'prop20' => $prop20,
			'propname1' => $propname1,
			'propname2' => $propname2,
			'propname3' => $propname3,
			'propname4' => $propname4,
			'propname5' => $propname5,
			'propname6' => $propname6,
			'propname7' => $propname7,
			'propname8' => $propname8,
			'propname9' => $propname9,
			'propname10' => $propname10,
			'propname11' => $propname11,
			'propname12' => $propname12,
			'propname13' => $propname13,
			'propname14' => $propname14,
			'propname15' => $propname15,
			'propname16' => $propname16,
			'propname17' => $propname17,
			'propname18' => $propname18,
			'propname19' => $propname19,
			'propname20' => $propname20
			);
			$str.=ShowTplTemp($TempArr["list"],$var);


		$picnum++;

		}

		$str.=$TempArr["end"];


		return $str;

}

?>