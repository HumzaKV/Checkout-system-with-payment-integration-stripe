<?php
require_once ("config.php");
$file = basename(__FILE__, '.php');
require ('head.php');
?>
<script src="js\weather_script.js"></script>
<p id="demo"></p>
<form method="POST" onmouseover="getLocation()">
<input type="hidden" name="lat" class="lat" id="">
<input type="hidden" name="lon" class="lon" id="">
<input type="submit" name="data" value="Get Location">
</form>
</body>
</html>
<?php
if (isset($_POST['data']))
{
    //location st
    // create curl resource
    $ch = curl_init();
    // set url
    curl_setopt($ch, CURLOPT_URL, "http://ip-api.com/json/");

    //return the transfer as a string
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

    // $output contains the output string
    $output = curl_exec($ch);
    $output = json_decode($output);
    // echo "<pre>";
    // print_r($output);
    // close curl resource to free up system resources
    if ($output->status == 'success')
    {
        echo 'Country:' . $output->country;
        echo '<br>City:' . $output->city;
        echo '<br>lat:' . $output->lat;
        echo '<br>lon:' . $output->lon . '<br>';
    }
    curl_close($ch);
    //weather start
    $lat = $_POST['lat'];
    $lon = $_POST['lon'];
    // $key = 'fb81f1a52cd1cb56070c089182503ca0';
    // $api = 'https://api.openweathermap.org/data/2.5/weather?lat=' . $lat . '&lon=' . $lon . '&appid=' . $key;
    // $weather_data = json_decode(file_get_contents($api) , true);
    // $temprature = $weather_data['main']['temp'];
    // $temp_celc = $temprature - 273.15;
    // $_SESSION['city'] = $weather_data['name'];
    // $city = $_SESSION['city'];
    // $current_weather_desc = $weather_data['weather'][0]['main'];
    // $weather = 'The weather of ' . $city . ' is ' . $current_weather_desc;
    // $temp_desc = 'The temprature of ' . $city . ' in Celsius is ' . round($temp_celc) . '°C';
    // echo "<pre>";
    // print_r($weather_data);
    // $current_weather = $weather_data['weather'][0];
    // $weather_data_icon = $weather_data['weather'][0]['icon'];
    // echo $weather;
    // echo "<img src='http://openweathermap.org/img/wn/" . $weather_data_icon . "@2x.png' >";
    // echo '<br>' . $temp_desc;
}
?>
