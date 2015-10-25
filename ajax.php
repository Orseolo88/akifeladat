<?php
require_once 'header.php';

switch ($action):
    case 'ajaxvalasz':

        //lekérjük a városokat az adatbázisból, amelyeknek az adataira kíváncsiak vagyunk
        $arr_varosok = array();

        $q_varosok = $db->query("SELECT varos_id, varos_nev FROM varosok ORDER BY varos_id");
        if($q_varosok->num_rows > 0):
            while($r_varosok = $q_varosok->fetch_assoc()):
                $arr_varosok[$r_varosok['varos_id']]['varos_neve'] = $r_varosok['varos_nev'];
            endwhile;
        endif;

        if(!empty($arr_varosok)):
            //minden városra meghívjuk a SOAP függvényt
            foreach($arr_varosok as $varos_id => $varos_adatok):
                $arr_getWeather = getWeather($varos_adatok['varos_neve']);
                $arr_varosok[$varos_id]['homerseklet']  = $arr_getWeather['homerseklet'];
                $arr_varosok[$varos_id]['paratartalom'] = $arr_getWeather['paratartalom'];
                $arr_varosok[$varos_id]['legnyomas']    = $arr_getWeather['legnyomas'];
            endforeach;
        endif;

        //beszúrjuk az adatbázisba az új adatokat
        if(!empty($arr_varosok)):
            foreach($arr_varosok as $varos_id => $varos_adatok):
                $q_beszur = $db->prepare("
                    INSERT INTO idojaras_adatok
                    (varos_id, homerseklet, paratartalom, legnyomas)
                    VALUES (?, ?, ?, ?)
                ");
                $q_beszur->bind_param("isss", $varos_id, $varos_adatok['homerseklet'], $varos_adatok['paratartalom'], $varos_adatok['legnyomas']);
                $q_beszur->execute();
                $q_beszur->close();
            endforeach;
        endif;

        echo "kész";
        break;
endswitch;

?>