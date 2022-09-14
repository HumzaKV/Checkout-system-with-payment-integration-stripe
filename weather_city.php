c<?php 	error_reporting(0); require_once('head.php');$file = basename(__FILE__, '.php');?>
<form method="POST">
<input type="text" name="temp">
<input type="submit" name="data" value="Get Data">
</form>
</body>
</html>
<?php
if (isset($_POST['data'])) {
	$city = $_POST['temp'];
$key = 'fb81f1a52cd1cb56070c089182503ca0';
$api = 'https://api.openweathermap.org/data/2.5/weather?q='.$city.'&appid='.$key;
$weather_data = json_decode(file_get_contents($api),true);
if ($weather_data) {
$temprature = $weather_data['main']['temp'];
$temp_celc = $temprature - 273.15;
$weather = 'The weather of '.$city.' is '. round($temp_celc);
// echo "<pre>";
// print_r($weather_data);
$current_weather = $weather_data['weather'][0];
$weather_data_icon = $weather_data['weather'][0]['icon'];
echo $weather;
echo "<img src='http://openweathermap.org/img/wn/".$weather_data_icon."@2x.png' >";
$current_weather_desc = $weather_data['weather'][0];['description'];
}
else{
	echo 'Some error occured please recheck the spelling of the city name ';
}
}
?>