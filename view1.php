<html>
<head>
<head>
<style>
body { 
  background-image: url('blue.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: top;
  background-size:2000px 900px;
}
</style>
<style>
div.ex1 {
  padding-top: 40px;
  border: 1px solid black;
  margin-top:15px;
  margin-bottom: 100px;
  margin-right: 600px;
  margin-left: 600px;
  background-color: #ffffcc;
}
</style>
</head>
<body>
<style>div.ex2 {
  padding-top: 5px;
  border:1px solid black;
  margin-right: 90px;
  margin-left: 90px;
  background-color: #33ffff;
  </style>
  <style>
</style>
<font size="5" color="#000000" >
<center style="background-color:;">Delvin Diamond Tools</center>
<center>Somarsampettai</center>
<center>Trichy,102</center>
</font>
<hr></hr>
<center>PURCHASE</center>
<hr></hr>
</body>
</html>
<?php
//view
include("conn.php");
//print records
$sql = "SELECT * from purchase";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	$sql = "SELECT * from purchase";
	$result = $conn->query($sql);
	$s=1;
	echo "<center><table border=5 color=#33ffff><tr><th>S.No</th><th>GST NO</th><th>Customer Name</th><TH>Bill No</th><th>Date</th><th>taxable amount</th><th>CGST</th><th>SGST</th><th>IGST</th><th>Total</th><th>Delete</th></tr></center>";
  while($row = $result->fetch_assoc()) {
    $bill=$row["bill"];
	echo"<center><tr><td>".$s."</td><td>".$row["GSTNO"]."</td><td>".$row["cname"]."</td><td>".$row["bill"]."</td><td>".$row["date"]."</td><td>".$row["taxamt"]."</td><td>".$row["cgst"]."</td><td>".$row["sgst"]."</td><td>".$row["igst"]."</td><td>".$row["Total"]."</td><td> <a href='delete1.php ?bill=".$bill." ' >Delete</a>"."</td></tr></center>";
	$s++;
  }
  echo "</table>";
} else {
  echo "0 results<br>";
}
$sql= "SELECT sum(cgst) from purchase";
$result=$conn->query($sql);
while($row=mysqli_fetch_array($result)){
		echo "Total CGST: ".$row['sum(cgst)'];
		echo "<br>";
		echo "Total SGST: ".$row['sum(cgst)'];
        echo "<br>";
}
		$sql1= "SELECT sum(igst) from purchase";
$result1=$conn->query($sql1);
while($row=mysqli_fetch_array($result1)){
		echo "Total IGST: ".$row['sum(igst)'];
		echo "<br>";
}
echo"<br>";
echo"<br>";
echo"<br>";
echo"<br>";
echo"<center>BALANCE GST</center>";
echo"------------------------------<br>";
$sql= "SELECT sum(cgst)+sum(igst)+sum(cgst) from delvin";
$result=$conn->query($sql);
while($row=mysqli_fetch_array($result)){
		echo "Total Sales:  ".$row['sum(cgst)+sum(igst)+sum(cgst)'];
		echo "<br>";
}
$sql= "SELECT sum(cgst)+sum(igst)+sum(cgst) from purchase";
$result=$conn->query($sql);
while($row=mysqli_fetch_array($result)){
		echo "Total Purchase:  ".$row['sum(cgst)+sum(igst)+sum(cgst)'];
		echo "<br>";
}


echo "<center>------------------------------------------<center>";
$sql= "SELECT (SELECT (SUM(cgst)+sum(cgst)+sum(igst)) FROM delvin) - (SELECT (SUM(cgst)+sum(cgst)+sum(igst)) FROM purchase) as result";
$result=$conn->query($sql);
while($row=mysqli_fetch_array($result)){
		echo "Total GST: ".$row['result'];
		echo "<br>";
		echo "<center>------------------------------------------<center>";
}
?>
<br>
<button><a href="purchase.html">Home Page</a><br></button><br>
<button><a href="printpurchase.php">print purchase of the month</a></button>
</form>