<?php

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