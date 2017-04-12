<?php
	header("Content-type:text/xml");
	header("Access-Control-Allow-Origin: *");

	$host = "localhost";
	$username = "root";
	$password = "";
	$db_name = "cosmetic";
	$table_name = "cosmetic_list";

	$con = mysqli_connect($host, $username, $password, $db_name);

	$query = mysqli_query($con, "SELECT * FROM cosmetic_list");

	$xml = new SimpleXMLElement('<list/>');

	while($row = mysqli_fetch_array($query)){
		$product = $xml->addChild("product");
		$product->addChild("title", $row["title"]);
		$product->addChild("description", $row["description"]);
		$product->addChild("ori_price", $row["ori_price"]);
		$product->addChild("new_price", $row["new_price"]);
		$product->addChild("discount", $row["discount"]);
		$product->addChild("image", $row["image"]);
	}

	mysqli_close($con);
	echo $xml->asXML();

?>