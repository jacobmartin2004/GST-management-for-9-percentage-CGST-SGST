<html>
<font size=4 face="Orbitron">
<center>Delvin Diamond Tools</center>
<center>Somarsampettai</center>
<center>Trichy,102</center></font>
<hr></hr>
<center>SALES</center>
<hr></hr>
<?php
//view
include("conn.php");
//print records
$sql = "SELECT * from delvin";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	$sql = "SELECT * from delvin";
	$result = $conn->query($sql);
	$s=1;
	echo "<center><table border=5 color=#33ffff><tr><th>S.No</th><th>GST NO</th><th>Customer Name</th><TH>Bill No</th><th>Date</th><th>taxable amount</th><th>CGST</th><th>SGST</th><th>IGST</th><th>Total</th></tr></center>";
  while($row = $result->fetch_assoc()) {
    $bill=$row["bill"];
	echo"<center><tr><td>".$s."</td><td>".$row["GSTNO"]."</td><td>".$row["cname"]."</td><td>".$row["bill"]."</td><td>".$row["date"]."</td><td>".$row["taxamt"]."</td><td>".$row["cgst"]."</td><td>".$row["sgst"]."</td><td>".$row["igst"]."</td><td>".$row["Total"]."</td></tr></center>";
	$s++;
  }
  echo "</table>";
} else {
  echo "0 results<br>";
}
$sql= "SELECT sum(cgst) from delvin";
$result=$conn->query($sql);
while($row=mysqli_fetch_array($result)){
		echo "Total CGST: ".$row['sum(cgst)'];
		echo "<br>";
		echo "Total SGST: ".$row['sum(cgst)'];
        echo "<br>";
}
		$sql1= "SELECT sum(igst) from delvin";
$result1=$conn->query($sql1);
while($row=mysqli_fetch_array($result1)){
		echo "Total IGST: ".$row['sum(igst)'];
		echo "<br>";
}


?>
<div> <button onclick="window.print()">Print this page</button></div>