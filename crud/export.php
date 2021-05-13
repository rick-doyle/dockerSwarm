<?php
include 'header.php';
include 'config.php';

$sql="SELECT * FROM tbl_connect";
$result = mysqli_query($conn,$sql);

	
	$num_fields = mysqli_num_fields($result);
	 $value='';
	 $value .= "Sr No"."\t";
	 $value .= "Name"."\t";
	 $value .= "Email"."\t";
	$value .= "Address"."\t";
	$value .= "Gender"."\t";
	 $value .= "Date"."\t"."\n";
	 $i=1;
    while($row = mysqli_fetch_row($result))
    {
		$line = '';
		$line .= $i."\t";
		$line .= $row[1]."\t";
		$line .= $row[2]."\t";
		$line .= $row[3]."\t";
		if($row[6] == 0){
		$line .= "Female"."\t";
		}else{
		$line .= "Male"."\t";
		}	
		
		$line .= $row[4]."\t";

	    $i++;
        $value .= trim( $line ) . "\n";
    }
	
	$data = str_replace("\\r" , "" , $value);
    
    header('Content-Type: text/csv; charset=utf-8');  
    header('Content-Disposition: attachment; filename=Dashboard-Report.csv');
    $output = fopen("php://output", "w");  
    fputcsv($output,$data)
    #header("Content-type: application/octet-stream");
    #header("Content-Disposition: attachment; filename=Dashboard-Report.xls");
    #header("Pragma: no-cache");
    #header("Expires: 0");
    #print $data;
#	exit;
?>
