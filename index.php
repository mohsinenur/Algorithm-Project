<?php 
	mysql_connect("localhost","root","") or die("Couldn't connet to SQL server");
	mysql_select_db("spath") or die("Couldn'ttt select DB");
?>
<?php

$source2 = 'Abdullahpur';
$desti2 = 'Abdullahpur';
$result = '';

if (isset($_POST['getpath'])){

$_distArr = array();

$result2 = mysql_query("SELECT * FROM spath");

while ($row=mysql_fetch_assoc($result2)) {

	$source1 = $row['source'];
	$desti1 = $row['destination'];
	$cost1 = $row['cost'];
	$_distArr[$source1][$desti1] = $cost1;

}

//source and desti veriable
$a = $_POST['source'];
$b = $_POST['desti'];
$source2 = $a;
$desti2 = $b;

//initialize the array for storing
$S = array();//the nearest path with its parent and weight
$Q = array();//the left nodes without the nearest path
foreach(array_keys($_distArr) as $val) $Q[$val] = 99999;
$Q[$a] = 0;


while(!empty($Q)){
    $min = array_search(min($Q), $Q);
    if($min == $b) break;
    foreach($_distArr[$min] as $key=>$val) if(!empty($Q[$key]) && $Q[$min] + $val < $Q[$key]) {
        $Q[$key] = $Q[$min] + $val;
        $S[$key] = array($min, $Q[$key]);
    }
    unset($Q[$min]);
}

//list the path
$path = array();
$pos = $b;
if($a == $b){
	$result = '<div style="font-size: 18px;font-weight: bold;color: #aa0c76;"><div>From: '.$a.' to '.$b.'</div><div>Total Cost: 0 TK </div> <div>Shortest Path: '.implode(' >>> ', $path).'</div></div>';
}else {
	if (!array_key_exists($b, $S)) {
    echo "No way found!!!";
    return;
}

while($pos != $a){
    $path[] = $pos;
    $pos = $S[$pos][0];
}
$path[] = $a;
$path = array_reverse($path);

//print result

$result = '<div style="font-size: 18px;font-weight: bold;color: #aa0c76;"><div>From: '.$a.' to '.$b.'</div><div>Total Cost: '.$S[$b][1].' TK </div> <div>Shortest Path: '.implode(' >>> ', $path).'</div></div>';
}


}


?>

<!DOCTYPE html>
<html>
<head>
	<title>Shortest Path</title>
</head>
<body>
	<div style="margin: 20px 35%;">
		<div style="font-size: 25px;font-weight: bold;color: #07a271;">Dijkstra's Algorithm</div><br>
		<?php
		echo '<form id="" method="POST">
			<select name="source" required style="width: 273px;padding: 15px;font-size: 18px;border: 2px solid #302071;color: #b71e1e;font-weight: bold;border-radius: 5px;margin-bottom: 10px;" class=""><option selected value="'.$source2.'">'.$source2.'</option>';
				$result3 = mysql_query("SELECT DISTINCT source FROM spath ORDER BY source ASC");
				while ($row=mysql_fetch_assoc($result3)) {
					$source1 = $row['source'];
					echo '<option value="'.$source1.'">'.$source1.'</option>';
				}
				echo '</select><br>
				<select name="desti" required style="width: 273px;padding: 15px;font-size: 18px;border: 2px solid #302071;color: #b71e1e;font-weight: bold;border-radius: 5px;margin-bottom: 10px;" class=""><option selected value="'.$desti2.'">'.$desti2.'</option>';
				$result4 = mysql_query("SELECT DISTINCT destination FROM spath ORDER BY destination ASC");
				while ($row2=mysql_fetch_assoc($result4)) {
					$desti1 = $row2['destination'];
					echo '<option value="'.$desti1.'">'.$desti1.'</option>';
				}
				echo '</select>
			<br>
			<input type="submit" style="width: 273px;padding: 15px;font-size: 18px;border: 2px solid #302071;color: #134cc0;font-weight: bold;border-radius: 5px;margin-bottom: 10px;background-color: #e4d99b;" name="getpath" value="Get Path">
		</form><br> 
		'.$result.'';
		?>
	</div>
</body>
</html>