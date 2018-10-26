<?php
$connect = mysqli_connect("localhost", "root", "root", "test1");
$output = '';
if(isset($_POST["query"]))
{
	$search = mysqli_real_escape_string($connect, $_POST["query"]);
	$query = "
	SELECT * FROM tbl_customer 
	WHERE CustomerName LIKE '%".$search."%'
	OR Address LIKE '%".$search."%' 
	OR City LIKE '%".$search."%' 
	OR PostalCode LIKE '%".$search."%' 
	OR Country LIKE '%".$search."%'
	";
}
else
{
	$query = "
	SELECT * FROM tbl_customer ORDER BY CustomerID";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
	$output .= '<div class="table-responsive">
					<table class="table table bordered">
						<tr>
							<th>User Name</th>
							<th>Professional Field</th>
							<th>Recommended Star</th>
							<th>Available State</th>
							<th>Contact</th>
						</tr>';
	while($row = mysqli_fetch_array($result))
	{
		$output .= '
			<tr>
				<td>'.$row["CustomerName"].'</td>
				<td>'.$row["Address"].'</td>
				<td>'.$row["City"].'</td>
				<td>'.$row["PostalCode"].'</td>
				<td><a href="www.google.com">'.$row["Country"].'</a></td>
			</tr>
		';
	}
	echo $output;
}
else
{
	echo 'Data Not Found';
}
?>