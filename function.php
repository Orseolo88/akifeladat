<?php

function print_a($TheArray, $arrayname = "") {
	$started = false;
	if (ob_get_level() == 0) {
		ob_start();
		$started = true;
	}
	if (!empty($arrayname)) {
		echo "<strong><u>$arrayname</u>:</strong><br>";
	}

	echo "<table border=1>\n";
	$Keys = array_keys($TheArray);
	$i = 0;
	foreach ($Keys as $OneKey) {
		$i++;
		echo "<tr>\n";
		echo "<td bgcolor='#727450'>";
		echo "<B>" . $OneKey . "</B>";
		echo "</td>\n";
		echo "<td bgcolor='#C4C2A6'>";
		if (is_array($TheArray[$OneKey]))
			print_a($TheArray[$OneKey]);
		else
			echo $TheArray[$OneKey];
		echo "</td>\n";
		echo "</tr>\n";
		if ($i % 100 == 0) {
			ob_flush();
			flush();
		}
	}
	echo "</table>\n";
	if ($started === true)
		ob_end_flush();
}

function getWeather($varos_neve) {

    $requestParams = array(
        'CityName' => $varos_neve,
        'CountryName' => ''
    );

    $client = new SoapClient('http://www.webservicex.net/globalweather.asmx?WSDL');
    $response = $client->GetWeather($requestParams);
    $response_string = $response->GetWeatherResult;

    $response_xml = simplexml_load_string(mb_convert_encoding ( $response_string , 'utf-16' ));

    $arr_resp = array(
        'homerseklet'   => (string) $response_xml[0]->Temperature,
        'paratartalom'  => (string) $response_xml[0]->RelativeHumidity,
        'legnyomas'     => (string) $response_xml[0]->Pressure,
    );

    return $arr_resp;
}

?>