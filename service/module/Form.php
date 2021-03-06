<?php

/*
	[插件名称] 自定表单
	[适用范围] 表单页
*/

function Form(){

	global $fsql,$tsql;


	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$groupid=$GLOBALS["PLUSVARS"]["groupid"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	
	//如果地址栏指定，则显示指定表单
	if(isset($_GET["groupid"]) && $_GET["groupid"]!=""){
		$groupid=$_GET["groupid"];
	}


	//读取表单组名称
	$fsql -> query ("select * from {P}_service_group where id='$groupid'");
	if($fsql -> next_record ()) {
		$groupname=$fsql->f('groupname');
		$ifano=$fsql->f('ifano');
		$formintro=$fsql->f('intro');
		$formintro=nl2br($formintro);
	}


	//读取表单组下拉
	$fsql -> query ("select * from {P}_service_group order by xuhao");
	while($fsql -> next_record ()) {
		if($groupid==$fsql->f('id')){
			$grouplist.="<option value='".$fsql->f('id')."' selected>".$fsql->f('groupname')."</option>";
		}else{
			$grouplist.="<option value='".$fsql->f('id')."'>".$fsql->f('groupname')."</option>";
		}
	}

	

	$Temp=LoadTemp($tempname);
	$TempArr=SplitTblTemp($Temp);

	$var=array (
	'coltitle' => $coltitle,
	'formintro' => $formintro,
	'grouplist' => $grouplist,
	'groupname' => $groupname
	);

	$str=ShowTplTemp($TempArr["start"],$var);


	//调用表单
	$fsql -> query ("select * from {P}_service where groupid='$groupid' and use_field = '1' order by xuhao");
	while ($fsql -> next_record ()) {
		$field_caption = $fsql -> f ('field_caption');
		$field_type = $fsql -> f ('field_type');
		$field_size = $fsql -> f ('field_size');
		$field_name = $fsql -> f ('field_name');
		$field_value = $fsql -> f ('field_value');
		$field_null = $fsql -> f ('field_null');
		$field_value_repeat = $fsql -> f ('value_repeat');
		$field_intro = $fsql -> f ('field_intro');

		$field_null = ($field_null == "1") ? $mustfill = "<font style='color:red'>*</font>" : $mustfill= "";
	


		if($field_type == "5"){

			if($step=="send"){
				$nowvalue=$_POST[$field_name];
			}
		
			$fieldvalue =  explode (";",$field_value);
			$nums = count ($fieldvalue);


			for ($i = 0; $i < $nums; $i ++) {
				if ($fieldvalue[$i] == $nowvalue) {
					$checked_select = "selected";
				} else {
					$checked_select = "";
				}
				$list.= "<option value=" . $fieldvalue[$i]." ".$checked_select.">" . $fieldvalue[$i] . "</option>";
			}

			

			$var=array (
			'title' => $field_caption, 
			'size' => $field_size, 
			'fieldname' => $field_name, 
			'fieldvalue' => $field_value, 
			'mustfill' => $mustfill, 
			'list' => $list, 
			'intro' => $field_intro
			);

			$str.=ShowTplTemp($TempArr["list"],$var);

			$list="";

		}elseif($field_type== "2") {

			if($step=="send"){
				$field_value=$_POST[$field_name];
			}
			
			$var=array (
			'title' => $field_caption, 
			'size' => $field_size, 
			'fieldname' => $field_name, 
			'fieldvalue' => $field_value, 
			'mustfill' => $mustfill, 
			'intro' => $field_intro
			);

			$str.=ShowTplTemp($TempArr["textarea"],$var);
		
		}else{

			if($step=="send"){
				$field_value=$_POST[$field_name];
			}elseif($field_name=="title" && $_GET["rel"]!=""){
				$field_value=$_GET["rel"];
			}
			
			$var=array (
			'title' => $field_caption, 
			'size' => $field_size, 
			'fieldname' => $field_name, 
			'fieldvalue' => $field_value, 
			'mustfill' => $mustfill, 
			'intro' => $field_intro
			);

			$str.=ShowTplTemp($TempArr["input"],$var);


			
		}
			 
	}

	//是否允许匿名
	if($ifano=="1"){
		$anostr="";
	}else{
		$anostr="disabled";
	}
	
	$var=array (
		'groupid' => $groupid,
		'anostr' => $anostr
	);

	$str.=ShowTplTemp($TempArr["end"],$var);

	
	$GLOBALS["groupname"]=$groupname;
	$GLOBALS["pagetitle"]=$groupname;

	return $str;
	
}

?>